Scriptname F4NV:Special:Menu extends Quest
import F4NV
import F4NV:Special:Papyrus


; Methods
;---------------------------------------------

Function Open()
	Game.ShowSPECIALMenu()
EndFunction


bool Function RegisterForOpenCloseEvent(ScriptObject script)
	If (script)
		script.RegisterForMenuOpenCloseEvent(Name)
		return true
	Else
		WriteLine(self, "RegisterForOpenCloseEvent : script : Cannot register a none script for events.")
		return false
	EndIf
EndFunction


bool Function UnregisterForOpenCloseEvent(ScriptObject script)
	If (script)
		script.UnregisterForMenuOpenCloseEvent(Name)
		return true
	Else
		WriteLine(self, "UnregisterForOpenCloseEvent : script : Cannot unregister a none script for events.")
		return false
	EndIf
EndFunction


string Function GetMember(string member)
	If (member)
		return Instance+"."+member
	Else
		WriteLine(self, "GetMember: Argument member cannot be none or empty.")
		return none
	EndIf
EndFunction


; Properties
;---------------------------------------------

Group Properties
	string Property Name Hidden
		string Function Get()
			return "SPECIALMenu"
		EndFunction
	EndProperty

	string Property Instance Hidden
		string Function Get()
			return "root1.Menu_mc"
		EndFunction
	EndProperty

	bool Property IsOpen Hidden
		bool Function Get()
			return UI.IsMenuOpen(Name)
		EndFunction
	EndProperty

	; int Property CurrentPoints Hidden
	; 	int Function Get()
	; 		return UI.Get(Name, GetMember("CurrentPoints")) as int
	; 	EndFunction
	; 	Function Set(int value)
	; 		UI.Set(Name, GetMember("CurrentPoints"), value)
	; 		WriteLine(self, "CurrentPoints:"+value)
	; 	EndFunction
	; EndProperty

	int Property MaximumPoints Hidden
		int Function Get()
			return UI.Get(Name, GetMember("MaximumPoints")) as int
		EndFunction
		Function Set(int value)
			UI.Set(Name, GetMember("MaximumPoints"), value)
			WriteLine(self, "SetMaximumPoints:"+value)
		EndFunction
	EndProperty
EndGroup
