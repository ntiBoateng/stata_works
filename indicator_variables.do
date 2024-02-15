*** Learning about indicator variables

* load auto data
clear

sysuse auto

browse price in 1/10

* creating a new variable 'high_price' if price > 6000
generate high_price = 1 if price > 6000
browse high_price
replace high_price = 0 if price <= 6000

label variable high_price "High prices coded"

browse high_price

* for the above code, we can use recode to do same
recode price (min/6000 = 0) (else = 1), generate(high_price_2)

tabulate high_price_2

** generate an indicator variable for high price using tabulate
tabulate rep78, generate(repdummy)
summarize repdummy*

browse repdummy*

** using autocode to generate spaced category

help function

generate price_cat = autocode(price, 10, 3000, 16000)
label variable price_cat "Price in Category"

browse price_cat
tab price_cat


** using the inlist function as a shortcut
generate repair = 0 if rep78 == 1 | rep78 == 2
replace repair = 1 if rep78 == 3 | rep78 == 4
replace repair = -1 if rep78 > 4
browse repair

generate repair_2 = 0 if inlist(rep78, 1,2)
replace repair_2 = 1 if inlist(rep78, 3,4,5)
browse repair_2

generate price_unkown_figures_2 = "yes" if price > 6000 else generate price_unkown_figures_2 = "no"

browse price_unkown_figures











