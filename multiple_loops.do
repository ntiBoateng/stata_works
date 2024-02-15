*** USing multiple loops
 clear
 
 sysuse auto
 
 foreach x of varlist * {
 	forvalues i = 10(10)100 {
		generate `x'`i' = `x' * `i'
	}
 }
 
 describe
 
 browse