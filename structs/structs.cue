package structs

#Priority: string & ("INFO" | "ERROR" | "WARNING" | "DEBUG")
#Code:     uint16 & >=1_000 & <=9_000
#Subject:  string & =~#"^.{3,70}$"# & =~"[A-Za-z0-9,_ -]"
#Message:  string & =~#"^.{3,140}$"# & =~"[A-Za-z0-9,_ -]"

#Entry: {
	code:     #Code
	priority: #Priority
	subject:  #Subject
	message:  #Message
}

entry: #Entry & {
	code:     1234
	priority: "INFO"
	subject:  "app struct started"
	message:  "application started by user Dave"
}
