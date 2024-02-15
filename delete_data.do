** learning about keeping and droping data

* load auto data
clear

sysuse auto
browse

** we want to remove the variable price
drop price

browse

** say we want to keep all variables with the letter 'e'
keep *e*

browse

** drop all foreign cars
drop if foreign == 1
tabulate foreign

** droping a range of variables
drop weight-gear_ratio

browse foreign make


*** saving data


* ---- check the current directory
cd

* ----- change working directory
cd "Users\GideonNtiBoateng\Desktop\Post_Grad\StataWorks"










