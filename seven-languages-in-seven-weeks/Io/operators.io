"Operator Table" println
OperatorTable println

OperatorTable addOperator("xor", 11)

OperatorTable println

true xor := method(bool, if(bool, false, true))
false xor := method(bool, if(bool, true, false))

"true xor true  NOTE: This one doesn't seem to work right." println
true xor true println
"------" println

"true xor false" println
true xor false println
"------" println

"false xor true" println
false xor true println
"------" println

"false xor false" println
false xor false println
"------" println

