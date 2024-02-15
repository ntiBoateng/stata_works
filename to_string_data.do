clear

**opens an online data called destring1
webuse destring1
browse

varmanage

** exploring string example data
list
summarize
describe

** conditions on strings
list if id == "111"

** converting and replacing all variables
destring *, replace
browse
summarize

** converting everything back to normal
tostring *, replace
list
browse

** to convert a single variable
destring total, replace
browse
su

clear

*** Open other data string type data
webuse hbp2
browse
summarize
describe

* destring variable sex with encode
encode sex, generate(gender)
browse

** to return it back to initial
decode gender, generate(sex_reverted)
browse


























