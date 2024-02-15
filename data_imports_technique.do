clear

help log

log using import_data_log

* ways we can import data to stata and other inbuilt data usage.

* 1. inbuilt data usage

use "/Applications/Stata/auto.dta"

* clear data from the environment
clear

* load data from internet
use "www.stata-press.com/data/r15/auto"

use "http://www.stata-press.com/data/agis2/"

net from http://www.stata-press.com/data/agis2/

net describe agis2/

* list all training data from stata 

sysuse dir

clear

sysuse auto

clear

sysuse bplong

sysuse dir

sysuse voter

* we can also enter data directly into stata using the input command

clear

input id age
1 13
2 19
3 24
4 27
5 29
end  

* show data
list

* importing data outside stata
clear

help import

clear

import excel "C:\Users\GideonNtiBoateng\Desktop\Post_Grad\Data files\heart_study.xlsx", sheet("Frammingham_heart_study_CSV(1)") firstrow

list

clear

* loading the auto training data 

sysuse auto 

* use browse to see the raw data in a table
browse

* to see only the make and it's price field
browse make price

* to observe only the first 10 items
browse in 1/10

* to the edit the raw data call the edit method
edit



 