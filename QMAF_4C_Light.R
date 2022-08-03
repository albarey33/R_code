rm(list=ls())
ls()
#q()

getwd()
#setwd("Y:/Information Technology/DATA_Reports/PPL/PPL_raw_Data_Files")
#m <- read.csv(file="Button_for_List_data_20190328.csv", header=T, sep=",")
#names <- unique(m, incomparables = FALSE)
#head(names)

# install.packages('dplyr')
# library(dplyr)

##########################
#####  4C 320 - 319
setwd("Y:/Information Technology/DATA_Reports/QMAF/QMAF_DATA_Adults_Pediatrics_320_Columns")
#getwd()

QMAF4C_2016Q2 <- data.frame(read.csv(file="Patient_Filter_data_2016_06_June.csv",header=T,check.names=F,sep=",",stringsAsFactors = FALSE)[,-263])
QMAF4C_2016Q3 <- data.frame(read.csv(file="Patient_Filter_data_2016_09_September.csv",header=T,check.names=F,sep=",",stringsAsFactors = FALSE)[,-263])
QMAF4C_2016Q4 <- data.frame(read.csv(file="Patient_Filter_data_2016_12_December.csv",header=T,check.names=F,sep=",",stringsAsFactors = FALSE)[,-263])
QMAF4C_2017Q1 <- data.frame(read.csv(file="Patient_Filter_data_2017_03_March.csv",header=T,check.names=F,sep=",",stringsAsFactors = FALSE)[,-263])
QMAF4C_2017Q2 <- data.frame(read.csv(file="Patient_Filter_data_2017_06_June.csv",header=T,check.names=F,sep=",",stringsAsFactors = FALSE)[,-263])
QMAF4C_2017Q3 <- data.frame(read.csv(file="Patient_Filter_data_2017_09_Sept.csv",header=T,check.names=F,sep=",",stringsAsFactors = FALSE)[,-263])
QMAF4C_2017Q4 <- data.frame(read.csv(file="Patient_Filter_data_2017_12_December.csv",header=T,check.names=F,sep=",",stringsAsFactors = FALSE)[,-263])
QMAF4C_2018Q1 <- data.frame(read.csv(file="Patient_Filter_data_2018_03_March.csv",header=T,check.names=F,sep=",",stringsAsFactors = FALSE)[,-263])
QMAF4C_2018Q2 <- data.frame(read.csv(file="Patient_Filter_data_2018_06_June.csv",header=T,check.names=F,sep=",",stringsAsFactors = FALSE)[,-263])
QMAF4C_2018Q3 <- data.frame(read.csv(file="Patient_Filter_data_2018_09_September.csv",header=T,check.names=F,sep=",",stringsAsFactors = FALSE))
QMAF4C_2018Q4 <- data.frame(read.csv(file="Patient_Filter_data_2018_12_December.csv",header=T,check.names=F,sep=",",stringsAsFactors = FALSE))


QMAF4C_320 <- rbind(
QMAF4C_2016Q2,
QMAF4C_2016Q3,
QMAF4C_2016Q4,
QMAF4C_2017Q1,
QMAF4C_2017Q2,
QMAF4C_2017Q3,
QMAF4C_2017Q4,
QMAF4C_2018Q1,
QMAF4C_2018Q2
)

QMAF4C_319 <- rbind(
QMAF4C_2018Q3,
QMAF4C_2018Q4
)

names(QMAF4C_320) <- names(QMAF4C_319)

QMAF_4C <- rbind(QMAF4C_320,QMAF4C_319)

rm(
QMAF4C_2016Q2,
QMAF4C_2016Q3,
QMAF4C_2016Q4,
QMAF4C_2017Q1,
QMAF4C_2017Q2,
QMAF4C_2017Q3,
QMAF4C_2017Q4,
QMAF4C_2018Q1,
QMAF4C_2018Q2,
QMAF4C_2018Q3,
QMAF4C_2018Q4,
QMAF4C_320,
QMAF4C_319
)

#str(QMAF4C)
#dim(QMAF4C)

QMAF_4C <- QMAF_4C[,c(
244,318,219,171,178,193,192,21,20,14,13,221,220,222,17,16,112,265,301,300,295,294,293,292,297,296,299,298,11,10,12,71,70,
271,270,195,196,194,277,276,23,22,25,24,183,182,2,1,202,201,273,272,291,290,54,45,56,46,55,47,58,57,53,167,311,113,226,
225,188,187,190,189,206,208,207,209,210,211,69,68,67,66,217,216,289,288,3,4,44,42,65,63,74,72,6,5,8,7,19,18,269,268)]




names(QMAF_4C) <- c(
"Network Name",
"Year Month Date",
"Current MID",
"Name",
"DOB",
"Sex",
"Age",
"AYA Num",
"AYA Den",
"AMR Num",
"AMR Den",
"MMA_Num_50",
"MMA Den",
"MMA_Num_75",
"APA Num",
"APA Den",
"Well Child Visit with Developmental and Behavioral Screening",
"Well Child Visit with Developmental and Behavioral Screening ",
"WCV Num",
"WCV Den",
"WCV12-21 Num",
"WCV12-21 Den",
"W15 Num",
"W15 Den",
"WCV3-6 Num",
"WCV3-6 Den",
"WCV7-11 Num",
"WCV7-11 Den",
"AMM EAPT Num",
"AMM Den",
"AMM ECPT Num",
"COB Num",
"COB Den",
"SSD_Num",
"SSD_Den",
"FUH_NUM_30",
"FUH_Num_7",
"FUH_Den",
"UOD_Num",
"UOD_Den",
"AdolDep Num",
"AdolDep Den",
"AdolRisk Num",
"AdolRisk Den",
"DevAut Num",
"DevAut Den",
"ABCD Num",
"ABCD Den",
"Hear Num",
"Hear Den",
"SchoolAge Num",
"SchoolAge Den",
"Vis Num",
"Vis Den",
"BMI 52 Num",
"BMI 52 Den",
"BMI 54 Num",
"BMI 54 Den",
"BMI 53 Num",
"BMI 53 Den",
"BMI Num",
"BMI Den",
"BMI 51 Num",
"BMI 51 Den",
"Postpartum Depression Screening ",
"Postpartum Depression Screening",
"MatDep Num",
"MatDep Den",
"Diabetes A1c Num",
"Diabetes A1c Den",
"Diabetes Nephro Num",
"Diabetes Nephro Den",
"ImmA1 Num",
"ImmA Den",
"ImmA2 Num",
"ImmC10 Num",
"ImmC3 Num",
"ImmC Den",
"CHF ReAdmits Num",
"CHF ReAdmits Den",
"CHF Num",
"CHF Den",
"LVF Num",
"LVF Den",
"Varn Num",
"Varn Den",
"ADV Den",
"ADV Num",
"BCS Num",
"BCS Den",
"CCS Num",
"CCS Den",
"COL Num",
"COL Den",
"AGS Num",
"AGS Den",
"ALS Num",
"ALS Den",
"APM Num",
"APM Den",
"SES Num",
"SES Den")


#str(QMAF_4C[,c(1:100)])

#ls()
#str(QMAF_4C)
###########################
###########################
###########################
################
				
### Check columns classes ###   # https://stackoverflow.com/questions/22772279/converting-multiple-columns-from-character-to-numeric-format-in-r
# sapply(QMAF_4C, class)

#  COLUMNS CLASS > INTEGER 
# QMAF_4C[cols.int] <- as.integer(gsub(",","",QMAF_4C[cols.int]))   # Base Method Long Time

col_comint <- c(5,18,25,26,32,33,36,37,40,41,44,45,69,71,74,75,78,79,81,82,85,87,
88,91,98,99,118,119,123,124,126,127,141,153,189,190,199,209,217)

# To replace the thousand commas "," for ""
QMAF_4C[,col_comint] <- lapply(QMAF_4C[,col_comint],function(QMAF_4C){as.integer(gsub(",","",QMAF_4C))})

rm(QMAF_4C2,
QMAF_4C_2016Q2,
QMAF_4C_2016Q3,
QMAF_4C_2016Q4,
QMAF_4C_2017Q1,
QMAF_4C_2017Q2,
QMAF_4C_2017Q3,
QMAF_4C_2017Q4,
QMAF_4C_2018Q1,
QMAF_4C_2018Q2,
QMAF_4C_2018Q3,
col_comint)

ls()


#cols.int <- c(5,18)
#,19,20,21,24,25,26,27,28,31,32,33,35,36,37,39,40,41,43,44,45,
#47,48,51,53,54,56,58,59,60,61,63,64,65,66,68,69,70,71,73,74,75,77,78,79,80,81,82,84,85,86,
#87,88,91,93,95,97,98,99,102,103,105,106,108,109,110,113,114,115,118,119,121,123,124,126,
#127,129,130,131,132,137,138,139,140,141,144,145,146,147,148,149,152,153,155,156,157,158,
#159,161,163,164,165,167,169,170,171,173,175,176,177,180,181,182,185,186,188,189,190,191,
#192,198,199,203,206,208,209,212,213,214,215,216,217)
#QMAF_4C[cols.int] <- sapply(QMAF_4C[cols.int],as.integer)

# warnings()

#  COLUMNS CLASS > NUMERIC
#cols.num <- c(
#11,13,16,22,23,29,34,38,42,46,49,50,52,55,57,62,67,72,76,83,89,90,92,94,96,100,101,104,107,
#111,112,116,117,120,122,125,128,133,134,135,136,142,143,150,151,154,160,162,166,168,172,174,
#178,179,183,184,187,194,195,202,218,219)
#QMAF_4C[cols.num] <- sapply(QMAF_4C[cols.num],as.numeric)
#warnings()

# ls()
# summary(QMAF_4C)
str(QMAF_4C[,c(191:219)])
# dim(QMAF_4C)
# head(QMAF_4C)

