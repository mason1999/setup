## Table of contents
1. [IF and IFS](#1)
2. [Query function](#2)


## IF and IFS <a name="1"></a>
An example with numbers. This is basically an **if--else if-- else** statement. Can basically use ```IFS``` for everything. 

	=IFS(A1 >= 85, "HD", A1 >= 75, "D", A1 >= 65, "CR", A1 >= 50, "P", TRUE, "Fail"

An example with text. "=" is the operator for equality and "<>" is the operator for not equals

	=IFS(A1 <> "Mason", "This ain't Mason", TRUE, "This is mason")

## Query function <a name="2"></a>
The form of the function is 

	=QUERY(DATA RANGE, "the query as a string", the number of header rows)

For example, the data range is ``A1:E6`` and the number of headers here is 1. the "..." is what we mainly focus on. 

	=QUERY(A1:E6, "...", 1) 

- ```select```
- ```where```
- ```like```
- ```and```
- ```or```
- ```limit```
- ```order by [desc]```
- ```matches```

## regex

## Query: filter by date range using where
- Dates are actually numbers
- & for concatentation of text
