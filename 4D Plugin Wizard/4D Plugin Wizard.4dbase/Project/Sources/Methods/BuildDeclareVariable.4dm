//%attributes = {}
C_TEXT:C284($content)
Case of 
	: ($1="Date")
		$content:=$content+(vtab+"PA_Date "+$2+";"+vcr)
	: (($1="Hour") | ($1="Long"))
		$content:=$content+ColorizeText(vtab+"PA_long32"; gKeyWordColor)
		$content:=$content+(" "+$2+";"+vcr)
	: ($1="Integer")
		$content:=$content+ColorizeText(vtab+"short"; gKeyWordColor)
		$content:=$content+(" "+$2+";"+vcr)
	: ($1="Blob")
		$content:=$content+(vtab+"PA_Handle "+$2+";"+vcr)
	: ($1="Object")
		$content:=$content+(vtab+"PA_ObjectRef "+$2+";"+vcr)
	: ($1="Collection")
		$content:=$content+(vtab+"PA_CollectionRef "+$2+";"+vcr)
	: ($1="Picture")
		$content:=$content+(vtab+"PA_Picture "+$2+";"+vcr)
	: ($1="Real")
		$content:=$content+ColorizeText(vtab+"double"; gKeyWordColor)
		$content:=$content+(" "+$2+";"+vcr)
	: ($1="Text")
		$content:=$content+ColorizeText(vtab+"PA_Unichar"; gKeyWordColor)
		$content:=$content+("* "+$2+"_uchars;"+vcr)
	: ($1="Variant")
		$content:=$content+ColorizeText(vtab+"PA_GetVariableParameter"; gKeyWordColor)
		$content:=$content+("* "+$2+"_variable;"+vcr)
		If ($3)
			$content:=$content+ColorizeText(vtab+"PA_Unistring"; gKeyWordColor)
			$content:=$content+("* "+$2+";"+vcr)
		End if 
	: ($1="Array")
		$content:=$content+(vtab+"PA_Variable "+$2+";"+vcr)
	: ($1="Pointer")
		$content:=$content+(vtab+"PA_Pointer "+$2+";"+vcr)
End case 
$0:=$content