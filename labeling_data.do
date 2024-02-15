** labeling data


sysuse auto

browse	

* get datatypes overview of your data
varmanage

describe

** using rename function
help rename

** we want to renanme the variable rep78
rename rep78 repair

browse 

** rename all vaibles from upper to lower and vice versa
rename *, upper
rename *, lower
rename price, upper

**  we can concatenate 1978 to the entire variable names
rename * *1978

** using label
label variable PRICE1978 "Price recorded in 1978"

rename *1978 *

tab repair1978

label dir


************* using egen; extended generate function

help egen

*create standard deviation of price
egen sd_price = sd(PRICE1978)
summarize PRICE1978 sd_price

** cut price into 10 deciles using egen
egen deciles = cut(PRICE1978), group(10)
tabulate deciles

**  we can also calculate mean for rows of data with egen
egen row_means = rowmean(PRICE1978 mpg1978 weight1978)

browse PRICE1978 mpg1978 weight1978 row_means

** adding labels to the rest of the variables
label variable sd_price "standard deviation on prices"

label variable deciles "Deciles on group of 10"

label variable row_means "Cummulated means of row"










