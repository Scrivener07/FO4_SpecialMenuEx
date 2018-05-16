Scriptname F4NV:Special:Sample extends Quest

; Methods
;---------------------------------------------

Event OnQuestInit()
	SpecialMenu.RegisterForOpenCloseEvent(self)
EndEvent


Event OnQuestShutdown()
	SpecialMenu.UnregisterForOpenCloseEvent(self)
EndEvent


Event OnMenuOpenCloseEvent(string asMenuName, bool abOpening)
	If (abOpening)
		SpecialMenu.MaximumPoints = 28
	EndIf
EndEvent


; Properties
;---------------------------------------------

Group Properties
	F4NV:Special:Menu Property SpecialMenu Auto Const Mandatory
EndGroup
