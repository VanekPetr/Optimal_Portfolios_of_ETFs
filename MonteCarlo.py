"""
Monte Carlo Scenario generation Method
"""

# IMPORTED LIBRARY
import xlrd
import xlwt
import numpy as np
import math 

# DEFINED FUNCTION FOR READING THE EXCEL SHEET
def readBySheet(file, SheetName):
    sheet = file.sheet_by_name(SheetName)
    rows = sheet.nrows
    cols = sheet.ncols
    
    Data = np.empty((cols, rows), dtype=float) 
    
    for row in range(cols):
        Data[row, :] = np.asarray(sheet.col_values(row,0,rows))
        
    return(Data)
        
        
# READ THE FILE
data = xlrd.open_workbook('/Users/macbook/Documents/Python/out-ETFRet.xlsx')
sheet = data.sheet_by_name('out-ETFRet')
# LOAD RETURNS
weekly_ret_total = readBySheet(data, 'out-ETFRet')
# LOAD ETFs NAMES
text_file = open("/Users/macbook/Documents/Python/ind.txt", "r")
Indices = text_file.read().split(',')
# SIZE OF OUR DATASET
nRows = len(weekly_ret_total[:,0])
nCols = len(weekly_ret_total[0,:])
print(nRows, nCols)

# TRAINING DATASET: FIRST 97 WEEKS
ret_train = weekly_ret_total[0:97,0:nCols]
# TESTING DATASET
ret_test = weekly_ret_total[97:nRows,0:nCols]
ret_test_cum = np.cumprod(ret_test + np.ones((ret_test.shape), dtype=float),
                          axis=0)

###############
# MONTE CARLO #
###############
N_train = len(ret_train[:, 0]) 
N_test = len(ret_test[:, 0])
N_iter = 4
N_sim = 250                                 #250 scenarios for each period
N_indices = len(ret_train[0, :])

SIGMA = np.cov(ret_train, rowvar=False)     #The covariance matrix 
RHO = np.corrcoef(ret_train, rowvar=False)  #The correlation matrix 
MU = np.mean(ret_train, axis=0)             #The mean array
sd = np.sqrt(np.diagonal(SIGMA))            #The standard deviation
N_rolls = math.floor((N_test)/N_iter)

sim = np.zeros((N_test, N_sim, N_indices), dtype=float) #Match GAMS format

print('-------Simulating Weekly Returns-------') 
for week in range(N_test):
    sim[week, :, :] = np.random.multivariate_normal(mean = MU,cov = SIGMA,
                                                    size = N_sim)

monthly_sim = np.zeros((N_rolls, N_sim, N_indices))

print('-------Computing Monthly Returns-------')
for roll in range(N_rolls):
    roll_mult = roll*N_iter
    for s in range(N_sim):
        for index in range(N_indices):
            tmp_rets = 1 + sim[roll_mult:(roll_mult + 4), s,index] 
            monthly_sim[roll, s, index] = np.prod(tmp_rets)-1
    
    
fil = xlwt.Workbook()

print('-------Write to file-------')

for sheet_no in range(N_indices):           #Assets 
    name_str = str(Indices[sheet_no]).lstrip()
    sheet = fil.add_sheet(name_str)
    for col in range(N_sim + 1):            #Simulation
        if col > 0:
            sheet.write(0, col, "s"+str(col))
        for row in range(1, N_rolls + 1):     #Roll 
            if col == 0:
                sheet.write(row, col, "p"+str(row)) 
            else:
                if row > 0:
                    #print(row, col, sheet_no)
                    sheet.write(row, col, monthly_sim[row-1,col-1,sheet_no])

fil.save('MCresult.xls') 


print('--Ran MC.py--')

for i in range(N_indices-490):
    print("ETF"+str(i)+"(p, s)")
    
for i in range(N_indices-490):
    print("par=ETF"+str(i+1)+" rng="+str(Indices[i]).lstrip()+"!a1:iq50 rdim=1 cdim=1") 
    
for i in range(N_indices-490):
    print("$LOAD ETF"+str(i+1))

for i in range(N_indices-490):    
    print("ScenarioReturnP('"+str(Indices[i]).lstrip() +"',s,p)=ETF"+str(i+1)+"(p,s);")