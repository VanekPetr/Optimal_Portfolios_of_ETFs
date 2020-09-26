
"""
LIBRARY
"""
import xlrd
import math
import statistics as stat
import numpy as np
from xlwt import Workbook 
from xlutils.copy import copy as xl_copy

"""
FUNCTIONS
"""
# Function reading and loading the data, value of the portfolio in a given period
def readBySheet(file, SheetName):
    sheet = file.sheet_by_name(SheetName)
    rows = sheet.nrows
    cols = sheet.ncols
    
    Data = np.empty((rows-1, cols-1), dtype=float) 
    
    for col in range(cols-1):
        Data[:, col] = np.asarray(sheet.col_values(col+1,1))
        
    return(Data)

# Function reading names of the portfolios    
def readName(file, SheetName):
    sheet = file.sheet_by_name(SheetName)
    rows = sheet.nrows
    
    Data = [""]*(rows-1)
    for row in range(rows-1):
        Data[row] = sheet.cell(rowx=row+1,colx=0).value
        
    return(Data)

# Function computing the returns of the portfolio for a given periods    
def getReturns(data):
    rows = len(data[:,0])
    cols = len(data[0,:])-1
    
    Result = np.empty((rows, cols), dtype=float) 
    
    for row in range(rows):
        for col in range(cols):
            Result[row, col] = (data[row, col+1]- data[row, col])/data[row, col]
        
    return(Result)
    
def getReturnsAn(data):
    N_portfolio = len(data[:,0])             #Number of portfolios
    N_results = 38
    Result = np.empty((N_portfolio, N_results), dtype=float)
    
    for portfolio in range(N_portfolio):
        for i in range(N_results):
            Result[portfolio:,i] = (data[portfolio:,i+11] - data[portfolio:,i])/data[portfolio:,i]
     
    return(Result)

def getYearRet(data):
    N_portfolio = len(data[:,0]) 
    Result = np.empty((N_portfolio,4), dtype=float)
    
    for p in range(N_portfolio):
        Result[p,0] = (data[p,12]-data[p,0])/data[p,0]
        Result[p,1] = (data[p,24]-data[p,12])/data[p,12]
        Result[p,2] = (data[p,36]-data[p,24])/data[p,24]
        Result[p,3] = (data[p,48]-data[p,36])/data[p,36]
        
    return(Result)

# Function computing the geometric mean of monthly returns     
def meanRet(data):
    N_period = len(data[0,:])                #Number of investing periods
    N_portfolio = len(data[:,0])             #Number of portfolios
    Result = np.empty(N_portfolio, dtype=float)

    for portfolio in range(N_portfolio):
        prod = 1
        for time in range(N_period):
            prod = prod*(1+data[portfolio,time])
        Result[portfolio] = prod**(1/float(N_period)) - 1
     
    return(Result)

# Function computing the arithmetic mean of monthly returns      
def aritMeanRet(data):
    N_portfolio = len(data[:,0])
    N_period = len(data[0,:]) 
    Result = np.empty(N_portfolio, dtype=float)
    
    for portfolio in range(N_portfolio):
        Result[portfolio] = sum(1 + data[portfolio,:])/N_period - 1
        
    return(Result)
    
# Function computing the geometric mean of annually returns      
def meanRetAn(data):             
    N_portfolio = len(data[:,0])             #Number of portfolios
    profit = np.empty(N_portfolio, dtype=float)
    Result = np.empty(N_portfolio, dtype=float)
    
    for portfolio in range(N_portfolio):
        profit[portfolio] = (data[portfolio,49] - data[portfolio, 0])/data[portfolio, 0]
        
    for portfolio in range(N_portfolio):
        if profit[portfolio] < 0:
            Result[portfolio] = 0
        else:
            Result[portfolio] = (1+profit[portfolio])**(1/float(4.08))-1
     
    return(Result)


# Function computing the relative averall gain 
def overallRet(data):
    N_portfolio = len(data[:,0])
    Result = np.empty(N_portfolio, dtype=float)
    
    for portfolio in range(N_portfolio):
        Result[portfolio] = (data[portfolio,49] - data[portfolio, 0])/data[portfolio, 0]
        
    return(Result)

# Function computing the arithmetric mean of annual returns  
def aritRetAn(data):
    N_portfolio = len(data[:,0])
    profit = np.empty(N_portfolio, dtype=float)
    Result = np.empty(N_portfolio, dtype=float)
    
    profit = overallRet(data)
    for portfolio in range(N_portfolio):
        Result[portfolio] = profit[portfolio]/float(4.08)
    
    return(Result)
    

# Function computing the standard deviation
def standardDev(data):
    N_portfolio = len(data[:,0])
    Result = np.empty(N_portfolio, dtype=float)
    
    for portfolio in range(N_portfolio):
        Result[portfolio] = stat.stdev(data[portfolio, :])
        
    return(Result)

# Function computing the downside deviation   
def downDev(data):
    N_portfolio = len(data[:,0])
    N_period = len(data[0,:])  
    Result = np.empty(N_portfolio, dtype=float)
    D_t = np.empty((N_portfolio, N_period), dtype=float)
    
    for portfolio in range(N_portfolio):
        for time in range(N_period):
            D_t[portfolio, time] = min(0, data[portfolio,time])
    
    for portfolio in range(N_portfolio):
        suma = 0
        for time in range(N_period):
            suma = suma + D_t[portfolio,time]**2
        
        Result[portfolio] = math.sqrt(suma/N_period)
        
    return(Result)

# Function computing the annual downside deviation
def downDevAn(data):
    N_portfolio = len(data[:,0])             #Number of portfolios
    N_res = 38
    ret = np.empty((N_portfolio, N_res), dtype=float)
    Result = np.empty(N_portfolio, dtype=float)
    
    ret = getReturnsAn(data)
    D_t = np.empty((N_portfolio, N_res), dtype=float)
    
    for portfolio in range(N_portfolio):
        for time in range(N_res):
            D_t[portfolio, time] = min(0, ret[portfolio,time])
    
    for portfolio in range(N_portfolio):
        suma = 0
        for time in range(N_res):
            suma = suma + D_t[portfolio,time]**2
        
        Result[portfolio] = math.sqrt(suma/N_res)
        
    return(Result)

# Function computing the monthly maximum drawdown    
def monthMDD(data):
    lenght = len(data[0,:]) - 1
    N_portfolio = len(data[:,0])
    DD = np.empty((N_portfolio,lenght), dtype=float)
    Result = np.empty(N_portfolio, dtype=float)
    
    for portfolio in range(N_portfolio):
        for time in range(lenght):
            DD[portfolio, time] = (data[portfolio, time] - data[portfolio, time+1])/data[portfolio, time]
    
    for portfolio in range(N_portfolio):
        Result[portfolio] = max(DD[portfolio,:])        
    
    return(Result)

# Function computing the overall maximum drawdown   
def overallMDD(data):
    N_portfolio = len(data[:,0])
    N_period = len(data[0,:])  
    Result = np.empty(N_portfolio, dtype=float)
    
    
    for portfolio in range(N_portfolio):
        top = data[portfolio,0]
        down = data[portfolio,0]
        Result[portfolio] = 0
        newRes = 0
        
        for time in range(N_period-1):
            if ((data[portfolio, time+1] >= data[portfolio, time]) 
            and (data[portfolio, time+1] >= top)):
                top = data[portfolio, time+1]
                down = data[portfolio, time+1]
            elif (data[portfolio, time+1] <= down):
                down = data[portfolio, time+1]
                newRes = (top-down)/top
                if (newRes >= Result[portfolio]):
                    Result[portfolio] = newRes
                    
        
    return(Result)

# Function computing the maximum drawdown for the corona crisis   
def coronaMDD(data):
    N_portfolio = len(data[:,0])
    Result = np.empty(N_portfolio, dtype=float)
    
    for portfolio in range(N_portfolio):
        Result[portfolio] = (data[portfolio, 46] - data[portfolio, 48])/data[portfolio, 46]
    
    return(Result)
    
    
# Function computing the Sharpe Ratio (annualy)   
def sharpeAn(data, dataStdev):
    N_portfolio = len(data[:,0])
    Result = np.empty(N_portfolio, dtype=float)
    mu_ga = meanRetAn(data)    
    stdev_a = standardDev(dataStdev)     
    
    for portfolio in range(N_portfolio):
        Result[portfolio] = (mu_ga[portfolio]-0)/stdev_a[portfolio]
    
    return(Result)

# Function computing the Sharpe Ratio with (monthly) 
def sharpeMon(data):
    N_portfolio = len(data[:,0])
    Result = np.empty(N_portfolio, dtype=float)
    mu_g = meanRet(data) 
    stdev = standardDev(data)  
    
    for portfolio in range(N_portfolio):
        Result[portfolio] = (mu_g[portfolio]-0)/stdev[portfolio]
    
    return(Result)

# Function computing the Sharpe Ration 
def sharpe(dataVal, dataRet):
    N_portfolio = len(dataVal[:,0])
    Result = np.empty(N_portfolio, dtype=float)
    mu_ga = meanRetAn(dataVal)   
    stdev = standardDev(dataRet)  
    
    for portfolio in range(N_portfolio):
        Result[portfolio] = (mu_ga[portfolio]-0)/stdev[portfolio]
    
    return(Result)

# Function compution the Sortino ratio (annualy)  
def sortinoAn(data):
    N_portfolio = len(data[:,0])
    Result = np.empty(N_portfolio, dtype=float)
    mu_ga = meanRetAn(data)    
    sigma_dda = downDevAn(data)  
    
    for portfolio in range(N_portfolio):
        if sigma_dda[portfolio] == 0:
            Result[portfolio] = 42
        else:
            Result[portfolio] = (mu_ga[portfolio]-0)/sigma_dda[portfolio]
    
    return(Result)

# Function computing the Sortino Ratio (monthly)    
def sortinoMon(data):
    N_portfolio = len(data[:,0])
    Result = np.empty(N_portfolio, dtype=float)
    mu_g = meanRet(data)    
    sigma_dd = downDev(data)  
    
    for portfolio in range(N_portfolio):
        if sigma_dd[portfolio] == 0:
            Result[portfolio] = 42
        else:
            Result[portfolio] = (mu_g[portfolio]-0)/sigma_dd[portfolio]
    
    return(Result)

# Function computing the Sortino Ratio    
def sortino(dataVal, dataRet):
    N_portfolio = len(dataVal[:,0])
    Result = np.empty(N_portfolio, dtype=float)
    mu_ga = meanRetAn(dataVal)    
    sigma_dd = downDev(dataRet)  
    
    for portfolio in range(N_portfolio):
        if sigma_dd[portfolio] == 0:
            Result[portfolio] = 42
        else:
            Result[portfolio] = (mu_ga[portfolio]-0)/sigma_dd[portfolio]
    
    return(Result)

# Function computing the number of positive months
def positiveMonth(data):
    N_portfolio = len(data[:,0])
    Result = np.empty(N_portfolio, dtype=float)
    
    for portfolio in range(N_portfolio):
        Result[portfolio] = np.sum(data[portfolio,:] >= 0)
        
    return(Result)

# Function computing the number of positive years
def positiveYear(data):
    N_portfolio = len(data[:,0])
    Result = np.empty(N_portfolio, dtype=float)
    
    returns = getYearRet(data)
    
    for portfolio in range(N_portfolio):
        Result[portfolio] = np.sum(returns[portfolio,:] >= 0)
    
    return(Result)

# Function computing the best monthly return
def monthBest(data):
    N_portfolio = len(data[:,0])
    Result = np.empty(N_portfolio, dtype=float)
    
    for portfolio in range(N_portfolio):
        Result[portfolio] = np.max(data[portfolio,:])
    
    return(Result)

# Function computing the worst monthly return
def monthWorst(data):
    N_portfolio = len(data[:,0])
    Result = np.empty(N_portfolio, dtype=float)
    
    for portfolio in range(N_portfolio):
        Result[portfolio] = np.min(data[portfolio,:])
    
    return(Result)

# Function computing the best annual return
def yearBest(data):
    N_portfolio = len(data[:,0])
    Result = np.empty(N_portfolio, dtype=float)
    
    returns = getYearRet(data)
    for portfolio in range(N_portfolio):
        Result[portfolio] = np.max(returns[portfolio,:])
    
    return(Result)

# Function computing the worst annual return
def yearWorst(data):
    N_portfolio = len(data[:,0])
    Result = np.empty(N_portfolio, dtype=float)
    
    returns = getYearRet(data)
    for portfolio in range(N_portfolio):
        Result[portfolio] = np.min(returns[portfolio,:])
    
    return(Result)

# Function computing the number of months when our sytrategy beats benchmark
def beatMonth(data):
    N_portfolio = len(data[:,0])
    Result = np.empty(N_portfolio, dtype=float)
    
    for portfolio in range(N_portfolio):
        Result[portfolio] = np.sum(data[portfolio,:] >= data[0,:])
        
    return(Result)

# Function computing the number of years when our strategy beats benchmark
def beatYear(data):
    N_portfolio = len(data[:,0])
    Result = np.empty(N_portfolio, dtype=float)
    
    returns = getYearRet(data)
    for portfolio in range(N_portfolio):
        Result[portfolio] = np.sum(returns[portfolio,:] >= returns[0,:])
        
    return(Result)

"""
THE MAIN CODE
"""
#################################################
# MODIFY NAMES OF EXCEL FILE AND SHEET ##########
#################################################
nameExcel = "1Results"
nameSheet = "Comparison"
firstRun = "False"                                  #True of False


# Read our data from Excel sheet
excelSheet = xlrd.open_workbook("C:/Users/Petr/Documents/gamsdir/projdir/" + nameExcel +".xlsx")

# Load portfolio values for given periods
portValue = readBySheet(excelSheet, nameSheet)
portName = readName(excelSheet, nameSheet)

# Compute portfolio returns
portRet = getReturns(portValue)
portRetAn = getReturnsAn(portValue)

#########################################################
# 1, AVERAGE GEOMETRIC MEAN OF RETURNS 
mu_g = meanRet(portRet)                     #monthly geometric mean
mu_a = aritMeanRet(portRet)                 #monthly aritmetic mean

mu_ga = meanRetAn(portValue)                #anually geometric mean
mu_aa = aritRetAn(portValue)                #annually arithmetric mean
    
profit = overallRet(portValue)              #overall gain

#########################################################
# 2, STANDARD DEVIATION
stdev = standardDev(portRet)                #ret monthly
stdev_a = standardDev(portRetAn)            #ret annually        

#########################################################
# 3, DOWNSIDE DEVIATION
sigma_dd = downDev(portRet)
sigma_dda = downDevAn(portValue) 

#########################################################
# 4, CVaR DEVIATION

#########################################################
# 5, MAXIMUM DRAWDOWN
MDD_month = monthMDD(portValue)         #monthly
MDD_overall = overallMDD(portValue)     #overall
MDD_corona = coronaMDD(portValue)       #corona crisis

#########################################################
# 6, SHARPE RATIO
S_annual = sharpeAn(portValue, portRetAn)   #annually
S_month = sharpeMon(portRet)                #monthly
S = sharpe(portValue, portRet)              #annual ret, monthly stdev??


#########################################################
# 7, SORTINO RATIO
So_annual = sortinoAn(portValue)            #annually
So_month = sortinoMon(portRet)              #monthly
So = sortino(portValue, portRet)           #annual ret, monthly down deviation?

#########################################################
# 8, Number of positive and negative periods
n_posMon = positiveMonth(portRet)
n_negMon = 49 - n_posMon

n_posAn = positiveYear(portValue)
n_negAn = 4 - n_posAn

#########################################################
# 9, Max and Min returns
month_best = monthBest(portRet)
month_worst = monthWorst(portRet)

year_best = yearBest(portValue)
year_worst = yearWorst(portValue)

#########################################################
# 10, How many times beats its benchamrk
n_beatMonth = beatMonth(portRet)
n_beatYear = beatYear(portValue)
"""
WRITE INTO EXCEL FILE
"""

if firstRun == "True":
    # Workbook is created 
    wb = Workbook() 
else:
    # open existing workbook
    rb = xlrd.open_workbook("C:/Users/Petr/Documents/Python Scripts/Excels/"+nameExcel+"Stat.xls", formatting_info=True)
    # make a copy of it
    wb = xl_copy(rb)
    
# add_sheet is used to create sheet. 
sheet = wb.add_sheet(nameSheet) 


# writing portfolio names into sheet
N_portfolio = len(portName)
for i in range(N_portfolio):
    sheet.write(i+1, 0, portName[i]) 
   
# writing statistics into sheet
statName = ["Arithemtic Average","Geometric Average","Total gain", "Stdev of Return", 
            "Downside Risk", "MDD Month", "MDD Overall", "MDD COVID", "Sharpe ratio",
            "Sortino ratio", "# positive months", "# negative months", "# positive years",
            "# negative years", "Best Month", "Worst month", "Best Year", "Worst Year",
            "# months beats SP500", "# years beats SP500"]
N_stat = len(statName)
for i in range(N_stat):
    sheet.write(0, i+1, statName[i])
    
# writing values
for row in range(N_portfolio): 
    sheet.write(row+1, 1, mu_aa[row])       #Avg Annual Ret
    sheet.write(row+1, 2, mu_ga[row])       #Avg Anuall Ret
    sheet.write(row+1, 3, profit[row])      #Overall Ret
    sheet.write(row+1, 4, stdev_a[row])     #Stdev Anuall Ret
    sheet.write(row+1, 5, sigma_dda[row])   #downside dev Anuall
    sheet.write(row+1, 6, MDD_month[row])   #MDD Month
    sheet.write(row+1, 7, MDD_overall[row]) #MDD Overall
    sheet.write(row+1, 8, MDD_corona[row])  #MDD COVID
    sheet.write(row+1, 9, S_annual[row])    #Sharpe ratio
    sheet.write(row+1, 10, So_annual[row])  #Sortino ratio
    sheet.write(row+1, 11, n_posMon[row])   #Positive month
    sheet.write(row+1, 12, n_negMon[row])   #Negative month
    sheet.write(row+1, 13, n_posAn[row])    #Positive Year
    sheet.write(row+1, 14, n_negAn[row])    #Negative Year
    sheet.write(row+1, 15, month_best[row]) #Best month
    sheet.write(row+1, 16, month_worst[row])#Worst month
    sheet.write(row+1, 17, year_best[row])  #Best year
    sheet.write(row+1, 18, year_worst[row]) #Worst year
    sheet.write(row+1, 19, n_beatMonth[row])  #Beat SP500 month
    sheet.write(row+1, 20, n_beatYear[row]) #Beat SP500 Year
    
        
# Saving
wb.save("C:/Users/Petr/Documents/Python Scripts/Excels/"+nameExcel+"Stat.xls") 











