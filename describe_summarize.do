* describing and summarizing data

clear

sysuse auto

browse in 1/10

* describe the data and variables
describe

* summarize produces statistics on an observation
summarize

browse

* summarize statistics if some values meet
summarize price if foreign == 0

summarize price if foreign == 1
mean price

summarize foreign

* let stata generate codebook for our data

codebook

* tabulating and tables

help tabulate

tabulate rep78
tabulate foreign


* missing values
misstable summarize
 
browse rep78

summarize rep78 if rep78 != .


* Distributional Analysis (Numerical)

summarize price

* inpect a variable
inspect price


* stem and leaf display
stem price

* summarize price in detail

summarize price, detail

* perform a skweness and kurtosis test for normality on price 

sktest price

stem price

inspect price

sysuse dir

clear

* using the census data

sysuse census
browse

summarize

describe

summarize medage [weight=pop]

summarize medage [fweight=pop]


* weights in regression

regress marriage medage death
regress marriage medage death [fweight=pop]

* scatter plot of number of deaths by median age weighted to state population

scatter death medage [fweight=pop]


** loading the auto data
clear
sysuse auto


**** creating and replacing variables using the generate and replace methods in STATA

help generate

** we can use generate to add a new variablr to our data say; constant

generate constant = 1

browse

generate new_price = price / weight

generate price_squared = price * price 

* adds 1000 to new_price

generate price_1000 = new_price + 1000

summarize

*** knowing more functions

help functions

generate log_price = log(price)

generate abs_log_price = abs(log_price)

generate floor_log_price = ceil(log_price)

generate round_log_price = round(log_price)

browse

* generate new_foreign = foreign if 


replace rep78 = 1 if rep78 == 2
replace rep78 = 30 if rep78 == 3
replace foreign = "home" if foreign in 0

help replace































