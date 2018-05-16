ScriptName F4NV:Special:Papyrus Const Native Hidden
{Extensions for scripting with Papyrus in general.}

; Logging
;---------------------------------------------

bool Function WriteLine(string prefix, string text) Global DebugOnly
	string filename = "F4NV_SpecialMenu" const
	text = prefix + " " + text
	If(Debug.TraceUser(filename, text))
		return true
	Else
		Debug.OpenUserLog(filename)
		return Debug.TraceUser(filename, text)
	EndIf
EndFunction
