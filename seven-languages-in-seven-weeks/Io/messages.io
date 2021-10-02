"postOffice := Object clone" println
postOffice := Object clone println
"postOffice packageSender := method(call sender)" println
postOffice packageSender := method(call sender) println

"-----------------------------------------------------------" println

"mailer := Object clone" println
mailer := Object clone println
"mailer deliver := method(postOffice packageSender)" println
mailer deliver := method(postOffice packageSender) println

"-----------------------------------------------------------" println
"mailer deliver" println
mailer deliver println

"-----------------------------------------------------------" println
"postOffice messageTarget := method(call target)" println
postOffice messageTarget := method(call target) println
"postOffice messageTarget" println
postOffice messageTarget println

"-----------------------------------------------------------" println
"postOffice messageArgs := method(call message arguments)" println
postOffice messageArgs := method(call message arguments) println

"-----------------------------------------------------------" println
"postOffice messageName := method(call message name)" println
postOffice messageName := method(call message name) println


"-----------------------------------------------------------" println
postOffice messageArgs("one", 2, :three) println
"postOffice messageName" println
postOffice messageName println
