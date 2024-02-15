
clear

* open a data
sysuse auto

* summarizing your data in stata
summarize

generate x = 1

do test_do_file

* how to use the log command

help log

log using log2

log close

log using logNew

log close

log using todayLog

sysuse auto
summarize
generate x = 30

log close

view todayLog.smcl

* i can add a previous log to the current log
log using logNew, append

* replace will delete everything in the current log 
log using logNew, replace


log close





