
# Set working directory
# setwd()


new_data <- read.csv('~/Stats_316_F24/Project/DR_MB/Stat_Theory_Data_QName.csv', sep=',')
names(new_data) <- c('B0002500',
'B0002600',
'B0002700',
'B0002800',
'B0002900',
'B0003000',
'B0003100',
'B0004600',
'B0004700',
'B0004800',
'B0004900',
'B0005000',
'B0005100',
'B0005200',
'R0000100',
'R0348100',
'R0348600',
'R0349800',
'R0350200',
'R0350300',
'R0350400',
'R0350500',
'R0350600',
'R0350700',
'R0536300',
'R0536401',
'R0536402',
'R0538700',
'R1200300',
'R1210200',
'R1217500',
'R1235800',
'R1482600',
'R2180900',
'R2181500',
'R2183200',
'R2183700',
'R2183800',
'R2183900',
'R2184000',
'R2184100',
'R2184300',
'R2558800',
'R2569300',
'R2576800',
'R3498900',
'R3499500',
'R3501100',
'R3501600',
'R3501700',
'R3501800',
'R3501900',
'R3502000',
'R3502200',
'R3880300',
'R3891300',
'R3899100',
'R4894500',
'R4895100',
'R4896800',
'R4898200',
'R4898300',
'R4898400',
'R4898500',
'R4898800',
'R4899000',
'R5459400',
'R5473300',
'R5484100',
'R6520600',
'R6522900',
'R6524300',
'R6524400',
'R6524500',
'R6524600',
'R6524900',
'R6525100',
'R7222400',
'R7237000',
'R7248400',
'R9793400',
'R9793500',
'R9793600',
'R9793700',
'R9793800',
'R9793900',
'R9794000',
'R9794001',
'R9871900',
'S1192700',
'S1193300',
'S1202000',
'S1203700',
'S1203800',
'S1203900',
'S1204000',
'S1204100',
'S1204400',
'S1204600',
'S1535500',
'S1552200',
'S1564300',
'S2005400',
'S2022000',
'S2034400',
'S3274100',
'S3274700',
'S3284800',
'S3286500',
'S3286600',
'S3286700',
'S3286800',
'S3286900',
'S3287200',
'S3287400',
'S3805700',
'S3822900',
'S3835800',
'S4897000',
'S4897600',
'S4907700',
'S4909400',
'S4909500',
'S4909600',
'S4909700',
'S4909800',
'S4910100',
'S4910300',
'S5405600',
'S5423000',
'S5436300',
'S6636300',
'S6637000',
'S6647400',
'S6649100',
'S6649200',
'S6649300',
'S6649400',
'S6649500',
'S6649800',
'S6650000',
'S7506100',
'S7525100',
'S7537100',
'S8628400',
'S8629100',
'S8633900',
'S8634900',
'S8635000',
'S8635300',
'S8635500',
'T0009400',
'T0025400',
'T0033700',
'T1014300',
'T1019200',
'T1020200',
'T1020300',
'T1020600',
'T1020800',
'T2012100',
'T2020300',
'T2021300',
'T3111400',
'T3116800',
'T3117800',
'T3117900',
'T3118200',
'T3118400',
'T3602100',
'T3611000',
'T3612000',
'T4528000',
'T4529000',
'T4529100',
'T4529400',
'T4529600',
'T5202300',
'T5211400',
'T5211900',
'T6176700',
'T6177700',
'T6177800',
'T6178100',
'T6178300',
'T6652100',
'T6662800',
'T6663300',
'T7670000',
'T7670900',
'T7671000',
'T7671300',
'T7671500',
'T8123700',
'T8134000',
'T8134500',
'T9068300',
'T9068400',
'T9068500',
'U0001900',
'U0014500',
'U0015000',
'U1062700',
'U1062800',
'U1062900',
'U1838600',
'U1852300',
'U1853200',
'U3438000',
'U3451400',
'U3453600',
'U4943100',
'U4954500',
'U4956900')


# Handle missing values

new_data[new_data == -1] = NA  # Refused
new_data[new_data == -2] = NA  # Dont know
new_data[new_data == -3] = NA  # Invalid missing
new_data[new_data == -4] = NA  # Valid missing
new_data[new_data == -5] = NA  # Non-interview


# If there are values not categorized they will be represented as NA

vallabels = function(data) {
  data$B0002500 <- factor(data$B0002500,
levels=c(1.0,2.0),
labels=c("Yes",
"No"))
  data$B0002600 <- factor(data$B0002600,
levels=c(1.0,2.0),
labels=c("Yes",
"No"))
  data$B0002700 <- factor(data$B0002700,
levels=c(1.0,2.0),
labels=c("Yes",
"No"))
  data$B0002800 <- factor(data$B0002800,
levels=c(1.0,2.0),
labels=c("Yes",
"No"))
  data$B0002900 <- factor(data$B0002900,
levels=c(1.0,2.0),
labels=c("Yes",
"No"))
  data$B0003000 <- factor(data$B0003000,
levels=c(1.0,2.0),
labels=c("Yes",
"No"))
  data$B0003100 <- factor(data$B0003100,
levels=c(1.0,2.0),
labels=c("Yes",
"No"))
  data$R0350300 <- factor(data$R0350300,
levels=c(1.0,2.0,3.0,4.0),
labels=c("1",
"2-5",
"6-9",
"10 OR MORE"))
  data$R0350500 <- factor(data$R0350500,
levels=c(1.0,2.0,3.0,4.0),
labels=c("1",
"2-5",
"6-9",
"10 or more"))
  data$R0350700 <- factor(data$R0350700,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0),
labels=c("ONCE",
"TWICE",
"3-10",
"11-25",
"26-50",
"51-100",
"101-200",
"201 OR MORE"))
  data$R0536300 <- factor(data$R0536300,
levels=c(0.0,1.0,2.0),
labels=c("No Information",
"Male",
"Female"))
  data$R0536401 <- factor(data$R0536401,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0),
labels=c("1: January",
"2: February",
"3: March",
"4: April",
"5: May",
"6: June",
"7: July",
"8: August",
"9: September",
"10: October",
"11: November",
"12: December"))
  data$R0538700 <- factor(data$R0538700,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0),
labels=c("No information",
"White",
"Black or African American",
"American Indian, Eskimo, or Aleut",
"Asian or Pacific Islander",
"Something else? (SPECIFY)"))
  data$R1200300 <- factor(data$R1200300,
levels=c(1.0,2.0,3.0,4.0),
labels=c("Northeast (CT, ME, MA, NH, NJ, NY, PA, RI, VT)",
"North Central (IL, IN, IA, KS, MI, MN, MO, NE, OH, ND, SD, WI)",
"South (AL, AR, DE, DC, FL, GA, KY, LA, MD, MS, NC, OK, SC, TN , TX, VA, WV)",
"West (AK, AZ, CA, CO, HI, ID, MT, NV, NM, OR, UT, WA, WY)"))
  data$R1210200 <- factor(data$R1210200,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("Never married, cohabiting",
"Never married, not cohabiting",
"Married, spouse present",
"Married, spouse absent",
"Separated, cohabiting",
"Separated, not cohabiting",
"Divorced, cohabiting",
"Divorced, not cohabiting",
"Widowed, cohabiting",
"Widowed, not cohabiting"))
  data$R1217500 <- factor(data$R1217500,
levels=c(0.0,1.0,2.0),
labels=c("Rural",
"Urban",
"Unknown"))
  data$R1235800 <- factor(data$R1235800,
levels=c(0.0,1.0),
labels=c("Oversample",
"Cross-sectional"))
  data$R1482600 <- factor(data$R1482600,
levels=c(1.0,2.0,3.0,4.0),
labels=c("Black",
"Hispanic",
"Mixed Race (Non-Hispanic)",
"Non-Black / Non-Hispanic"))
  data$R2183800 <- factor(data$R2183800,
levels=c(1.0,2.0,3.0,4.0),
labels=c("1",
"2-5",
"6-9",
"10 OR MORE"))
  data$R2184000 <- factor(data$R2184000,
levels=c(1.0,2.0,3.0,4.0),
labels=c("1 Partner",
"2-5 Partners",
"6-9 Partners",
"10 or more Partners"))
  data$R2184300 <- factor(data$R2184300,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0),
labels=c("ONCE",
"TWICE",
"3-10",
"11-25",
"26-50",
"51-100",
"101-200",
"201 OR MORE"))
  data$R2558800 <- factor(data$R2558800,
levels=c(1.0,2.0,3.0,4.0),
labels=c("Northeast (CT, ME, MA, NH, NJ, NY, PA, RI, VT)",
"North Central (IL, IN, IA, KS, MI, MN, MO, NE, OH, ND, SD, WI)",
"South (AL, AR, DE, DC, FL, GA, KY, LA, MD, MS, NC, OK, SC, TN , TX, VA, WV)",
"West (AK, AZ, CA, CO, HI, ID, MT, NV, NM, OR, UT, WA, WY)"))
  data$R2569300 <- factor(data$R2569300,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("Never married, cohabiting",
"Never married, not cohabiting",
"Married, spouse present",
"Married, spouse absent",
"Separated, cohabiting",
"Separated, not cohabiting",
"Divorced, cohabiting",
"Divorced, not cohabiting",
"Widowed, cohabiting",
"Widowed, not cohabiting"))
  data$R2576800 <- factor(data$R2576800,
levels=c(0.0,1.0,2.0),
labels=c("Rural",
"Urban",
"Unknown"))
  data$R3501700 <- factor(data$R3501700,
levels=c(1.0,2.0,3.0,4.0),
labels=c("1",
"2-5",
"6-9",
"10 OR MORE"))
  data$R3501900 <- factor(data$R3501900,
levels=c(1.0,2.0,3.0,4.0),
labels=c("1 Partner",
"2-5 Partners",
"6-9 Partners",
"10 or more Partners"))
  data$R3502200 <- factor(data$R3502200,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0),
labels=c("ONCE",
"TWICE",
"3-10",
"11-25",
"26-50",
"51-100",
"101-200",
"201 OR MORE"))
  data$R3880300 <- factor(data$R3880300,
levels=c(1.0,2.0,3.0,4.0),
labels=c("Northeast (CT, ME, MA, NH, NJ, NY, PA, RI, VT)",
"North Central (IL, IN, IA, KS, MI, MN, MO, NE, OH, ND, SD, WI)",
"South (AL, AR, DE, DC, FL, GA, KY, LA, MD, MS, NC, OK, SC, TN , TX, VA, WV)",
"West (AK, AZ, CA, CO, HI, ID, MT, NV, NM, OR, UT, WA, WY)"))
  data$R3891300 <- factor(data$R3891300,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("Never married, cohabiting",
"Never married, not cohabiting",
"Married, spouse present",
"Married, spouse absent",
"Separated, cohabiting",
"Separated, not cohabiting",
"Divorced, cohabiting",
"Divorced, not cohabiting",
"Widowed, cohabiting",
"Widowed, not cohabiting"))
  data$R3899100 <- factor(data$R3899100,
levels=c(0.0,1.0,2.0),
labels=c("Rural",
"Urban",
"Unknown"))
  data$R4898300 <- factor(data$R4898300,
levels=c(1.0,2.0,3.0,4.0),
labels=c("1",
"2-5",
"6-9",
"10 OR MORE"))
  data$R4898500 <- factor(data$R4898500,
levels=c(1.0,2.0,3.0,4.0),
labels=c("1 Partner",
"2-5 Partners",
"6-9 Partners",
"10 or more Partners"))
  data$R4899000 <- factor(data$R4899000,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0),
labels=c("ONCE",
"TWICE",
"3-10",
"11-25",
"26-50",
"51-100",
"101-200",
"201 OR MORE"))
  data$R5459400 <- factor(data$R5459400,
levels=c(1.0,2.0,3.0,4.0),
labels=c("Northeast (CT, ME, MA, NH, NJ, NY, PA, RI, VT)",
"North Central (IL, IN, IA, KS, MI, MN, MO, NE, OH, ND, SD, WI)",
"South (AL, AR, DE, DC, FL, GA, KY, LA, MD, MS, NC, OK, SC, TN , TX, VA, WV)",
"West (AK, AZ, CA, CO, HI, ID, MT, NV, NM, OR, UT, WA, WY)"))
  data$R5473300 <- factor(data$R5473300,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("Never married, cohabiting",
"Never married, not cohabiting",
"Married, spouse present",
"Married, spouse absent",
"Separated, cohabiting",
"Separated, not cohabiting",
"Divorced, cohabiting",
"Divorced, not cohabiting",
"Widowed, cohabiting",
"Widowed, not cohabiting"))
  data$R5484100 <- factor(data$R5484100,
levels=c(0.0,1.0,2.0),
labels=c("Rural",
"Urban",
"Unknown"))
  data$R6524400 <- factor(data$R6524400,
levels=c(1.0,2.0,3.0,4.0),
labels=c("1",
"2-5",
"6-9",
"10 OR MORE"))
  data$R6524600 <- factor(data$R6524600,
levels=c(1.0,2.0,3.0,4.0),
labels=c("1 Partner",
"2-5 Partners",
"6-9 Partners",
"10 or more Partners"))
  data$R6525100 <- factor(data$R6525100,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0),
labels=c("ONCE",
"TWICE",
"3-10",
"11-25",
"26-50",
"51-100",
"101-200",
"201 OR MORE"))
  data$R7222400 <- factor(data$R7222400,
levels=c(1.0,2.0,3.0,4.0),
labels=c("Northeast (CT, ME, MA, NH, NJ, NY, PA, RI, VT)",
"North Central (IL, IN, IA, KS, MI, MN, MO, NE, OH, ND, SD, WI)",
"South (AL, AR, DE, DC, FL, GA, KY, LA, MD, MS, NC, OK, SC, TN , TX, VA, WV)",
"West (AK, AZ, CA, CO, HI, ID, MT, NV, NM, OR, UT, WA, WY)"))
  data$R7237000 <- factor(data$R7237000,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("Never married, cohabiting",
"Never married, not cohabiting",
"Married, spouse present",
"Married, spouse absent",
"Separated, cohabiting",
"Separated, not cohabiting",
"Divorced, cohabiting",
"Divorced, not cohabiting",
"Widowed, cohabiting",
"Widowed, not cohabiting"))
  data$R7248400 <- factor(data$R7248400,
levels=c(0.0,1.0,2.0),
labels=c("Rural",
"Urban",
"Unknown"))
  data$R9794000 <- factor(data$R9794000,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0),
labels=c("1: January",
"2: February",
"3: March",
"4: April",
"5: May",
"6: June",
"7: July",
"8: August",
"9: September",
"10: October",
"11: November",
"12: December"))
  data$S1203800 <- factor(data$S1203800,
levels=c(1.0,2.0,3.0,4.0),
labels=c("1",
"2-5",
"6-9",
"10 OR MORE"))
  data$S1203900 <- factor(data$S1203900,
levels=c(0.0,1.0),
labels=c("0: 0  CONDITION DOES NOT APPLY",
"1: 1  CONDITION APPLIES"))
  data$S1204100 <- factor(data$S1204100,
levels=c(1.0,2.0,3.0,4.0),
labels=c("1 Partner",
"2-5 Partners",
"6-9 Partners",
"10 or more Partners"))
  data$S1204600 <- factor(data$S1204600,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0),
labels=c("ONCE",
"TWICE",
"3-10",
"11-25",
"26-50",
"51-100",
"101-200",
"201 OR MORE"))
  data$S1535500 <- factor(data$S1535500,
levels=c(1.0,2.0,3.0,4.0),
labels=c("Northeast (CT, ME, MA, NH, NJ, NY, PA, RI, VT)",
"North Central (IL, IN, IA, KS, MI, MN, MO, NE, OH, ND, SD, WI)",
"South (AL, AR, DE, DC, FL, GA, KY, LA, MD, MS, NC, OK, SC, TN , TX, VA, WV)",
"West (AK, AZ, CA, CO, HI, ID, MT, NV, NM, OR, UT, WA, WY)"))
  data$S1552200 <- factor(data$S1552200,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("Never married, cohabiting",
"Never married, not cohabiting",
"Married, spouse present",
"Married, spouse absent",
"Separated, cohabiting",
"Separated, not cohabiting",
"Divorced, cohabiting",
"Divorced, not cohabiting",
"Widowed, cohabiting",
"Widowed, not cohabiting"))
  data$S1564300 <- factor(data$S1564300,
levels=c(0.0,1.0,2.0),
labels=c("Rural",
"Urban",
"Unknown"))
  data$S2005400 <- factor(data$S2005400,
levels=c(1.0,2.0,3.0,4.0),
labels=c("Northeast (CT, ME, MA, NH, NJ, NY, PA, RI, VT)",
"North Central (IL, IN, IA, KS, MI, MN, MO, NE, OH, ND, SD, WI)",
"South (AL, AR, DE, DC, FL, GA, KY, LA, MD, MS, NC, OK, SC, TN , TX, VA, WV)",
"West (AK, AZ, CA, CO, HI, ID, MT, NV, NM, OR, UT, WA, WY)"))
  data$S2022000 <- factor(data$S2022000,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("Never married, cohabiting",
"Never married, not cohabiting",
"Married, spouse present",
"Married, spouse absent",
"Separated, cohabiting",
"Separated, not cohabiting",
"Divorced, cohabiting",
"Divorced, not cohabiting",
"Widowed, cohabiting",
"Widowed, not cohabiting"))
  data$S2034400 <- factor(data$S2034400,
levels=c(0.0,1.0,2.0),
labels=c("Rural",
"Urban",
"Unknown"))
  data$S3286600 <- factor(data$S3286600,
levels=c(1.0,2.0,3.0,4.0),
labels=c("1",
"2-5",
"6-9",
"10 OR MORE"))
  data$S3286700 <- factor(data$S3286700,
levels=c(0.0,1.0),
labels=c("0: 0  CONDITION DOES NOT APPLY",
"1: 1  CONDITION APPLIES"))
  data$S3286900 <- factor(data$S3286900,
levels=c(1.0,2.0,3.0,4.0),
labels=c("1 Partner",
"2-5 Partners",
"6-9 Partners",
"10 or more Partners"))
  data$S3287400 <- factor(data$S3287400,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0),
labels=c("ONCE",
"TWICE",
"3-10",
"11-25",
"26-50",
"51-100",
"101-200",
"201 OR MORE"))
  data$S3805700 <- factor(data$S3805700,
levels=c(1.0,2.0,3.0,4.0),
labels=c("Northeast (CT, ME, MA, NH, NJ, NY, PA, RI, VT)",
"North Central (IL, IN, IA, KS, MI, MN, MO, NE, OH, ND, SD, WI)",
"South (AL, AR, DE, DC, FL, GA, KY, LA, MD, MS, NC, OK, SC, TN , TX, VA, WV)",
"West (AK, AZ, CA, CO, HI, ID, MT, NV, NM, OR, UT, WA, WY)"))
  data$S3822900 <- factor(data$S3822900,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("Never married, cohabiting",
"Never married, not cohabiting",
"Married, spouse present",
"Married, spouse absent",
"Separated, cohabiting",
"Separated, not cohabiting",
"Divorced, cohabiting",
"Divorced, not cohabiting",
"Widowed, cohabiting",
"Widowed, not cohabiting"))
  data$S3835800 <- factor(data$S3835800,
levels=c(0.0,1.0,2.0),
labels=c("Rural",
"Urban",
"Unknown"))
  data$S4909500 <- factor(data$S4909500,
levels=c(1.0,2.0,3.0,4.0),
labels=c("1",
"2-5",
"6-9",
"10 OR MORE"))
  data$S4909600 <- factor(data$S4909600,
levels=c(0.0,1.0),
labels=c("0: 0  CONDITION DOES NOT APPLY",
"1: 1  CONDITION APPLIES"))
  data$S4909800 <- factor(data$S4909800,
levels=c(1.0,2.0,3.0,4.0),
labels=c("1 Partner",
"2-5 Partners",
"6-9 Partners",
"10 or more Partners"))
  data$S4910300 <- factor(data$S4910300,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0),
labels=c("ONCE",
"TWICE",
"3-10",
"11-25",
"26-50",
"51-100",
"101-200",
"201 OR MORE"))
  data$S5405600 <- factor(data$S5405600,
levels=c(1.0,2.0,3.0,4.0),
labels=c("Northeast (CT, ME, MA, NH, NJ, NY, PA, RI, VT)",
"North Central (IL, IN, IA, KS, MI, MN, MO, NE, OH, ND, SD, WI)",
"South (AL, AR, DE, DC, FL, GA, KY, LA, MD, MS, NC, OK, SC, TN , TX, VA, WV)",
"West (AK, AZ, CA, CO, HI, ID, MT, NV, NM, OR, UT, WA, WY)"))
  data$S5423000 <- factor(data$S5423000,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("Never married, cohabiting",
"Never married, not cohabiting",
"Married, spouse present",
"Married, spouse absent",
"Separated, cohabiting",
"Separated, not cohabiting",
"Divorced, cohabiting",
"Divorced, not cohabiting",
"Widowed, cohabiting",
"Widowed, not cohabiting"))
  data$S5436300 <- factor(data$S5436300,
levels=c(0.0,1.0,2.0),
labels=c("Rural",
"Urban",
"Unknown"))
  data$S6649200 <- factor(data$S6649200,
levels=c(1.0,2.0,3.0,4.0),
labels=c("1",
"2-5",
"6-9",
"10 OR MORE"))
  data$S6649300 <- factor(data$S6649300,
levels=c(0.0,1.0),
labels=c("0: 0  CONDITION DOES NOT APPLY",
"1: 1  CONDITION APPLIES"))
  data$S6649500 <- factor(data$S6649500,
levels=c(1.0,2.0,3.0,4.0),
labels=c("1 Partner",
"2-5 Partners",
"6-9 Partners",
"10 or more Partners"))
  data$S6650000 <- factor(data$S6650000,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0),
labels=c("ONCE",
"TWICE",
"3-10",
"11-25",
"26-50",
"51-100",
"101-200",
"201 OR MORE"))
  data$S7506100 <- factor(data$S7506100,
levels=c(1.0,2.0,3.0,4.0),
labels=c("Northeast (CT, ME, MA, NH, NJ, NY, PA, RI, VT)",
"North Central (IL, IN, IA, KS, MI, MN, MO, NE, OH, ND, SD, WI)",
"South (AL, AR, DE, DC, FL, GA, KY, LA, MD, MS, NC, OK, SC, TN , TX, VA, WV)",
"West (AK, AZ, CA, CO, HI, ID, MT, NV, NM, OR, UT, WA, WY)"))
  data$S7525100 <- factor(data$S7525100,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("Never married, cohabiting",
"Never married, not cohabiting",
"Married, spouse present",
"Married, spouse absent",
"Separated, cohabiting",
"Separated, not cohabiting",
"Divorced, cohabiting",
"Divorced, not cohabiting",
"Widowed, cohabiting",
"Widowed, not cohabiting"))
  data$S7537100 <- factor(data$S7537100,
levels=c(0.0,1.0,2.0),
labels=c("Rural",
"Urban",
"Unknown"))
  data$S8635000 <- factor(data$S8635000,
levels=c(1.0,2.0,3.0,4.0),
labels=c("1 Partner",
"2-5 Partners",
"6-9 Partners",
"10 or more Partners"))
  data$S8635500 <- factor(data$S8635500,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0),
labels=c("ONCE",
"TWICE",
"3-10",
"11-25",
"26-50",
"51-100",
"101-200",
"201 OR MORE"))
  data$T0009400 <- factor(data$T0009400,
levels=c(1.0,2.0,3.0,4.0),
labels=c("Northeast (CT, ME, MA, NH, NJ, NY, PA, RI, VT)",
"North Central (IL, IN, IA, KS, MI, MN, MO, NE, OH, ND, SD, WI)",
"South (AL, AR, DE, DC, FL, GA, KY, LA, MD, MS, NC, OK, SC, TN , TX, VA, WV)",
"West (AK, AZ, CA, CO, HI, ID, MT, NV, NM, OR, UT, WA, WY)"))
  data$T0025400 <- factor(data$T0025400,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("Never married, cohabiting",
"Never married, not cohabiting",
"Married, spouse present",
"Married, spouse absent",
"Separated, cohabiting",
"Separated, not cohabiting",
"Divorced, cohabiting",
"Divorced, not cohabiting",
"Widowed, cohabiting",
"Widowed, not cohabiting"))
  data$T0033700 <- factor(data$T0033700,
levels=c(0.0,1.0,2.0),
labels=c("Rural",
"Urban",
"Unknown"))
  data$T1020300 <- factor(data$T1020300,
levels=c(1.0,2.0,3.0,4.0),
labels=c("1 Partner",
"2-5 Partners",
"6-9 Partners",
"10 or more Partners"))
  data$T1020800 <- factor(data$T1020800,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0),
labels=c("ONCE",
"TWICE",
"3-10",
"11-25",
"26-50",
"51-100",
"101-200",
"201 OR MORE"))
  data$T2012100 <- factor(data$T2012100,
levels=c(1.0,2.0,3.0,4.0),
labels=c("Northeast (CT, ME, MA, NH, NJ, NY, PA, RI, VT)",
"North Central (IL, IN, IA, KS, MI, MN, MO, NE, OH, ND, SD, WI)",
"South (AL, AR, DE, DC, FL, GA, KY, LA, MD, MS, NC, OK, SC, TN , TX, VA, WV)",
"West (AK, AZ, CA, CO, HI, ID, MT, NV, NM, OR, UT, WA, WY)"))
  data$T2020300 <- factor(data$T2020300,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("Never married, cohabiting",
"Never married, not cohabiting",
"Married, spouse present",
"Married, spouse absent",
"Separated, cohabiting",
"Separated, not cohabiting",
"Divorced, cohabiting",
"Divorced, not cohabiting",
"Widowed, cohabiting",
"Widowed, not cohabiting"))
  data$T2021300 <- factor(data$T2021300,
levels=c(0.0,1.0,2.0),
labels=c("Rural",
"Urban",
"Unknown"))
  data$T3117900 <- factor(data$T3117900,
levels=c(1.0,2.0,3.0,4.0),
labels=c("1 Partner",
"2-5 Partners",
"6-9 Partners",
"10 or more Partners"))
  data$T3118400 <- factor(data$T3118400,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0),
labels=c("ONCE",
"TWICE",
"3-10",
"11-25",
"26-50",
"51-100",
"101-200",
"201 OR MORE"))
  data$T3602100 <- factor(data$T3602100,
levels=c(1.0,2.0,3.0,4.0),
labels=c("Northeast (CT, ME, MA, NH, NJ, NY, PA, RI, VT)",
"North Central (IL, IN, IA, KS, MI, MN, MO, NE, OH, ND, SD, WI)",
"South (AL, AR, DE, DC, FL, GA, KY, LA, MD, MS, NC, OK, SC, TN , TX, VA, WV)",
"West (AK, AZ, CA, CO, HI, ID, MT, NV, NM, OR, UT, WA, WY)"))
  data$T3611000 <- factor(data$T3611000,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("Never married, cohabiting",
"Never married, not cohabiting",
"Married, spouse present",
"Married, spouse absent",
"Separated, cohabiting",
"Separated, not cohabiting",
"Divorced, cohabiting",
"Divorced, not cohabiting",
"Widowed, cohabiting",
"Widowed, not cohabiting"))
  data$T3612000 <- factor(data$T3612000,
levels=c(0.0,1.0,2.0),
labels=c("Rural",
"Urban",
"Unknown"))
  data$T4529100 <- factor(data$T4529100,
levels=c(1.0,2.0,3.0,4.0),
labels=c("1 Partner",
"2-5 Partners",
"6-9 Partners",
"10 or more Partners"))
  data$T4529600 <- factor(data$T4529600,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0),
labels=c("ONCE",
"TWICE",
"3-10",
"11-25",
"26-50",
"51-100",
"101-200",
"201 OR MORE"))
  data$T5202300 <- factor(data$T5202300,
levels=c(1.0,2.0,3.0,4.0),
labels=c("Northeast (CT, ME, MA, NH, NJ, NY, PA, RI, VT)",
"North Central (IL, IN, IA, KS, MI, MN, MO, NE, OH, ND, SD, WI)",
"South (AL, AR, DE, DC, FL, GA, KY, LA, MD, MS, NC, OK, SC, TN , TX, VA, WV)",
"West (AK, AZ, CA, CO, HI, ID, MT, NV, NM, OR, UT, WA, WY)"))
  data$T5211400 <- factor(data$T5211400,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("Never married, cohabiting",
"Never married, not cohabiting",
"Married, spouse present",
"Married, spouse absent",
"Separated, cohabiting",
"Separated, not cohabiting",
"Divorced, cohabiting",
"Divorced, not cohabiting",
"Widowed, cohabiting",
"Widowed, not cohabiting"))
  data$T5211900 <- factor(data$T5211900,
levels=c(0.0,1.0,2.0),
labels=c("Rural",
"Urban",
"Unknown"))
  data$T6177800 <- factor(data$T6177800,
levels=c(1.0,2.0,3.0,4.0),
labels=c("1 Partner",
"2-5 Partners",
"6-9 Partners",
"10 or more Partners"))
  data$T6178300 <- factor(data$T6178300,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0),
labels=c("ONCE",
"TWICE",
"3-10",
"11-25",
"26-50",
"51-100",
"101-200",
"201 OR MORE"))
  data$T6652100 <- factor(data$T6652100,
levels=c(1.0,2.0,3.0,4.0),
labels=c("Northeast (CT, ME, MA, NH, NJ, NY, PA, RI, VT)",
"North Central (IL, IN, IA, KS, MI, MN, MO, NE, OH, ND, SD, WI)",
"South (AL, AR, DE, DC, FL, GA, KY, LA, MD, MS, NC, OK, SC, TN , TX, VA, WV)",
"West (AK, AZ, CA, CO, HI, ID, MT, NV, NM, OR, UT, WA, WY)"))
  data$T6662800 <- factor(data$T6662800,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("Never married, cohabiting",
"Never married, not cohabiting",
"Married, spouse present",
"Married, spouse absent",
"Separated, cohabiting",
"Separated, not cohabiting",
"Divorced, cohabiting",
"Divorced, not cohabiting",
"Widowed, cohabiting",
"Widowed, not cohabiting"))
  data$T6663300 <- factor(data$T6663300,
levels=c(0.0,1.0,2.0),
labels=c("Rural",
"Urban",
"Unknown"))
  data$T7671000 <- factor(data$T7671000,
levels=c(1.0,2.0,3.0,4.0),
labels=c("1 Partner",
"2-5 Partners",
"6-9 Partners",
"10 or more Partners"))
  data$T7671500 <- factor(data$T7671500,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0),
labels=c("ONCE",
"TWICE",
"3-10",
"11-25",
"26-50",
"51-100",
"101-200",
"201 OR MORE"))
  data$T8123700 <- factor(data$T8123700,
levels=c(1.0,2.0,3.0,4.0),
labels=c("Northeast (CT, ME, MA, NH, NJ, NY, PA, RI, VT)",
"North Central (IL, IN, IA, KS, MI, MN, MO, NE, OH, ND, SD, WI)",
"South (AL, AR, DE, DC, FL, GA, KY, LA, MD, MS, NC, OK, SC, TN , TX, VA, WV)",
"West (AK, AZ, CA, CO, HI, ID, MT, NV, NM, OR, UT, WA, WY)"))
  data$T8134000 <- factor(data$T8134000,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("Never married, cohabiting",
"Never married, not cohabiting",
"Married, spouse present",
"Married, spouse absent",
"Separated, cohabiting",
"Separated, not cohabiting",
"Divorced, cohabiting",
"Divorced, not cohabiting",
"Widowed, cohabiting",
"Widowed, not cohabiting"))
  data$T8134500 <- factor(data$T8134500,
levels=c(0.0,1.0,2.0),
labels=c("Rural",
"Urban",
"Unknown"))
  data$T9068500 <- factor(data$T9068500,
levels=c(1.0,2.0,3.0,4.0),
labels=c("1 Person",
"2-5 Persons",
"6-9 Persons",
"10 or more Persons"))
  data$U0001900 <- factor(data$U0001900,
levels=c(1.0,2.0,3.0,4.0),
labels=c("Northeast (CT, ME, MA, NH, NJ, NY, PA, RI, VT)",
"North Central (IL, IN, IA, KS, MI, MN, MO, NE, OH, ND, SD, WI)",
"South (AL, AR, DE, DC, FL, GA, KY, LA, MD, MS, NC, OK, SC, TN , TX, VA, WV)",
"West (AK, AZ, CA, CO, HI, ID, MT, NV, NM, OR, UT, WA, WY)"))
  data$U0014500 <- factor(data$U0014500,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("Never married, cohabiting",
"Never married, not cohabiting",
"Married, spouse present",
"Married, spouse absent",
"Separated, cohabiting",
"Separated, not cohabiting",
"Divorced, cohabiting",
"Divorced, not cohabiting",
"Widowed, cohabiting",
"Widowed, not cohabiting"))
  data$U0015000 <- factor(data$U0015000,
levels=c(0.0,1.0,2.0),
labels=c("Rural",
"Urban",
"Unknown"))
  data$U1062900 <- factor(data$U1062900,
levels=c(1.0,2.0,3.0,4.0),
labels=c("1 Person",
"2-5 Persons",
"6-9 Persons",
"10 or more Persons"))
  data$U1838600 <- factor(data$U1838600,
levels=c(1.0,2.0,3.0,4.0),
labels=c("Northeast (CT, ME, MA, NH, NJ, NY, PA, RI, VT)",
"North Central (IL, IN, IA, KS, MI, MN, MO, NE, OH, ND, SD, WI)",
"South (AL, AR, DE, DC, FL, GA, KY, LA, MD, MS, NC, OK, SC, TN , TX, VA, WV)",
"West (AK, AZ, CA, CO, HI, ID, MT, NV, NM, OR, UT, WA, WY)"))
  data$U1852300 <- factor(data$U1852300,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("Never married, cohabiting",
"Never married, not cohabiting",
"Married, spouse present",
"Married, spouse absent",
"Separated, cohabiting",
"Separated, not cohabiting",
"Divorced, cohabiting",
"Divorced, not cohabiting",
"Widowed, cohabiting",
"Widowed, not cohabiting"))
  data$U1853200 <- factor(data$U1853200,
levels=c(0.0,1.0,2.0),
labels=c("Rural",
"Urban",
"Unknown"))
  data$U3438000 <- factor(data$U3438000,
levels=c(1.0,2.0,3.0,4.0),
labels=c("Northeast (CT, ME, MA, NH, NJ, NY, PA, RI, VT)",
"North Central (IL, IN, IA, KS, MI, MN, MO, NE, OH, ND, SD, WI)",
"South (AL, AR, DE, DC, FL, GA, KY, LA, MD, MS, NC, OK, SC, TN , TX, VA, WV)",
"West (AK, AZ, CA, CO, HI, ID, MT, NV, NM, OR, UT, WA, WY)"))
  data$U3451400 <- factor(data$U3451400,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("Never married, cohabiting",
"Never married, not cohabiting",
"Married, spouse present",
"Married, spouse absent",
"Separated, cohabiting",
"Separated, not cohabiting",
"Divorced, cohabiting",
"Divorced, not cohabiting",
"Widowed, cohabiting",
"Widowed, not cohabiting"))
  data$U3453600 <- factor(data$U3453600,
levels=c(0.0,1.0,2.0),
labels=c("Rural",
"Urban",
"Unknown"))
  data$U4943100 <- factor(data$U4943100,
levels=c(1.0,2.0,3.0,4.0),
labels=c("Northeast (CT, ME, MA, NH, NJ, NY, PA, RI, VT)",
"North Central (IL, IN, IA, KS, MI, MN, MO, NE, OH, ND, SD, WI)",
"South (AL, AR, DE, DC, FL, GA, KY, LA, MD, MS, NC, OK, SC, TN , TX, VA, WV)",
"West (AK, AZ, CA, CO, HI, ID, MT, NV, NM, OR, UT, WA, WY)"))
  data$U4954500 <- factor(data$U4954500,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("Never married, cohabiting",
"Never married, not cohabiting",
"Married, spouse present",
"Married, spouse absent",
"Separated, cohabiting",
"Separated, not cohabiting",
"Divorced, cohabiting",
"Divorced, not cohabiting",
"Widowed, cohabiting",
"Widowed, not cohabiting"))
  data$U4956900 <- factor(data$U4956900,
levels=c(0.0,1.0,2.0),
labels=c("Rural",
"Urban",
"Unknown"))
return(data)
}


# If there are values not categorized they will be represented as NA

vallabels_continuous = function(data) {
data$B0004600[0.0 <= data$B0004600 & data$B0004600 <= 100.0] <- 0.0
data$B0004600[101.0 <= data$B0004600 & data$B0004600 <= 200.0] <- 101.0
data$B0004600[201.0 <= data$B0004600 & data$B0004600 <= 300.0] <- 201.0
data$B0004600[301.0 <= data$B0004600 & data$B0004600 <= 400.0] <- 301.0
data$B0004600 <- factor(data$B0004600,
levels=c(0.0,101.0,201.0,301.0),
labels=c("0 TO 100:",
"101 TO 200:",
"201 TO 300:",
"301 TO 400:"))
data$B0004700[0.0 <= data$B0004700 & data$B0004700 <= 100.0] <- 0.0
data$B0004700[101.0 <= data$B0004700 & data$B0004700 <= 200.0] <- 101.0
data$B0004700[201.0 <= data$B0004700 & data$B0004700 <= 300.0] <- 201.0
data$B0004700[301.0 <= data$B0004700 & data$B0004700 <= 400.0] <- 301.0
data$B0004700 <- factor(data$B0004700,
levels=c(0.0,101.0,201.0,301.0),
labels=c("0 TO 100:",
"101 TO 200:",
"201 TO 300:",
"301 TO 400:"))
data$B0004800[0.0 <= data$B0004800 & data$B0004800 <= 100.0] <- 0.0
data$B0004800[101.0 <= data$B0004800 & data$B0004800 <= 200.0] <- 101.0
data$B0004800[201.0 <= data$B0004800 & data$B0004800 <= 300.0] <- 201.0
data$B0004800[301.0 <= data$B0004800 & data$B0004800 <= 400.0] <- 301.0
data$B0004800 <- factor(data$B0004800,
levels=c(0.0,101.0,201.0,301.0),
labels=c("0 TO 100:",
"101 TO 200:",
"201 TO 300:",
"301 TO 400:"))
data$B0004900[0.0 <= data$B0004900 & data$B0004900 <= 100.0] <- 0.0
data$B0004900[101.0 <= data$B0004900 & data$B0004900 <= 200.0] <- 101.0
data$B0004900[201.0 <= data$B0004900 & data$B0004900 <= 300.0] <- 201.0
data$B0004900[301.0 <= data$B0004900 & data$B0004900 <= 400.0] <- 301.0
data$B0004900 <- factor(data$B0004900,
levels=c(0.0,101.0,201.0,301.0),
labels=c("0 TO 100:",
"101 TO 200:",
"201 TO 300:",
"301 TO 400:"))
data$B0005000[0.0 <= data$B0005000 & data$B0005000 <= 100.0] <- 0.0
data$B0005000[101.0 <= data$B0005000 & data$B0005000 <= 200.0] <- 101.0
data$B0005000[201.0 <= data$B0005000 & data$B0005000 <= 300.0] <- 201.0
data$B0005000[301.0 <= data$B0005000 & data$B0005000 <= 400.0] <- 301.0
data$B0005000 <- factor(data$B0005000,
levels=c(0.0,101.0,201.0,301.0),
labels=c("0 TO 100:",
"101 TO 200:",
"201 TO 300:",
"301 TO 400:"))
data$B0005100[0.0 <= data$B0005100 & data$B0005100 <= 100.0] <- 0.0
data$B0005100[101.0 <= data$B0005100 & data$B0005100 <= 200.0] <- 101.0
data$B0005100[201.0 <= data$B0005100 & data$B0005100 <= 300.0] <- 201.0
data$B0005100[301.0 <= data$B0005100 & data$B0005100 <= 400.0] <- 301.0
data$B0005100 <- factor(data$B0005100,
levels=c(0.0,101.0,201.0,301.0),
labels=c("0 TO 100:",
"101 TO 200:",
"201 TO 300:",
"301 TO 400:"))
data$B0005200[0.0 <= data$B0005200 & data$B0005200 <= 100.0] <- 0.0
data$B0005200[101.0 <= data$B0005200 & data$B0005200 <= 200.0] <- 101.0
data$B0005200[201.0 <= data$B0005200 & data$B0005200 <= 300.0] <- 201.0
data$B0005200[301.0 <= data$B0005200 & data$B0005200 <= 400.0] <- 301.0
data$B0005200 <- factor(data$B0005200,
levels=c(0.0,101.0,201.0,301.0),
labels=c("0 TO 100:",
"101 TO 200:",
"201 TO 300:",
"301 TO 400:"))
data$R0000100[1.0 <= data$R0000100 & data$R0000100 <= 999.0] <- 1.0
data$R0000100[1000.0 <= data$R0000100 & data$R0000100 <= 1999.0] <- 1000.0
data$R0000100[2000.0 <= data$R0000100 & data$R0000100 <= 2999.0] <- 2000.0
data$R0000100[3000.0 <= data$R0000100 & data$R0000100 <= 3999.0] <- 3000.0
data$R0000100[4000.0 <= data$R0000100 & data$R0000100 <= 4999.0] <- 4000.0
data$R0000100[5000.0 <= data$R0000100 & data$R0000100 <= 5999.0] <- 5000.0
data$R0000100[6000.0 <= data$R0000100 & data$R0000100 <= 6999.0] <- 6000.0
data$R0000100[7000.0 <= data$R0000100 & data$R0000100 <= 7999.0] <- 7000.0
data$R0000100[8000.0 <= data$R0000100 & data$R0000100 <= 8999.0] <- 8000.0
data$R0000100[9000.0 <= data$R0000100 & data$R0000100 <= 9999.0] <- 9000.0
data$R0000100 <- factor(data$R0000100,
levels=c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0),
labels=c("0",
"1 TO 999",
"1000 TO 1999",
"2000 TO 2999",
"3000 TO 3999",
"4000 TO 4999",
"5000 TO 5999",
"6000 TO 6999",
"7000 TO 7999",
"8000 TO 8999",
"9000 TO 9999"))
data$R0348100[18.0 <= data$R0348100 & data$R0348100 <= 99.0] <- 18.0
data$R0348100 <- factor(data$R0348100,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18 TO 99: 18+"))
data$R0348600[18.0 <= data$R0348600 & data$R0348600 <= 99.0] <- 18.0
data$R0348600 <- factor(data$R0348600,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18 TO 99: 18+"))
data$R0349800[18.0 <= data$R0349800 & data$R0349800 <= 99.0] <- 18.0
data$R0349800 <- factor(data$R0349800,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18 TO 99: 18+"))
data$R0350200[1.0 <= data$R0350200 & data$R0350200 <= 4.0] <- 1.0
data$R0350200[5.0 <= data$R0350200 & data$R0350200 <= 8.0] <- 5.0
data$R0350200[9.0 <= data$R0350200 & data$R0350200 <= 14.0] <- 9.0
data$R0350200[15.0 <= data$R0350200 & data$R0350200 <= 19.0] <- 15.0
data$R0350200[20.0 <= data$R0350200 & data$R0350200 <= 24.0] <- 20.0
data$R0350200[25.0 <= data$R0350200 & data$R0350200 <= 29.0] <- 25.0
data$R0350200[30.0 <= data$R0350200 & data$R0350200 <= 34.0] <- 30.0
data$R0350200[35.0 <= data$R0350200 & data$R0350200 <= 39.0] <- 35.0
data$R0350200[40.0 <= data$R0350200 & data$R0350200 <= 44.0] <- 40.0
data$R0350200[45.0 <= data$R0350200 & data$R0350200 <= 49.0] <- 45.0
data$R0350200[50.0 <= data$R0350200 & data$R0350200 <= 9.9999999E7] <- 50.0
data$R0350200 <- factor(data$R0350200,
levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 8",
"9 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
data$R0350400[1.0 <= data$R0350400 & data$R0350400 <= 4.0] <- 1.0
data$R0350400[5.0 <= data$R0350400 & data$R0350400 <= 8.0] <- 5.0
data$R0350400[9.0 <= data$R0350400 & data$R0350400 <= 14.0] <- 9.0
data$R0350400[15.0 <= data$R0350400 & data$R0350400 <= 19.0] <- 15.0
data$R0350400[20.0 <= data$R0350400 & data$R0350400 <= 24.0] <- 20.0
data$R0350400[25.0 <= data$R0350400 & data$R0350400 <= 29.0] <- 25.0
data$R0350400[30.0 <= data$R0350400 & data$R0350400 <= 34.0] <- 30.0
data$R0350400[35.0 <= data$R0350400 & data$R0350400 <= 39.0] <- 35.0
data$R0350400[40.0 <= data$R0350400 & data$R0350400 <= 44.0] <- 40.0
data$R0350400[45.0 <= data$R0350400 & data$R0350400 <= 49.0] <- 45.0
data$R0350400[50.0 <= data$R0350400 & data$R0350400 <= 9.9999999E7] <- 50.0
data$R0350400 <- factor(data$R0350400,
levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 8",
"9 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
data$R0350600[1.0 <= data$R0350600 & data$R0350600 <= 4.0] <- 1.0
data$R0350600[5.0 <= data$R0350600 & data$R0350600 <= 8.0] <- 5.0
data$R0350600[9.0 <= data$R0350600 & data$R0350600 <= 14.0] <- 9.0
data$R0350600[15.0 <= data$R0350600 & data$R0350600 <= 19.0] <- 15.0
data$R0350600[20.0 <= data$R0350600 & data$R0350600 <= 24.0] <- 20.0
data$R0350600[25.0 <= data$R0350600 & data$R0350600 <= 29.0] <- 25.0
data$R0350600[30.0 <= data$R0350600 & data$R0350600 <= 34.0] <- 30.0
data$R0350600[35.0 <= data$R0350600 & data$R0350600 <= 39.0] <- 35.0
data$R0350600[40.0 <= data$R0350600 & data$R0350600 <= 44.0] <- 40.0
data$R0350600[45.0 <= data$R0350600 & data$R0350600 <= 49.0] <- 45.0
data$R0350600[50.0 <= data$R0350600 & data$R0350600 <= 9.9999999E7] <- 50.0
data$R0350600 <- factor(data$R0350600,
levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 8",
"9 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
data$R2180900[18.0 <= data$R2180900 & data$R2180900 <= 99.0] <- 18.0
data$R2180900 <- factor(data$R2180900,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18 TO 99: 18+"))
data$R2181500[18.0 <= data$R2181500 & data$R2181500 <= 99.0] <- 18.0
data$R2181500 <- factor(data$R2181500,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18 TO 99: 18+"))
data$R2183200[18.0 <= data$R2183200 & data$R2183200 <= 99.0] <- 18.0
data$R2183200 <- factor(data$R2183200,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18 TO 99: 18+"))
data$R2183700[1.0 <= data$R2183700 & data$R2183700 <= 4.0] <- 1.0
data$R2183700[5.0 <= data$R2183700 & data$R2183700 <= 8.0] <- 5.0
data$R2183700[9.0 <= data$R2183700 & data$R2183700 <= 14.0] <- 9.0
data$R2183700[15.0 <= data$R2183700 & data$R2183700 <= 19.0] <- 15.0
data$R2183700[20.0 <= data$R2183700 & data$R2183700 <= 24.0] <- 20.0
data$R2183700[25.0 <= data$R2183700 & data$R2183700 <= 29.0] <- 25.0
data$R2183700[30.0 <= data$R2183700 & data$R2183700 <= 34.0] <- 30.0
data$R2183700[35.0 <= data$R2183700 & data$R2183700 <= 39.0] <- 35.0
data$R2183700[40.0 <= data$R2183700 & data$R2183700 <= 44.0] <- 40.0
data$R2183700[45.0 <= data$R2183700 & data$R2183700 <= 49.0] <- 45.0
data$R2183700[50.0 <= data$R2183700 & data$R2183700 <= 9.9999999E7] <- 50.0
data$R2183700 <- factor(data$R2183700,
levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 8",
"9 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
data$R2183900[1.0 <= data$R2183900 & data$R2183900 <= 4.0] <- 1.0
data$R2183900[5.0 <= data$R2183900 & data$R2183900 <= 8.0] <- 5.0
data$R2183900[9.0 <= data$R2183900 & data$R2183900 <= 14.0] <- 9.0
data$R2183900[15.0 <= data$R2183900 & data$R2183900 <= 19.0] <- 15.0
data$R2183900[20.0 <= data$R2183900 & data$R2183900 <= 24.0] <- 20.0
data$R2183900[25.0 <= data$R2183900 & data$R2183900 <= 29.0] <- 25.0
data$R2183900[30.0 <= data$R2183900 & data$R2183900 <= 34.0] <- 30.0
data$R2183900[35.0 <= data$R2183900 & data$R2183900 <= 39.0] <- 35.0
data$R2183900[40.0 <= data$R2183900 & data$R2183900 <= 44.0] <- 40.0
data$R2183900[45.0 <= data$R2183900 & data$R2183900 <= 49.0] <- 45.0
data$R2183900[50.0 <= data$R2183900 & data$R2183900 <= 9.9999999E7] <- 50.0
data$R2183900 <- factor(data$R2183900,
levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 8",
"9 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
data$R2184100[1.0 <= data$R2184100 & data$R2184100 <= 4.0] <- 1.0
data$R2184100[5.0 <= data$R2184100 & data$R2184100 <= 8.0] <- 5.0
data$R2184100[9.0 <= data$R2184100 & data$R2184100 <= 14.0] <- 9.0
data$R2184100[15.0 <= data$R2184100 & data$R2184100 <= 19.0] <- 15.0
data$R2184100[20.0 <= data$R2184100 & data$R2184100 <= 24.0] <- 20.0
data$R2184100[25.0 <= data$R2184100 & data$R2184100 <= 29.0] <- 25.0
data$R2184100[30.0 <= data$R2184100 & data$R2184100 <= 34.0] <- 30.0
data$R2184100[35.0 <= data$R2184100 & data$R2184100 <= 39.0] <- 35.0
data$R2184100[40.0 <= data$R2184100 & data$R2184100 <= 44.0] <- 40.0
data$R2184100[45.0 <= data$R2184100 & data$R2184100 <= 49.0] <- 45.0
data$R2184100[50.0 <= data$R2184100 & data$R2184100 <= 9.9999999E7] <- 50.0
data$R2184100 <- factor(data$R2184100,
levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 8",
"9 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
data$R3498900[18.0 <= data$R3498900 & data$R3498900 <= 99.0] <- 18.0
data$R3498900 <- factor(data$R3498900,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18 TO 99: 18+"))
data$R3499500[18.0 <= data$R3499500 & data$R3499500 <= 99.0] <- 18.0
data$R3499500 <- factor(data$R3499500,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18 TO 99: 18+"))
data$R3501100[18.0 <= data$R3501100 & data$R3501100 <= 99.0] <- 18.0
data$R3501100 <- factor(data$R3501100,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18 TO 99: 18+"))
data$R3501600[1.0 <= data$R3501600 & data$R3501600 <= 4.0] <- 1.0
data$R3501600[5.0 <= data$R3501600 & data$R3501600 <= 8.0] <- 5.0
data$R3501600[9.0 <= data$R3501600 & data$R3501600 <= 14.0] <- 9.0
data$R3501600[15.0 <= data$R3501600 & data$R3501600 <= 19.0] <- 15.0
data$R3501600[20.0 <= data$R3501600 & data$R3501600 <= 24.0] <- 20.0
data$R3501600[25.0 <= data$R3501600 & data$R3501600 <= 29.0] <- 25.0
data$R3501600[30.0 <= data$R3501600 & data$R3501600 <= 34.0] <- 30.0
data$R3501600[35.0 <= data$R3501600 & data$R3501600 <= 39.0] <- 35.0
data$R3501600[40.0 <= data$R3501600 & data$R3501600 <= 44.0] <- 40.0
data$R3501600[45.0 <= data$R3501600 & data$R3501600 <= 49.0] <- 45.0
data$R3501600[50.0 <= data$R3501600 & data$R3501600 <= 9.9999999E7] <- 50.0
data$R3501600 <- factor(data$R3501600,
levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 8",
"9 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
data$R3501800[1.0 <= data$R3501800 & data$R3501800 <= 4.0] <- 1.0
data$R3501800[5.0 <= data$R3501800 & data$R3501800 <= 8.0] <- 5.0
data$R3501800[9.0 <= data$R3501800 & data$R3501800 <= 14.0] <- 9.0
data$R3501800[15.0 <= data$R3501800 & data$R3501800 <= 19.0] <- 15.0
data$R3501800[20.0 <= data$R3501800 & data$R3501800 <= 24.0] <- 20.0
data$R3501800[25.0 <= data$R3501800 & data$R3501800 <= 29.0] <- 25.0
data$R3501800[30.0 <= data$R3501800 & data$R3501800 <= 34.0] <- 30.0
data$R3501800[35.0 <= data$R3501800 & data$R3501800 <= 39.0] <- 35.0
data$R3501800[40.0 <= data$R3501800 & data$R3501800 <= 44.0] <- 40.0
data$R3501800[45.0 <= data$R3501800 & data$R3501800 <= 49.0] <- 45.0
data$R3501800[50.0 <= data$R3501800 & data$R3501800 <= 9.9999999E7] <- 50.0
data$R3501800 <- factor(data$R3501800,
levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 8",
"9 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
data$R3502000[1.0 <= data$R3502000 & data$R3502000 <= 4.0] <- 1.0
data$R3502000[5.0 <= data$R3502000 & data$R3502000 <= 8.0] <- 5.0
data$R3502000[9.0 <= data$R3502000 & data$R3502000 <= 14.0] <- 9.0
data$R3502000[15.0 <= data$R3502000 & data$R3502000 <= 19.0] <- 15.0
data$R3502000[20.0 <= data$R3502000 & data$R3502000 <= 24.0] <- 20.0
data$R3502000[25.0 <= data$R3502000 & data$R3502000 <= 29.0] <- 25.0
data$R3502000[30.0 <= data$R3502000 & data$R3502000 <= 34.0] <- 30.0
data$R3502000[35.0 <= data$R3502000 & data$R3502000 <= 39.0] <- 35.0
data$R3502000[40.0 <= data$R3502000 & data$R3502000 <= 44.0] <- 40.0
data$R3502000[45.0 <= data$R3502000 & data$R3502000 <= 49.0] <- 45.0
data$R3502000[50.0 <= data$R3502000 & data$R3502000 <= 9.9999999E7] <- 50.0
data$R3502000 <- factor(data$R3502000,
levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 8",
"9 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
data$R4894500[18.0 <= data$R4894500 & data$R4894500 <= 99.0] <- 18.0
data$R4894500 <- factor(data$R4894500,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18 TO 99: 18+"))
data$R4895100[18.0 <= data$R4895100 & data$R4895100 <= 99.0] <- 18.0
data$R4895100 <- factor(data$R4895100,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18 TO 99: 18+"))
data$R4896800[18.0 <= data$R4896800 & data$R4896800 <= 99.0] <- 18.0
data$R4896800 <- factor(data$R4896800,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18 TO 99: 18+"))
data$R4898200[1.0 <= data$R4898200 & data$R4898200 <= 4.0] <- 1.0
data$R4898200[5.0 <= data$R4898200 & data$R4898200 <= 8.0] <- 5.0
data$R4898200[9.0 <= data$R4898200 & data$R4898200 <= 14.0] <- 9.0
data$R4898200[15.0 <= data$R4898200 & data$R4898200 <= 19.0] <- 15.0
data$R4898200[20.0 <= data$R4898200 & data$R4898200 <= 24.0] <- 20.0
data$R4898200[25.0 <= data$R4898200 & data$R4898200 <= 29.0] <- 25.0
data$R4898200[30.0 <= data$R4898200 & data$R4898200 <= 34.0] <- 30.0
data$R4898200[35.0 <= data$R4898200 & data$R4898200 <= 39.0] <- 35.0
data$R4898200[40.0 <= data$R4898200 & data$R4898200 <= 44.0] <- 40.0
data$R4898200[45.0 <= data$R4898200 & data$R4898200 <= 49.0] <- 45.0
data$R4898200[50.0 <= data$R4898200 & data$R4898200 <= 9.9999999E7] <- 50.0
data$R4898200 <- factor(data$R4898200,
levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 8",
"9 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
data$R4898400[1.0 <= data$R4898400 & data$R4898400 <= 4.0] <- 1.0
data$R4898400[5.0 <= data$R4898400 & data$R4898400 <= 8.0] <- 5.0
data$R4898400[9.0 <= data$R4898400 & data$R4898400 <= 14.0] <- 9.0
data$R4898400[15.0 <= data$R4898400 & data$R4898400 <= 19.0] <- 15.0
data$R4898400[20.0 <= data$R4898400 & data$R4898400 <= 24.0] <- 20.0
data$R4898400[25.0 <= data$R4898400 & data$R4898400 <= 29.0] <- 25.0
data$R4898400[30.0 <= data$R4898400 & data$R4898400 <= 34.0] <- 30.0
data$R4898400[35.0 <= data$R4898400 & data$R4898400 <= 39.0] <- 35.0
data$R4898400[40.0 <= data$R4898400 & data$R4898400 <= 44.0] <- 40.0
data$R4898400[45.0 <= data$R4898400 & data$R4898400 <= 49.0] <- 45.0
data$R4898400[50.0 <= data$R4898400 & data$R4898400 <= 9.9999999E7] <- 50.0
data$R4898400 <- factor(data$R4898400,
levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 8",
"9 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
data$R4898800[1.0 <= data$R4898800 & data$R4898800 <= 4.0] <- 1.0
data$R4898800[5.0 <= data$R4898800 & data$R4898800 <= 8.0] <- 5.0
data$R4898800[9.0 <= data$R4898800 & data$R4898800 <= 14.0] <- 9.0
data$R4898800[15.0 <= data$R4898800 & data$R4898800 <= 19.0] <- 15.0
data$R4898800[20.0 <= data$R4898800 & data$R4898800 <= 24.0] <- 20.0
data$R4898800[25.0 <= data$R4898800 & data$R4898800 <= 29.0] <- 25.0
data$R4898800[30.0 <= data$R4898800 & data$R4898800 <= 34.0] <- 30.0
data$R4898800[35.0 <= data$R4898800 & data$R4898800 <= 39.0] <- 35.0
data$R4898800[40.0 <= data$R4898800 & data$R4898800 <= 44.0] <- 40.0
data$R4898800[45.0 <= data$R4898800 & data$R4898800 <= 49.0] <- 45.0
data$R4898800[50.0 <= data$R4898800 & data$R4898800 <= 9.9999999E7] <- 50.0
data$R4898800 <- factor(data$R4898800,
levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 8",
"9 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
data$R6520600[18.0 <= data$R6520600 & data$R6520600 <= 99.0] <- 18.0
data$R6520600 <- factor(data$R6520600,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18 TO 99: 18+"))
data$R6522900[18.0 <= data$R6522900 & data$R6522900 <= 99.0] <- 18.0
data$R6522900 <- factor(data$R6522900,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18 TO 99: 18+"))
data$R6524300[1.0 <= data$R6524300 & data$R6524300 <= 4.0] <- 1.0
data$R6524300[5.0 <= data$R6524300 & data$R6524300 <= 8.0] <- 5.0
data$R6524300[9.0 <= data$R6524300 & data$R6524300 <= 14.0] <- 9.0
data$R6524300[15.0 <= data$R6524300 & data$R6524300 <= 19.0] <- 15.0
data$R6524300[20.0 <= data$R6524300 & data$R6524300 <= 24.0] <- 20.0
data$R6524300[25.0 <= data$R6524300 & data$R6524300 <= 29.0] <- 25.0
data$R6524300[30.0 <= data$R6524300 & data$R6524300 <= 34.0] <- 30.0
data$R6524300[35.0 <= data$R6524300 & data$R6524300 <= 39.0] <- 35.0
data$R6524300[40.0 <= data$R6524300 & data$R6524300 <= 44.0] <- 40.0
data$R6524300[45.0 <= data$R6524300 & data$R6524300 <= 49.0] <- 45.0
data$R6524300[50.0 <= data$R6524300 & data$R6524300 <= 9.9999999E7] <- 50.0
data$R6524300 <- factor(data$R6524300,
levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 8",
"9 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
data$R6524500[1.0 <= data$R6524500 & data$R6524500 <= 4.0] <- 1.0
data$R6524500[5.0 <= data$R6524500 & data$R6524500 <= 8.0] <- 5.0
data$R6524500[9.0 <= data$R6524500 & data$R6524500 <= 14.0] <- 9.0
data$R6524500[15.0 <= data$R6524500 & data$R6524500 <= 19.0] <- 15.0
data$R6524500[20.0 <= data$R6524500 & data$R6524500 <= 24.0] <- 20.0
data$R6524500[25.0 <= data$R6524500 & data$R6524500 <= 29.0] <- 25.0
data$R6524500[30.0 <= data$R6524500 & data$R6524500 <= 34.0] <- 30.0
data$R6524500[35.0 <= data$R6524500 & data$R6524500 <= 39.0] <- 35.0
data$R6524500[40.0 <= data$R6524500 & data$R6524500 <= 44.0] <- 40.0
data$R6524500[45.0 <= data$R6524500 & data$R6524500 <= 49.0] <- 45.0
data$R6524500[50.0 <= data$R6524500 & data$R6524500 <= 9.9999999E7] <- 50.0
data$R6524500 <- factor(data$R6524500,
levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 8",
"9 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
data$R6524900[1.0 <= data$R6524900 & data$R6524900 <= 4.0] <- 1.0
data$R6524900[5.0 <= data$R6524900 & data$R6524900 <= 8.0] <- 5.0
data$R6524900[9.0 <= data$R6524900 & data$R6524900 <= 14.0] <- 9.0
data$R6524900[15.0 <= data$R6524900 & data$R6524900 <= 19.0] <- 15.0
data$R6524900[20.0 <= data$R6524900 & data$R6524900 <= 24.0] <- 20.0
data$R6524900[25.0 <= data$R6524900 & data$R6524900 <= 29.0] <- 25.0
data$R6524900[30.0 <= data$R6524900 & data$R6524900 <= 34.0] <- 30.0
data$R6524900[35.0 <= data$R6524900 & data$R6524900 <= 39.0] <- 35.0
data$R6524900[40.0 <= data$R6524900 & data$R6524900 <= 44.0] <- 40.0
data$R6524900[45.0 <= data$R6524900 & data$R6524900 <= 49.0] <- 45.0
data$R6524900[50.0 <= data$R6524900 & data$R6524900 <= 9.9999999E7] <- 50.0
data$R6524900 <- factor(data$R6524900,
levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 8",
"9 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
data$R9793400[0.0 <= data$R9793400 & data$R9793400 <= 10.0] <- 0.0
data$R9793400[11.0 <= data$R9793400 & data$R9793400 <= 20.0] <- 11.0
data$R9793400[21.0 <= data$R9793400 & data$R9793400 <= 30.0] <- 21.0
data$R9793400[31.0 <= data$R9793400 & data$R9793400 <= 40.0] <- 31.0
data$R9793400[41.0 <= data$R9793400 & data$R9793400 <= 50.0] <- 41.0
data$R9793400 <- factor(data$R9793400,
levels=c(0.0,11.0,21.0,31.0,41.0),
labels=c("0 TO 10",
"11 TO 20",
"21 TO 30",
"31 TO 40",
"41 TO 50"))
data$R9793500[0.0 <= data$R9793500 & data$R9793500 <= 10.0] <- 0.0
data$R9793500[11.0 <= data$R9793500 & data$R9793500 <= 20.0] <- 11.0
data$R9793500[21.0 <= data$R9793500 & data$R9793500 <= 30.0] <- 21.0
data$R9793500[31.0 <= data$R9793500 & data$R9793500 <= 40.0] <- 31.0
data$R9793500[41.0 <= data$R9793500 & data$R9793500 <= 50.0] <- 41.0
data$R9793500 <- factor(data$R9793500,
levels=c(0.0,11.0,21.0,31.0,41.0),
labels=c("0 TO 10",
"11 TO 20",
"21 TO 30",
"31 TO 40",
"41 TO 50"))
data$R9793600[0.0 <= data$R9793600 & data$R9793600 <= 10.0] <- 0.0
data$R9793600[11.0 <= data$R9793600 & data$R9793600 <= 20.0] <- 11.0
data$R9793600[21.0 <= data$R9793600 & data$R9793600 <= 30.0] <- 21.0
data$R9793600[31.0 <= data$R9793600 & data$R9793600 <= 40.0] <- 31.0
data$R9793600[41.0 <= data$R9793600 & data$R9793600 <= 50.0] <- 41.0
data$R9793600 <- factor(data$R9793600,
levels=c(0.0,11.0,21.0,31.0,41.0),
labels=c("0 TO 10",
"11 TO 20",
"21 TO 30",
"31 TO 40",
"41 TO 50"))
data$R9793700[0.0 <= data$R9793700 & data$R9793700 <= 10.0] <- 0.0
data$R9793700[11.0 <= data$R9793700 & data$R9793700 <= 20.0] <- 11.0
data$R9793700[21.0 <= data$R9793700 & data$R9793700 <= 30.0] <- 21.0
data$R9793700[31.0 <= data$R9793700 & data$R9793700 <= 40.0] <- 31.0
data$R9793700[41.0 <= data$R9793700 & data$R9793700 <= 50.0] <- 41.0
data$R9793700 <- factor(data$R9793700,
levels=c(0.0,11.0,21.0,31.0,41.0),
labels=c("0 TO 10",
"11 TO 20",
"21 TO 30",
"31 TO 40",
"41 TO 50"))
data$R9793800[1.0 <= data$R9793800 & data$R9793800 <= 100.0] <- 1.0
data$R9793800[101.0 <= data$R9793800 & data$R9793800 <= 200.0] <- 101.0
data$R9793800[201.0 <= data$R9793800 & data$R9793800 <= 300.0] <- 201.0
data$R9793800[301.0 <= data$R9793800 & data$R9793800 <= 400.0] <- 301.0
data$R9793800[401.0 <= data$R9793800 & data$R9793800 <= 500.0] <- 401.0
data$R9793800[501.0 <= data$R9793800 & data$R9793800 <= 600.0] <- 501.0
data$R9793800[601.0 <= data$R9793800 & data$R9793800 <= 700.0] <- 601.0
data$R9793800[701.0 <= data$R9793800 & data$R9793800 <= 800.0] <- 701.0
data$R9793800 <- factor(data$R9793800,
levels=c(1.0,101.0,201.0,301.0,401.0,501.0,601.0,701.0),
labels=c("1 TO 100",
"101 TO 200",
"201 TO 300",
"301 TO 400",
"401 TO 500",
"501 TO 600",
"601 TO 700",
"701 TO 800"))
data$R9793900[1.0 <= data$R9793900 & data$R9793900 <= 100.0] <- 1.0
data$R9793900[101.0 <= data$R9793900 & data$R9793900 <= 200.0] <- 101.0
data$R9793900[201.0 <= data$R9793900 & data$R9793900 <= 300.0] <- 201.0
data$R9793900[301.0 <= data$R9793900 & data$R9793900 <= 400.0] <- 301.0
data$R9793900[401.0 <= data$R9793900 & data$R9793900 <= 500.0] <- 401.0
data$R9793900[501.0 <= data$R9793900 & data$R9793900 <= 600.0] <- 501.0
data$R9793900[601.0 <= data$R9793900 & data$R9793900 <= 700.0] <- 601.0
data$R9793900[701.0 <= data$R9793900 & data$R9793900 <= 800.0] <- 701.0
data$R9793900 <- factor(data$R9793900,
levels=c(1.0,101.0,201.0,301.0,401.0,501.0,601.0,701.0),
labels=c("1 TO 100",
"101 TO 200",
"201 TO 300",
"301 TO 400",
"401 TO 500",
"501 TO 600",
"601 TO 700",
"701 TO 800"))
data$R9794001[1980.0 <= data$R9794001 & data$R9794001 <= 1997.0] <- 1980.0
data$R9794001 <- factor(data$R9794001,
levels=c(1980.0,1998.0,1999.0,2000.0,2001.0,2002.0,2003.0,2004.0),
labels=c("1980 TO 1997: 1980 to 1997",
"1998",
"1999",
"2000",
"2001",
"2002",
"2003",
"2004"))
data$R9871900[0.0 <= data$R9871900 & data$R9871900 <= 99.0] <- 0.0
data$R9871900[100.0 <= data$R9871900 & data$R9871900 <= 199.0] <- 100.0
data$R9871900[200.0 <= data$R9871900 & data$R9871900 <= 299.0] <- 200.0
data$R9871900[300.0 <= data$R9871900 & data$R9871900 <= 399.0] <- 300.0
data$R9871900[400.0 <= data$R9871900 & data$R9871900 <= 500.0] <- 400.0
data$R9871900 <- factor(data$R9871900,
levels=c(-9.0,-8.0,-7.0,-6.0,0.0,100.0,200.0,300.0,400.0),
labels=c("-9: No courses with valid credits and grades",
"-8: Pre-High school only",
"-7: No credits earned",
"-6: No courses taken",
"0 TO 99: 0 to .99",
"100 TO 199: 1.00 to 1.99",
"200 TO 299: 2.00 to 2.99",
"300 TO 399: 3.00 to 3.99",
"400 TO 500: 4.00 to 5.00"))
data$S1192700[18.0 <= data$S1192700 & data$S1192700 <= 99.0] <- 18.0
data$S1192700 <- factor(data$S1192700,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18 TO 99: 18+"))
data$S1193300[18.0 <= data$S1193300 & data$S1193300 <= 99.0] <- 18.0
data$S1193300 <- factor(data$S1193300,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18 TO 99: 18+"))
data$S1202000[21.0 <= data$S1202000 & data$S1202000 <= 99.0] <- 21.0
data$S1202000 <- factor(data$S1202000,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,21.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18",
"19",
"20",
"21 TO 99: 21+"))
data$S1203700[1.0 <= data$S1203700 & data$S1203700 <= 4.0] <- 1.0
data$S1203700[5.0 <= data$S1203700 & data$S1203700 <= 8.0] <- 5.0
data$S1203700[9.0 <= data$S1203700 & data$S1203700 <= 14.0] <- 9.0
data$S1203700[15.0 <= data$S1203700 & data$S1203700 <= 19.0] <- 15.0
data$S1203700[20.0 <= data$S1203700 & data$S1203700 <= 24.0] <- 20.0
data$S1203700[25.0 <= data$S1203700 & data$S1203700 <= 29.0] <- 25.0
data$S1203700[30.0 <= data$S1203700 & data$S1203700 <= 34.0] <- 30.0
data$S1203700[35.0 <= data$S1203700 & data$S1203700 <= 39.0] <- 35.0
data$S1203700[40.0 <= data$S1203700 & data$S1203700 <= 44.0] <- 40.0
data$S1203700[45.0 <= data$S1203700 & data$S1203700 <= 49.0] <- 45.0
data$S1203700[50.0 <= data$S1203700 & data$S1203700 <= 9.9999999E7] <- 50.0
data$S1203700 <- factor(data$S1203700,
levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 8",
"9 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
data$S1204000[1.0 <= data$S1204000 & data$S1204000 <= 4.0] <- 1.0
data$S1204000[5.0 <= data$S1204000 & data$S1204000 <= 8.0] <- 5.0
data$S1204000[9.0 <= data$S1204000 & data$S1204000 <= 14.0] <- 9.0
data$S1204000[15.0 <= data$S1204000 & data$S1204000 <= 19.0] <- 15.0
data$S1204000[20.0 <= data$S1204000 & data$S1204000 <= 24.0] <- 20.0
data$S1204000[25.0 <= data$S1204000 & data$S1204000 <= 29.0] <- 25.0
data$S1204000[30.0 <= data$S1204000 & data$S1204000 <= 34.0] <- 30.0
data$S1204000[35.0 <= data$S1204000 & data$S1204000 <= 39.0] <- 35.0
data$S1204000[40.0 <= data$S1204000 & data$S1204000 <= 44.0] <- 40.0
data$S1204000[45.0 <= data$S1204000 & data$S1204000 <= 49.0] <- 45.0
data$S1204000[50.0 <= data$S1204000 & data$S1204000 <= 9.9999999E7] <- 50.0
data$S1204000 <- factor(data$S1204000,
levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 8",
"9 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
data$S1204400[1.0 <= data$S1204400 & data$S1204400 <= 4.0] <- 1.0
data$S1204400[5.0 <= data$S1204400 & data$S1204400 <= 8.0] <- 5.0
data$S1204400[9.0 <= data$S1204400 & data$S1204400 <= 14.0] <- 9.0
data$S1204400[15.0 <= data$S1204400 & data$S1204400 <= 19.0] <- 15.0
data$S1204400[20.0 <= data$S1204400 & data$S1204400 <= 24.0] <- 20.0
data$S1204400[25.0 <= data$S1204400 & data$S1204400 <= 29.0] <- 25.0
data$S1204400[30.0 <= data$S1204400 & data$S1204400 <= 34.0] <- 30.0
data$S1204400[35.0 <= data$S1204400 & data$S1204400 <= 39.0] <- 35.0
data$S1204400[40.0 <= data$S1204400 & data$S1204400 <= 44.0] <- 40.0
data$S1204400[45.0 <= data$S1204400 & data$S1204400 <= 49.0] <- 45.0
data$S1204400[50.0 <= data$S1204400 & data$S1204400 <= 9.9999999E7] <- 50.0
data$S1204400 <- factor(data$S1204400,
levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 8",
"9 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
data$S3274100[18.0 <= data$S3274100 & data$S3274100 <= 99.0] <- 18.0
data$S3274100 <- factor(data$S3274100,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18 TO 99: 18+"))
data$S3274700[18.0 <= data$S3274700 & data$S3274700 <= 99.0] <- 18.0
data$S3274700 <- factor(data$S3274700,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18 TO 99: 18+"))
data$S3284800[23.0 <= data$S3284800 & data$S3284800 <= 999.0] <- 23.0
data$S3284800 <- factor(data$S3284800,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,21.0,22.0,23.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18",
"19",
"20",
"21",
"22",
"23 TO 999: 23+"))
data$S3286500[1.0 <= data$S3286500 & data$S3286500 <= 4.0] <- 1.0
data$S3286500[5.0 <= data$S3286500 & data$S3286500 <= 8.0] <- 5.0
data$S3286500[9.0 <= data$S3286500 & data$S3286500 <= 14.0] <- 9.0
data$S3286500[15.0 <= data$S3286500 & data$S3286500 <= 19.0] <- 15.0
data$S3286500[20.0 <= data$S3286500 & data$S3286500 <= 24.0] <- 20.0
data$S3286500[25.0 <= data$S3286500 & data$S3286500 <= 29.0] <- 25.0
data$S3286500[30.0 <= data$S3286500 & data$S3286500 <= 34.0] <- 30.0
data$S3286500[35.0 <= data$S3286500 & data$S3286500 <= 39.0] <- 35.0
data$S3286500[40.0 <= data$S3286500 & data$S3286500 <= 44.0] <- 40.0
data$S3286500[45.0 <= data$S3286500 & data$S3286500 <= 49.0] <- 45.0
data$S3286500[50.0 <= data$S3286500 & data$S3286500 <= 9.9999999E7] <- 50.0
data$S3286500 <- factor(data$S3286500,
levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 8",
"9 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
data$S3286800[1.0 <= data$S3286800 & data$S3286800 <= 4.0] <- 1.0
data$S3286800[5.0 <= data$S3286800 & data$S3286800 <= 8.0] <- 5.0
data$S3286800[9.0 <= data$S3286800 & data$S3286800 <= 14.0] <- 9.0
data$S3286800[15.0 <= data$S3286800 & data$S3286800 <= 19.0] <- 15.0
data$S3286800[20.0 <= data$S3286800 & data$S3286800 <= 24.0] <- 20.0
data$S3286800[25.0 <= data$S3286800 & data$S3286800 <= 29.0] <- 25.0
data$S3286800[30.0 <= data$S3286800 & data$S3286800 <= 34.0] <- 30.0
data$S3286800[35.0 <= data$S3286800 & data$S3286800 <= 39.0] <- 35.0
data$S3286800[40.0 <= data$S3286800 & data$S3286800 <= 44.0] <- 40.0
data$S3286800[45.0 <= data$S3286800 & data$S3286800 <= 49.0] <- 45.0
data$S3286800[50.0 <= data$S3286800 & data$S3286800 <= 9.9999999E7] <- 50.0
data$S3286800 <- factor(data$S3286800,
levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 8",
"9 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
data$S3287200[1.0 <= data$S3287200 & data$S3287200 <= 4.0] <- 1.0
data$S3287200[5.0 <= data$S3287200 & data$S3287200 <= 8.0] <- 5.0
data$S3287200[9.0 <= data$S3287200 & data$S3287200 <= 14.0] <- 9.0
data$S3287200[15.0 <= data$S3287200 & data$S3287200 <= 19.0] <- 15.0
data$S3287200[20.0 <= data$S3287200 & data$S3287200 <= 24.0] <- 20.0
data$S3287200[25.0 <= data$S3287200 & data$S3287200 <= 29.0] <- 25.0
data$S3287200[30.0 <= data$S3287200 & data$S3287200 <= 34.0] <- 30.0
data$S3287200[35.0 <= data$S3287200 & data$S3287200 <= 39.0] <- 35.0
data$S3287200[40.0 <= data$S3287200 & data$S3287200 <= 44.0] <- 40.0
data$S3287200[45.0 <= data$S3287200 & data$S3287200 <= 49.0] <- 45.0
data$S3287200[50.0 <= data$S3287200 & data$S3287200 <= 9.9999999E7] <- 50.0
data$S3287200 <- factor(data$S3287200,
levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 8",
"9 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
data$S4897000[18.0 <= data$S4897000 & data$S4897000 <= 99.0] <- 18.0
data$S4897000 <- factor(data$S4897000,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18 TO 99: 18+"))
data$S4897600[18.0 <= data$S4897600 & data$S4897600 <= 99.0] <- 18.0
data$S4897600 <- factor(data$S4897600,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18 TO 99: 18+"))
data$S4907700[24.0 <= data$S4907700 & data$S4907700 <= 999.0] <- 24.0
data$S4907700 <- factor(data$S4907700,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,21.0,22.0,23.0,24.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18",
"19",
"20",
"21",
"22",
"23",
"24 TO 999"))
data$S4909400[1.0 <= data$S4909400 & data$S4909400 <= 4.0] <- 1.0
data$S4909400[5.0 <= data$S4909400 & data$S4909400 <= 8.0] <- 5.0
data$S4909400[9.0 <= data$S4909400 & data$S4909400 <= 14.0] <- 9.0
data$S4909400[15.0 <= data$S4909400 & data$S4909400 <= 19.0] <- 15.0
data$S4909400[20.0 <= data$S4909400 & data$S4909400 <= 24.0] <- 20.0
data$S4909400[25.0 <= data$S4909400 & data$S4909400 <= 29.0] <- 25.0
data$S4909400[30.0 <= data$S4909400 & data$S4909400 <= 34.0] <- 30.0
data$S4909400[35.0 <= data$S4909400 & data$S4909400 <= 39.0] <- 35.0
data$S4909400[40.0 <= data$S4909400 & data$S4909400 <= 44.0] <- 40.0
data$S4909400[45.0 <= data$S4909400 & data$S4909400 <= 49.0] <- 45.0
data$S4909400[50.0 <= data$S4909400 & data$S4909400 <= 9.9999999E7] <- 50.0
data$S4909400 <- factor(data$S4909400,
levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 8",
"9 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
data$S4909700[1.0 <= data$S4909700 & data$S4909700 <= 4.0] <- 1.0
data$S4909700[5.0 <= data$S4909700 & data$S4909700 <= 8.0] <- 5.0
data$S4909700[9.0 <= data$S4909700 & data$S4909700 <= 14.0] <- 9.0
data$S4909700[15.0 <= data$S4909700 & data$S4909700 <= 19.0] <- 15.0
data$S4909700[20.0 <= data$S4909700 & data$S4909700 <= 24.0] <- 20.0
data$S4909700[25.0 <= data$S4909700 & data$S4909700 <= 29.0] <- 25.0
data$S4909700[30.0 <= data$S4909700 & data$S4909700 <= 34.0] <- 30.0
data$S4909700[35.0 <= data$S4909700 & data$S4909700 <= 39.0] <- 35.0
data$S4909700[40.0 <= data$S4909700 & data$S4909700 <= 44.0] <- 40.0
data$S4909700[45.0 <= data$S4909700 & data$S4909700 <= 49.0] <- 45.0
data$S4909700[50.0 <= data$S4909700 & data$S4909700 <= 9.9999999E7] <- 50.0
data$S4909700 <- factor(data$S4909700,
levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 8",
"9 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
data$S4910100[1.0 <= data$S4910100 & data$S4910100 <= 4.0] <- 1.0
data$S4910100[5.0 <= data$S4910100 & data$S4910100 <= 8.0] <- 5.0
data$S4910100[9.0 <= data$S4910100 & data$S4910100 <= 14.0] <- 9.0
data$S4910100[15.0 <= data$S4910100 & data$S4910100 <= 19.0] <- 15.0
data$S4910100[20.0 <= data$S4910100 & data$S4910100 <= 24.0] <- 20.0
data$S4910100[25.0 <= data$S4910100 & data$S4910100 <= 29.0] <- 25.0
data$S4910100[30.0 <= data$S4910100 & data$S4910100 <= 34.0] <- 30.0
data$S4910100[35.0 <= data$S4910100 & data$S4910100 <= 39.0] <- 35.0
data$S4910100[40.0 <= data$S4910100 & data$S4910100 <= 44.0] <- 40.0
data$S4910100[45.0 <= data$S4910100 & data$S4910100 <= 49.0] <- 45.0
data$S4910100[50.0 <= data$S4910100 & data$S4910100 <= 9.9999999E7] <- 50.0
data$S4910100 <- factor(data$S4910100,
levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 8",
"9 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
data$S6636300[18.0 <= data$S6636300 & data$S6636300 <= 99.0] <- 18.0
data$S6636300 <- factor(data$S6636300,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18 TO 99: 18+"))
data$S6637000[18.0 <= data$S6637000 & data$S6637000 <= 99.0] <- 18.0
data$S6637000 <- factor(data$S6637000,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18 TO 99: 18+"))
data$S6647400[25.0 <= data$S6647400 & data$S6647400 <= 99.0] <- 25.0
data$S6647400 <- factor(data$S6647400,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,21.0,22.0,23.0,24.0,25.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18",
"19",
"20",
"21",
"22",
"23",
"24",
"25 TO 99: 25+"))
data$S6649100[1.0 <= data$S6649100 & data$S6649100 <= 4.0] <- 1.0
data$S6649100[5.0 <= data$S6649100 & data$S6649100 <= 8.0] <- 5.0
data$S6649100[9.0 <= data$S6649100 & data$S6649100 <= 14.0] <- 9.0
data$S6649100[15.0 <= data$S6649100 & data$S6649100 <= 19.0] <- 15.0
data$S6649100[20.0 <= data$S6649100 & data$S6649100 <= 24.0] <- 20.0
data$S6649100[25.0 <= data$S6649100 & data$S6649100 <= 29.0] <- 25.0
data$S6649100[30.0 <= data$S6649100 & data$S6649100 <= 34.0] <- 30.0
data$S6649100[35.0 <= data$S6649100 & data$S6649100 <= 39.0] <- 35.0
data$S6649100[40.0 <= data$S6649100 & data$S6649100 <= 44.0] <- 40.0
data$S6649100[45.0 <= data$S6649100 & data$S6649100 <= 49.0] <- 45.0
data$S6649100[50.0 <= data$S6649100 & data$S6649100 <= 9.9999999E7] <- 50.0
data$S6649100 <- factor(data$S6649100,
levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 8",
"9 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
data$S6649400[1.0 <= data$S6649400 & data$S6649400 <= 4.0] <- 1.0
data$S6649400[5.0 <= data$S6649400 & data$S6649400 <= 8.0] <- 5.0
data$S6649400[9.0 <= data$S6649400 & data$S6649400 <= 14.0] <- 9.0
data$S6649400[15.0 <= data$S6649400 & data$S6649400 <= 19.0] <- 15.0
data$S6649400[20.0 <= data$S6649400 & data$S6649400 <= 24.0] <- 20.0
data$S6649400[25.0 <= data$S6649400 & data$S6649400 <= 29.0] <- 25.0
data$S6649400[30.0 <= data$S6649400 & data$S6649400 <= 34.0] <- 30.0
data$S6649400[35.0 <= data$S6649400 & data$S6649400 <= 39.0] <- 35.0
data$S6649400[40.0 <= data$S6649400 & data$S6649400 <= 44.0] <- 40.0
data$S6649400[45.0 <= data$S6649400 & data$S6649400 <= 49.0] <- 45.0
data$S6649400[50.0 <= data$S6649400 & data$S6649400 <= 9.9999999E7] <- 50.0
data$S6649400 <- factor(data$S6649400,
levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 8",
"9 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
data$S6649800[1.0 <= data$S6649800 & data$S6649800 <= 4.0] <- 1.0
data$S6649800[5.0 <= data$S6649800 & data$S6649800 <= 8.0] <- 5.0
data$S6649800[9.0 <= data$S6649800 & data$S6649800 <= 14.0] <- 9.0
data$S6649800[15.0 <= data$S6649800 & data$S6649800 <= 19.0] <- 15.0
data$S6649800[20.0 <= data$S6649800 & data$S6649800 <= 24.0] <- 20.0
data$S6649800[25.0 <= data$S6649800 & data$S6649800 <= 29.0] <- 25.0
data$S6649800[30.0 <= data$S6649800 & data$S6649800 <= 34.0] <- 30.0
data$S6649800[35.0 <= data$S6649800 & data$S6649800 <= 39.0] <- 35.0
data$S6649800[40.0 <= data$S6649800 & data$S6649800 <= 44.0] <- 40.0
data$S6649800[45.0 <= data$S6649800 & data$S6649800 <= 49.0] <- 45.0
data$S6649800[50.0 <= data$S6649800 & data$S6649800 <= 9.9999999E7] <- 50.0
data$S6649800 <- factor(data$S6649800,
levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 8",
"9 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
data$S8628400[18.0 <= data$S8628400 & data$S8628400 <= 99.0] <- 18.0
data$S8628400 <- factor(data$S8628400,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18 TO 99: 18+"))
data$S8629100[18.0 <= data$S8629100 & data$S8629100 <= 99.0] <- 18.0
data$S8629100 <- factor(data$S8629100,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18 TO 99: 18+"))
data$S8633900[25.0 <= data$S8633900 & data$S8633900 <= 99.0] <- 25.0
data$S8633900 <- factor(data$S8633900,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,21.0,22.0,23.0,24.0,25.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18",
"19",
"20",
"21",
"22",
"23",
"24",
"25 TO 99: 25+"))
data$S8634900[1.0 <= data$S8634900 & data$S8634900 <= 4.0] <- 1.0
data$S8634900[5.0 <= data$S8634900 & data$S8634900 <= 8.0] <- 5.0
data$S8634900[9.0 <= data$S8634900 & data$S8634900 <= 14.0] <- 9.0
data$S8634900[15.0 <= data$S8634900 & data$S8634900 <= 19.0] <- 15.0
data$S8634900[20.0 <= data$S8634900 & data$S8634900 <= 24.0] <- 20.0
data$S8634900[25.0 <= data$S8634900 & data$S8634900 <= 29.0] <- 25.0
data$S8634900[30.0 <= data$S8634900 & data$S8634900 <= 34.0] <- 30.0
data$S8634900[35.0 <= data$S8634900 & data$S8634900 <= 39.0] <- 35.0
data$S8634900[40.0 <= data$S8634900 & data$S8634900 <= 44.0] <- 40.0
data$S8634900[45.0 <= data$S8634900 & data$S8634900 <= 49.0] <- 45.0
data$S8634900[50.0 <= data$S8634900 & data$S8634900 <= 9.9999999E7] <- 50.0
data$S8634900 <- factor(data$S8634900,
levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 8",
"9 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
data$S8635300[1.0 <= data$S8635300 & data$S8635300 <= 4.0] <- 1.0
data$S8635300[5.0 <= data$S8635300 & data$S8635300 <= 8.0] <- 5.0
data$S8635300[9.0 <= data$S8635300 & data$S8635300 <= 14.0] <- 9.0
data$S8635300[15.0 <= data$S8635300 & data$S8635300 <= 19.0] <- 15.0
data$S8635300[20.0 <= data$S8635300 & data$S8635300 <= 24.0] <- 20.0
data$S8635300[25.0 <= data$S8635300 & data$S8635300 <= 29.0] <- 25.0
data$S8635300[30.0 <= data$S8635300 & data$S8635300 <= 34.0] <- 30.0
data$S8635300[35.0 <= data$S8635300 & data$S8635300 <= 39.0] <- 35.0
data$S8635300[40.0 <= data$S8635300 & data$S8635300 <= 44.0] <- 40.0
data$S8635300[45.0 <= data$S8635300 & data$S8635300 <= 49.0] <- 45.0
data$S8635300[50.0 <= data$S8635300 & data$S8635300 <= 9.9999999E7] <- 50.0
data$S8635300 <- factor(data$S8635300,
levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 8",
"9 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
data$T1014300[18.0 <= data$T1014300 & data$T1014300 <= 99.0] <- 18.0
data$T1014300 <- factor(data$T1014300,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18 TO 99: 18+"))
data$T1019200[25.0 <= data$T1019200 & data$T1019200 <= 99.0] <- 25.0
data$T1019200 <- factor(data$T1019200,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,21.0,22.0,23.0,24.0,25.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18",
"19",
"20",
"21",
"22",
"23",
"24",
"25 TO 99: 25+"))
data$T1020200[1.0 <= data$T1020200 & data$T1020200 <= 4.0] <- 1.0
data$T1020200[5.0 <= data$T1020200 & data$T1020200 <= 8.0] <- 5.0
data$T1020200[9.0 <= data$T1020200 & data$T1020200 <= 14.0] <- 9.0
data$T1020200[15.0 <= data$T1020200 & data$T1020200 <= 19.0] <- 15.0
data$T1020200[20.0 <= data$T1020200 & data$T1020200 <= 24.0] <- 20.0
data$T1020200[25.0 <= data$T1020200 & data$T1020200 <= 29.0] <- 25.0
data$T1020200[30.0 <= data$T1020200 & data$T1020200 <= 34.0] <- 30.0
data$T1020200[35.0 <= data$T1020200 & data$T1020200 <= 39.0] <- 35.0
data$T1020200[40.0 <= data$T1020200 & data$T1020200 <= 44.0] <- 40.0
data$T1020200[45.0 <= data$T1020200 & data$T1020200 <= 49.0] <- 45.0
data$T1020200[50.0 <= data$T1020200 & data$T1020200 <= 9.9999999E7] <- 50.0
data$T1020200 <- factor(data$T1020200,
levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 8",
"9 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
data$T1020600[1.0 <= data$T1020600 & data$T1020600 <= 4.0] <- 1.0
data$T1020600[5.0 <= data$T1020600 & data$T1020600 <= 8.0] <- 5.0
data$T1020600[9.0 <= data$T1020600 & data$T1020600 <= 14.0] <- 9.0
data$T1020600[15.0 <= data$T1020600 & data$T1020600 <= 19.0] <- 15.0
data$T1020600[20.0 <= data$T1020600 & data$T1020600 <= 24.0] <- 20.0
data$T1020600[25.0 <= data$T1020600 & data$T1020600 <= 29.0] <- 25.0
data$T1020600[30.0 <= data$T1020600 & data$T1020600 <= 34.0] <- 30.0
data$T1020600[35.0 <= data$T1020600 & data$T1020600 <= 39.0] <- 35.0
data$T1020600[40.0 <= data$T1020600 & data$T1020600 <= 44.0] <- 40.0
data$T1020600[45.0 <= data$T1020600 & data$T1020600 <= 49.0] <- 45.0
data$T1020600[50.0 <= data$T1020600 & data$T1020600 <= 9.9999999E7] <- 50.0
data$T1020600 <- factor(data$T1020600,
levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 8",
"9 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
data$T3111400[18.0 <= data$T3111400 & data$T3111400 <= 99.0] <- 18.0
data$T3111400 <- factor(data$T3111400,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18 TO 99: 18+"))
data$T3116800[25.0 <= data$T3116800 & data$T3116800 <= 99.0] <- 25.0
data$T3116800 <- factor(data$T3116800,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,21.0,22.0,23.0,24.0,25.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18",
"19",
"20",
"21",
"22",
"23",
"24",
"25 TO 99: 25+"))
data$T3117800[1.0 <= data$T3117800 & data$T3117800 <= 4.0] <- 1.0
data$T3117800[5.0 <= data$T3117800 & data$T3117800 <= 8.0] <- 5.0
data$T3117800[9.0 <= data$T3117800 & data$T3117800 <= 14.0] <- 9.0
data$T3117800[15.0 <= data$T3117800 & data$T3117800 <= 19.0] <- 15.0
data$T3117800[20.0 <= data$T3117800 & data$T3117800 <= 24.0] <- 20.0
data$T3117800[25.0 <= data$T3117800 & data$T3117800 <= 29.0] <- 25.0
data$T3117800[30.0 <= data$T3117800 & data$T3117800 <= 34.0] <- 30.0
data$T3117800[35.0 <= data$T3117800 & data$T3117800 <= 39.0] <- 35.0
data$T3117800[40.0 <= data$T3117800 & data$T3117800 <= 44.0] <- 40.0
data$T3117800[45.0 <= data$T3117800 & data$T3117800 <= 49.0] <- 45.0
data$T3117800[50.0 <= data$T3117800 & data$T3117800 <= 9.9999999E7] <- 50.0
data$T3117800 <- factor(data$T3117800,
levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 8",
"9 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
data$T3118200[1.0 <= data$T3118200 & data$T3118200 <= 4.0] <- 1.0
data$T3118200[5.0 <= data$T3118200 & data$T3118200 <= 8.0] <- 5.0
data$T3118200[9.0 <= data$T3118200 & data$T3118200 <= 14.0] <- 9.0
data$T3118200[15.0 <= data$T3118200 & data$T3118200 <= 19.0] <- 15.0
data$T3118200[20.0 <= data$T3118200 & data$T3118200 <= 24.0] <- 20.0
data$T3118200[25.0 <= data$T3118200 & data$T3118200 <= 29.0] <- 25.0
data$T3118200[30.0 <= data$T3118200 & data$T3118200 <= 34.0] <- 30.0
data$T3118200[35.0 <= data$T3118200 & data$T3118200 <= 39.0] <- 35.0
data$T3118200[40.0 <= data$T3118200 & data$T3118200 <= 44.0] <- 40.0
data$T3118200[45.0 <= data$T3118200 & data$T3118200 <= 49.0] <- 45.0
data$T3118200[50.0 <= data$T3118200 & data$T3118200 <= 9.9999999E7] <- 50.0
data$T3118200 <- factor(data$T3118200,
levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 8",
"9 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
data$T4528000[25.0 <= data$T4528000 & data$T4528000 <= 99.0] <- 25.0
data$T4528000 <- factor(data$T4528000,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,21.0,22.0,23.0,24.0,25.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18",
"19",
"20",
"21",
"22",
"23",
"24",
"25 TO 99: 25+"))
data$T4529000[1.0 <= data$T4529000 & data$T4529000 <= 4.0] <- 1.0
data$T4529000[5.0 <= data$T4529000 & data$T4529000 <= 8.0] <- 5.0
data$T4529000[9.0 <= data$T4529000 & data$T4529000 <= 14.0] <- 9.0
data$T4529000[15.0 <= data$T4529000 & data$T4529000 <= 19.0] <- 15.0
data$T4529000[20.0 <= data$T4529000 & data$T4529000 <= 24.0] <- 20.0
data$T4529000[25.0 <= data$T4529000 & data$T4529000 <= 29.0] <- 25.0
data$T4529000[30.0 <= data$T4529000 & data$T4529000 <= 34.0] <- 30.0
data$T4529000[35.0 <= data$T4529000 & data$T4529000 <= 39.0] <- 35.0
data$T4529000[40.0 <= data$T4529000 & data$T4529000 <= 44.0] <- 40.0
data$T4529000[45.0 <= data$T4529000 & data$T4529000 <= 49.0] <- 45.0
data$T4529000[50.0 <= data$T4529000 & data$T4529000 <= 9.9999999E7] <- 50.0
data$T4529000 <- factor(data$T4529000,
levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 8",
"9 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
data$T4529400[1.0 <= data$T4529400 & data$T4529400 <= 4.0] <- 1.0
data$T4529400[5.0 <= data$T4529400 & data$T4529400 <= 8.0] <- 5.0
data$T4529400[9.0 <= data$T4529400 & data$T4529400 <= 14.0] <- 9.0
data$T4529400[15.0 <= data$T4529400 & data$T4529400 <= 19.0] <- 15.0
data$T4529400[20.0 <= data$T4529400 & data$T4529400 <= 24.0] <- 20.0
data$T4529400[25.0 <= data$T4529400 & data$T4529400 <= 29.0] <- 25.0
data$T4529400[30.0 <= data$T4529400 & data$T4529400 <= 34.0] <- 30.0
data$T4529400[35.0 <= data$T4529400 & data$T4529400 <= 39.0] <- 35.0
data$T4529400[40.0 <= data$T4529400 & data$T4529400 <= 44.0] <- 40.0
data$T4529400[45.0 <= data$T4529400 & data$T4529400 <= 49.0] <- 45.0
data$T4529400[50.0 <= data$T4529400 & data$T4529400 <= 9.9999999E7] <- 50.0
data$T4529400 <- factor(data$T4529400,
levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 8",
"9 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
data$T6176700[25.0 <= data$T6176700 & data$T6176700 <= 99.0] <- 25.0
data$T6176700 <- factor(data$T6176700,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,21.0,22.0,23.0,24.0,25.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18",
"19",
"20",
"21",
"22",
"23",
"24",
"25 TO 99: 25+"))
data$T6177700[1.0 <= data$T6177700 & data$T6177700 <= 4.0] <- 1.0
data$T6177700[5.0 <= data$T6177700 & data$T6177700 <= 8.0] <- 5.0
data$T6177700[9.0 <= data$T6177700 & data$T6177700 <= 14.0] <- 9.0
data$T6177700[15.0 <= data$T6177700 & data$T6177700 <= 19.0] <- 15.0
data$T6177700[20.0 <= data$T6177700 & data$T6177700 <= 24.0] <- 20.0
data$T6177700[25.0 <= data$T6177700 & data$T6177700 <= 29.0] <- 25.0
data$T6177700[30.0 <= data$T6177700 & data$T6177700 <= 34.0] <- 30.0
data$T6177700[35.0 <= data$T6177700 & data$T6177700 <= 39.0] <- 35.0
data$T6177700[40.0 <= data$T6177700 & data$T6177700 <= 44.0] <- 40.0
data$T6177700[45.0 <= data$T6177700 & data$T6177700 <= 49.0] <- 45.0
data$T6177700[50.0 <= data$T6177700 & data$T6177700 <= 9.9999999E7] <- 50.0
data$T6177700 <- factor(data$T6177700,
levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 8",
"9 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
data$T6178100[1.0 <= data$T6178100 & data$T6178100 <= 4.0] <- 1.0
data$T6178100[5.0 <= data$T6178100 & data$T6178100 <= 8.0] <- 5.0
data$T6178100[9.0 <= data$T6178100 & data$T6178100 <= 14.0] <- 9.0
data$T6178100[15.0 <= data$T6178100 & data$T6178100 <= 19.0] <- 15.0
data$T6178100[20.0 <= data$T6178100 & data$T6178100 <= 24.0] <- 20.0
data$T6178100[25.0 <= data$T6178100 & data$T6178100 <= 29.0] <- 25.0
data$T6178100[30.0 <= data$T6178100 & data$T6178100 <= 34.0] <- 30.0
data$T6178100[35.0 <= data$T6178100 & data$T6178100 <= 39.0] <- 35.0
data$T6178100[40.0 <= data$T6178100 & data$T6178100 <= 44.0] <- 40.0
data$T6178100[45.0 <= data$T6178100 & data$T6178100 <= 49.0] <- 45.0
data$T6178100[50.0 <= data$T6178100 & data$T6178100 <= 9.9999999E7] <- 50.0
data$T6178100 <- factor(data$T6178100,
levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 8",
"9 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
data$T7670000[25.0 <= data$T7670000 & data$T7670000 <= 99.0] <- 25.0
data$T7670000 <- factor(data$T7670000,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,21.0,22.0,23.0,24.0,25.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18",
"19",
"20",
"21",
"22",
"23",
"24",
"25 TO 99: 25+"))
data$T7670900[1.0 <= data$T7670900 & data$T7670900 <= 4.0] <- 1.0
data$T7670900[5.0 <= data$T7670900 & data$T7670900 <= 8.0] <- 5.0
data$T7670900[9.0 <= data$T7670900 & data$T7670900 <= 14.0] <- 9.0
data$T7670900[15.0 <= data$T7670900 & data$T7670900 <= 19.0] <- 15.0
data$T7670900[20.0 <= data$T7670900 & data$T7670900 <= 24.0] <- 20.0
data$T7670900[25.0 <= data$T7670900 & data$T7670900 <= 29.0] <- 25.0
data$T7670900[30.0 <= data$T7670900 & data$T7670900 <= 34.0] <- 30.0
data$T7670900[35.0 <= data$T7670900 & data$T7670900 <= 39.0] <- 35.0
data$T7670900[40.0 <= data$T7670900 & data$T7670900 <= 44.0] <- 40.0
data$T7670900[45.0 <= data$T7670900 & data$T7670900 <= 49.0] <- 45.0
data$T7670900[50.0 <= data$T7670900 & data$T7670900 <= 9.9999999E7] <- 50.0
data$T7670900 <- factor(data$T7670900,
levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 8",
"9 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
data$T7671300[1.0 <= data$T7671300 & data$T7671300 <= 4.0] <- 1.0
data$T7671300[5.0 <= data$T7671300 & data$T7671300 <= 8.0] <- 5.0
data$T7671300[9.0 <= data$T7671300 & data$T7671300 <= 14.0] <- 9.0
data$T7671300[15.0 <= data$T7671300 & data$T7671300 <= 19.0] <- 15.0
data$T7671300[20.0 <= data$T7671300 & data$T7671300 <= 24.0] <- 20.0
data$T7671300[25.0 <= data$T7671300 & data$T7671300 <= 29.0] <- 25.0
data$T7671300[30.0 <= data$T7671300 & data$T7671300 <= 34.0] <- 30.0
data$T7671300[35.0 <= data$T7671300 & data$T7671300 <= 39.0] <- 35.0
data$T7671300[40.0 <= data$T7671300 & data$T7671300 <= 44.0] <- 40.0
data$T7671300[45.0 <= data$T7671300 & data$T7671300 <= 49.0] <- 45.0
data$T7671300[50.0 <= data$T7671300 & data$T7671300 <= 9.9999999E7] <- 50.0
data$T7671300 <- factor(data$T7671300,
levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 8",
"9 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
data$T9068300[18.0 <= data$T9068300 & data$T9068300 <= 99.0] <- 18.0
data$T9068300 <- factor(data$T9068300,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18 TO 99: 18+"))
data$T9068400[1.0 <= data$T9068400 & data$T9068400 <= 4.0] <- 1.0
data$T9068400[5.0 <= data$T9068400 & data$T9068400 <= 8.0] <- 5.0
data$T9068400[9.0 <= data$T9068400 & data$T9068400 <= 14.0] <- 9.0
data$T9068400[15.0 <= data$T9068400 & data$T9068400 <= 19.0] <- 15.0
data$T9068400[20.0 <= data$T9068400 & data$T9068400 <= 24.0] <- 20.0
data$T9068400[25.0 <= data$T9068400 & data$T9068400 <= 29.0] <- 25.0
data$T9068400[30.0 <= data$T9068400 & data$T9068400 <= 34.0] <- 30.0
data$T9068400[35.0 <= data$T9068400 & data$T9068400 <= 39.0] <- 35.0
data$T9068400[40.0 <= data$T9068400 & data$T9068400 <= 44.0] <- 40.0
data$T9068400[45.0 <= data$T9068400 & data$T9068400 <= 49.0] <- 45.0
data$T9068400[50.0 <= data$T9068400 & data$T9068400 <= 9.9999999E7] <- 50.0
data$T9068400 <- factor(data$T9068400,
levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 8",
"9 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
data$U1062700[18.0 <= data$U1062700 & data$U1062700 <= 99.0] <- 18.0
data$U1062700 <- factor(data$U1062700,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18 TO 99: 18+"))
data$U1062800[1.0 <= data$U1062800 & data$U1062800 <= 4.0] <- 1.0
data$U1062800[5.0 <= data$U1062800 & data$U1062800 <= 8.0] <- 5.0
data$U1062800[9.0 <= data$U1062800 & data$U1062800 <= 14.0] <- 9.0
data$U1062800[15.0 <= data$U1062800 & data$U1062800 <= 19.0] <- 15.0
data$U1062800[20.0 <= data$U1062800 & data$U1062800 <= 24.0] <- 20.0
data$U1062800[25.0 <= data$U1062800 & data$U1062800 <= 29.0] <- 25.0
data$U1062800[30.0 <= data$U1062800 & data$U1062800 <= 34.0] <- 30.0
data$U1062800[35.0 <= data$U1062800 & data$U1062800 <= 39.0] <- 35.0
data$U1062800[40.0 <= data$U1062800 & data$U1062800 <= 44.0] <- 40.0
data$U1062800[45.0 <= data$U1062800 & data$U1062800 <= 49.0] <- 45.0
data$U1062800[50.0 <= data$U1062800 & data$U1062800 <= 9.9999999E7] <- 50.0
data$U1062800 <- factor(data$U1062800,
levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 8",
"9 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
return(data)
}

varlabels <- c("PSTRAN_ANYDEGREE L1",
"PSTRAN_ANYDEGREE L2",
"PSTRAN_ANYDEGREE L3",
"PSTRAN_ANYDEGREE L4",
"PSTRAN_ANYDEGREE L5",
"PSTRAN_ANYDEGREE L6",
"PSTRAN_ANYDEGREE L7",
"PSTRAN_GPA L1",
"PSTRAN_GPA L2",
"PSTRAN_GPA L3",
"PSTRAN_GPA L4",
"PSTRAN_GPA L5",
"PSTRAN_GPA L6",
"PSTRAN_GPA L7",
"PUBID - YTH ID CODE 1997",
"AGE PUBERTY BEG 1997",
"AGE 1ST MENSTRUAL PRD? 1997",
"AGE 1ST TIME HAD SEX? 1997",
"# SEX PART EVER HAD? 1997",
"EST # SEX PART R EVER HAD 1997",
"# SEX PART LAST 12 MOS 1997",
"EST # SEX PART LAST 12 MOS 1997",
"# TIMES SEX IN LAST 12 MOS 1997",
"EST # TIMES SEX IN LAST 12 MOS 1997",
"KEY!SEX (SYMBOL) 1997",
"KEY!BDATE M/Y (SYMBOL) 1997",
"KEY!BDATE M/Y (SYMBOL) 1997",
"KEY!RACE (SYMBOL) 1997",
"CV_CENSUS_REGION 1997",
"CV_MARSTAT 1997",
"CV_URBAN-RURAL 1997",
"CV_SAMPLE_TYPE 1997",
"KEY!RACE_ETHNICITY (SYMBOL) 1997",
"AGE PUBERTY BEG 1998",
"AGE 1ST MENSTRUAL PRD? 1998",
"AGE 1ST TIME HAD SEX? 1998",
"# SEX PART EVER HAD? 1998",
"EST # SEX PART R EVER HAD 1998",
"# SEX PART SDLI? 1998",
"EST # SEX PART SDLI? 1998",
"# TIMES SEX SDLI? 1998",
"EST # TIMES SEX SDLI? 1998",
"CV_CENSUS_REGION 1998",
"CV_MARSTAT 1998",
"CV_URBAN-RURAL 1998",
"AGE PUBERTY BEG 1999",
"AGE 1ST MENSTRUAL PRD? 1999",
"AGE 1ST TIME HAD SEX? 1999",
"# SEX PART EVER HAD? 1999",
"EST # SEX PART R EVER HAD 1999",
"# SEX PART SDLI? 1999",
"EST # SEX PART SDLI? 1999",
"# TIMES SEX SDLI? 1999",
"EST # TIMES SEX SDLI? 1999",
"CV_CENSUS_REGION 1999",
"CV_MARSTAT 1999",
"CV_URBAN-RURAL 1999",
"AGE PUBERTY BEG 2000",
"AGE 1ST MENSTRUAL PRD? 2000",
"AGE 1ST TIME HAD SEX? 2000",
"# SEX PART EVER HAD? 2000",
"EST # SEX PART R EVER HAD 2000",
"# SEX PART SDLI? 2000",
"EST # SEX PART SDLI? 2000",
"# TIMES SEX SDLI? 2000",
"EST # TIMES SEX SDLI? 2000",
"CV_CENSUS_REGION 2000",
"CV_MARSTAT 2000",
"CV_URBAN-RURAL 2000",
"AGE PUBERTY BEG 2001",
"AGE 1ST TIME HAD SEX? 2001",
"# SEX PART EVER HAD? 2001",
"EST # SEX PART R EVER HAD 2001",
"# SEX PART SDLI? 2001",
"EST # SEX PART SDLI? 2001",
"# TIMES SEX SDLI? 2001",
"EST # TIMES SEX SDLI? 2001",
"CV_CENSUS_REGION 2001",
"CV_MARSTAT 2001",
"CV_URBAN-RURAL 2001",
"TRANS_ACT_COMP HSTR",
"TRANS_ACT_ENG HSTR",
"TRANS_ACT_MATH HSTR",
"TRANS_ACT_READ HSTR",
"TRANS_SAT_VERBAL HSTR",
"TRANS_SAT_MATH HSTR",
"TRANS_SAT_DATE HSTR",
"TRANS_SAT_DATE HSTR",
"TRANS CRD GPA OVERALL HSTR",
"AGE PUBERTY BEG 2002",
"AGE 1ST MENSTRUAL PRD? 2002",
"AGE 1ST TIME HAD SEX? 2002",
"# SEX PART EVER HAD? 2002",
"EST # SEX PART R EVER HAD 2002",
"CHK R GIVE VALID RESP MAX PARTNERS 2002",
"# SEX PART SDLI? 2002",
"EST # SEX PART SDLI? 2002",
"# TIMES SEX SDLI? 2002",
"EST # TIMES SEX SDLI? 2002",
"CV_CENSUS_REGION 2002",
"CV_MARSTAT 2002",
"CV_URBAN-RURAL 2002",
"CV_CENSUS_REGION 2003",
"CV_MARSTAT 2003",
"CV_URBAN-RURAL 2003",
"AGE PUBERTY BEG 2003",
"AGE 1ST MENSTRUAL PRD? 2003",
"AGE 1ST TIME HAD SEX? 2003",
"# SEX PART EVER HAD? 2003",
"EST # SEX PART R EVER HAD 2003",
"CHK R GIVE VALID RESP MAX PARTNERS 2003",
"# SEX PART SDLI? 2003",
"EST # SEX PART SDLI? 2003",
"# TIMES SEX SDLI? 2003",
"EST # TIMES SEX SDLI? 2003",
"CV_CENSUS_REGION 2004",
"CV_MARSTAT 2004",
"CV_URBAN-RURAL 2004",
"AGE PUBERTY BEG 2004",
"AGE 1ST MENSTRUAL PRD? 2004",
"AGE 1ST TIME HAD SEX? 2004",
"# SEX PART EVER HAD? 2004",
"EST # SEX PART R EVER HAD 2004",
"CHK R GIVE VALID RESP MAX PARTNERS 2004",
"# SEX PART SDLI? 2004",
"EST # SEX PART SDLI? 2004",
"# TIMES SEX SDLI? 2004",
"EST # TIMES SEX SDLI? 2004",
"CV_CENSUS_REGION 2005",
"CV_MARSTAT 2005",
"CV_URBAN-RURAL 2005",
"AGE PUBERTY BEG 2005",
"AGE 1ST MENSTRUAL PRD? 2005",
"AGE 1ST TIME HAD SEX? 2005",
"# SEX PART EVER HAD? 2005",
"EST # SEX PART R EVER HAD 2005",
"CHK R GIVE VALID RESP MAX PARTNERS 2005",
"# SEX PART SDLI? 2005",
"EST # SEX PART SDLI? 2005",
"# TIMES SEX SDLI? 2005",
"EST # TIMES SEX SDLI? 2005",
"CV_CENSUS_REGION 2006",
"CV_MARSTAT 2006",
"CV_URBAN-RURAL 2006",
"AGE PUBERTY BEG 2006",
"AGE 1ST MENSTRUAL PRD? 2006",
"AGE 1ST TIME HAD SEX? 2006",
"# SEX PART SDLI? 2006",
"EST # SEX PART SDLI? 2006",
"# TIMES SEX SDLI? 2006",
"EST # TIMES SEX SDLI? 2006",
"CV_CENSUS_REGION 2007",
"CV_MARSTAT 2007",
"CV_URBAN-RURAL 2007",
"AGE PUBERTY BEG 2007",
"AGE 1ST TIME HAD SEX? 2007",
"# SEX PART SDLI? 2007",
"EST # SEX PART SDLI? 2007",
"# TIMES SEX SDLI? 2007",
"EST # TIMES SEX SDLI? 2007",
"CV_CENSUS_REGION 2008",
"CV_MARSTAT 2008",
"CV_URBAN-RURAL 2008",
"AGE PUBERTY BEG 2008",
"AGE 1ST TIME HAD SEX? 2008",
"# SEX PART SDLI? 2008",
"EST # SEX PART SDLI? 2008",
"# TIMES SEX SDLI? 2008",
"EST # TIMES SEX SDLI? 2008",
"CV_CENSUS_REGION 2009",
"CV_MARSTAT 2009",
"CV_URBAN-RURAL 2009",
"AGE 1ST TIME HAD SEX? 2009",
"# SEX PART SDLI? 2009",
"EST # SEX PART SDLI? 2009",
"# TIMES SEX SDLI? 2009",
"EST # TIMES SEX SDLI? 2009",
"CV_CENSUS_REGION 2010",
"CV_MARSTAT 2010",
"CV_URBAN-RURAL 2010",
"AGE 1ST TIME HAD SEX? 2010",
"# SEX PART SDLI? 2010",
"EST # SEX PART SDLI? 2010",
"# TIMES SEX SDLI? 2010",
"EST # TIMES SEX SDLI? 2010",
"CV_CENSUS_REGION 2011",
"CV_MARSTAT 2011",
"CV_URBAN-RURAL 2011",
"AGE 1ST TIME HAD SEX? 2011",
"# SEX PART SDLI? 2011",
"EST # SEX PART SDLI? 2011",
"# TIMES SEX SDLI? 2011",
"EST # TIMES SEX SDLI? 2011",
"CV_CENSUS_REGION 2013",
"CV_MARSTAT 2013",
"CV_URBAN-RURAL 2013",
"AGE 1ST TIME HAD SEX? 2013",
"NUMBER OF SEX PARTNERS IN PAST 12 MONTHS 2013",
"NUM OF SEX PARTNERS IN PAST 12 MONTHS - EST 2013",
"CV_CENSUS_REGION 2015",
"CV_MARSTAT 2015",
"CV_URBAN-RURAL 2015",
"AGE 1ST TIME HAD SEX? 2015",
"NUMBER OF SEX PARTNERS IN PAST 12 MONTHS 2015",
"NUM OF SEX PARTNERS IN PAST 12 MONTHS - EST 2015",
"CV_CENSUS_REGION 2017",
"CV_MARSTAT 2017",
"CV_URBAN-RURAL 2017",
"CV_CENSUS_REGION 2019",
"CV_MARSTAT 2019",
"CV_URBAN-RURAL 2019",
"CV_CENSUS_REGION 2021",
"CV_MARSTAT 2021",
"CV_URBAN-RURAL 2021"
)


# Use qnames rather than rnums

qnames = function(data) {
names(data) <- c("PSTRAN_ANYDEGREE.01_PSTR",
"PSTRAN_ANYDEGREE.02_PSTR",
"PSTRAN_ANYDEGREE.03_PSTR",
"PSTRAN_ANYDEGREE.04_PSTR",
"PSTRAN_ANYDEGREE.05_PSTR",
"PSTRAN_ANYDEGREE.06_PSTR",
"PSTRAN_ANYDEGREE.07_PSTR",
"PSTRAN_GPA.01_PSTR",
"PSTRAN_GPA.02_PSTR",
"PSTRAN_GPA.03_PSTR",
"PSTRAN_GPA.04_PSTR",
"PSTRAN_GPA.05_PSTR",
"PSTRAN_GPA.06_PSTR",
"PSTRAN_GPA.07_PSTR",
"PUBID_1997",
"YSAQ-285_1997",
"YSAQ-290_1997",
"YSAQ-300_1997",
"YSAQ-304_1997",
"YSAQ-305_1997",
"YSAQ-306_1997",
"YSAQ-307_1997",
"YSAQ-308_1997",
"YSAQ-309_1997",
"KEY_SEX_1997",
"KEY_BDATE_M_1997",
"KEY_BDATE_Y_1997",
"KEY_RACE_1997",
"CV_CENSUS_REGION_1997",
"CV_MARSTAT_1997",
"CV_URBAN-RURAL_1997",
"CV_SAMPLE_TYPE_1997",
"KEY_RACE_ETHNICITY_1997",
"YSAQ-285_1998",
"YSAQ-290_1998",
"YSAQ-300_1998",
"YSAQ-304_1998",
"YSAQ-305_1998",
"YSAQ-306_1998",
"YSAQ-307_1998",
"YSAQ-308_1998",
"YSAQ-309_1998",
"CV_CENSUS_REGION_1998",
"CV_MARSTAT_1998",
"CV_URBAN-RURAL_1998",
"YSAQ-285_1999",
"YSAQ-290_1999",
"YSAQ-300_1999",
"YSAQ-304_1999",
"YSAQ-305_1999",
"YSAQ-306_1999",
"YSAQ-307_1999",
"YSAQ-308_1999",
"YSAQ-309_1999",
"CV_CENSUS_REGION_1999",
"CV_MARSTAT_1999",
"CV_URBAN-RURAL_1999",
"YSAQ-285_2000",
"YSAQ-290_2000",
"YSAQ-300_2000",
"YSAQ-304_2000",
"YSAQ-305_2000",
"YSAQ-306_2000",
"YSAQ-307_2000",
"YSAQ-308_2000",
"YSAQ-309_2000",
"CV_CENSUS_REGION_2000",
"CV_MARSTAT_2000",
"CV_URBAN-RURAL_2000",
"YSAQ-285_2001",
"YSAQ-300_2001",
"YSAQ-304_2001",
"YSAQ-305_2001",
"YSAQ-306_2001",
"YSAQ-307_2001",
"YSAQ-308_2001",
"YSAQ-309_2001",
"CV_CENSUS_REGION_2001",
"CV_MARSTAT_2001",
"CV_URBAN-RURAL_2001",
"TRANS_ACT_COMP_HSTR",
"TRANS_ACT_ENG_HSTR",
"TRANS_ACT_MATH_HSTR",
"TRANS_ACT_READ_HSTR",
"TRANS_SAT_VERBAL_HSTR",
"TRANS_SAT_MATH_HSTR",
"TRANS_SAT_DATE~M_HSTR",
"TRANS_SAT_DATE~Y_HSTR",
"TRANS_CRD_GPA_OVERALL_HSTR",
"YSAQ2-285_2002",
"YSAQ2-290_2002",
"YSAQ2-300_2002",
"YSAQ2-304_2002",
"YSAQ2-305_2002",
"YSAQ2-305A_2002",
"YSAQ2-306_2002",
"YSAQ2-307_2002",
"YSAQ2-308_2002",
"YSAQ2-309_2002",
"CV_CENSUS_REGION_2002",
"CV_MARSTAT_2002",
"CV_URBAN-RURAL_2002",
"CV_CENSUS_REGION_2003",
"CV_MARSTAT_2003",
"CV_URBAN-RURAL_2003",
"YSAQ2-285_2003",
"YSAQ2-290_2003",
"YSAQ2-300_2003",
"YSAQ2-304_2003",
"YSAQ2-305_2003",
"YSAQ2-305A_2003",
"YSAQ2-306_2003",
"YSAQ2-307_2003",
"YSAQ2-308_2003",
"YSAQ2-309_2003",
"CV_CENSUS_REGION_2004",
"CV_MARSTAT_2004",
"CV_URBAN-RURAL_2004",
"YSAQ2-285_2004",
"YSAQ2-290_2004",
"YSAQ2-300_2004",
"YSAQ2-304_2004",
"YSAQ2-305_2004",
"YSAQ2-305A_2004",
"YSAQ2-306_2004",
"YSAQ2-307_2004",
"YSAQ2-308_2004",
"YSAQ2-309_2004",
"CV_CENSUS_REGION_2005",
"CV_MARSTAT_2005",
"CV_URBAN-RURAL_2005",
"YSAQ2-285_2005",
"YSAQ2-290_2005",
"YSAQ2-300_2005",
"YSAQ2-304_2005",
"YSAQ2-305_2005",
"YSAQ2-305A_2005",
"YSAQ2-306_2005",
"YSAQ2-307_2005",
"YSAQ2-308_2005",
"YSAQ2-309_2005",
"CV_CENSUS_REGION_2006",
"CV_MARSTAT_2006",
"CV_URBAN-RURAL_2006",
"YSAQ2-285_2006",
"YSAQ2-290_2006",
"YSAQ2-300_2006",
"YSAQ2-306_2006",
"YSAQ2-307_2006",
"YSAQ2-308_2006",
"YSAQ2-309_2006",
"CV_CENSUS_REGION_2007",
"CV_MARSTAT_2007",
"CV_URBAN-RURAL_2007",
"YSAQ2-285_2007",
"YSAQ2-300_2007",
"YSAQ2-306_2007",
"YSAQ2-307_2007",
"YSAQ2-308_2007",
"YSAQ2-309_2007",
"CV_CENSUS_REGION_2008",
"CV_MARSTAT_2008",
"CV_URBAN-RURAL_2008",
"YSAQ2-285_2008",
"YSAQ2-300_2008",
"YSAQ2-306_2008",
"YSAQ2-307_2008",
"YSAQ2-308_2008",
"YSAQ2-309_2008",
"CV_CENSUS_REGION_2009",
"CV_MARSTAT_2009",
"CV_URBAN-RURAL_2009",
"YSAQ2-300_2009",
"YSAQ2-306_2009",
"YSAQ2-307_2009",
"YSAQ2-308_2009",
"YSAQ2-309_2009",
"CV_CENSUS_REGION_2010",
"CV_MARSTAT_2010",
"CV_URBAN-RURAL_2010",
"YSAQ2-300_2010",
"YSAQ2-306_2010",
"YSAQ2-307_2010",
"YSAQ2-308_2010",
"YSAQ2-309_2010",
"CV_CENSUS_REGION_2011",
"CV_MARSTAT_2011",
"CV_URBAN-RURAL_2011",
"YSAQ2-300_2011",
"YSAQ2-306_2011",
"YSAQ2-307_2011",
"YSAQ2-308_2011",
"YSAQ2-309_2011",
"CV_CENSUS_REGION_2013",
"CV_MARSTAT_2013",
"CV_URBAN-RURAL_2013",
"YSAQ2-300_2013",
"YSAQ2-306_2013",
"YSAQ2-307_2013",
"CV_CENSUS_REGION_2015",
"CV_MARSTAT_2015",
"CV_URBAN-RURAL_2015",
"YSAQ2-300_2015",
"YSAQ2-306_2015",
"YSAQ2-307_2015",
"CV_CENSUS_REGION_2017",
"CV_MARSTAT_2017",
"CV_URBAN-RURAL_2017",
"CV_CENSUS_REGION_2019",
"CV_MARSTAT_2019",
"CV_URBAN-RURAL_2019",
"CV_CENSUS_REGION_2021",
"CV_MARSTAT_2021",
"CV_URBAN-RURAL_2021")
return(data)
}


#********************************************************************************************************

# Remove the '#' before the following line to create a data file called "categories" with value labels.
#categories <- vallabels(new_data)

# Remove the '#' before the following lines to rename variables using Qnames instead of Reference Numbers
#new_data <- qnames(new_data)
#categories <- qnames(categories)

# Produce summaries for the raw (uncategorized) data file
summary(new_data)

# Remove the '#' before the following lines to produce summaries for the "categories" data file.
#categories <- vallabels(new_data)
#categories <- vallabels_continuous(new_data)
#summary(categories)

#************************************************************************************************************

