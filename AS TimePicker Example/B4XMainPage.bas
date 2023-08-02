﻿B4A=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=9.85
@EndOfDesignText@
#Region Shared Files
#CustomBuildAction: folders ready, %WINDIR%\System32\Robocopy.exe,"..\..\Shared Files" "..\Files"
'Ctrl + click to sync files: ide://run?file=%WINDIR%\System32\Robocopy.exe&args=..\..\Shared+Files&args=..\Files&FilesSync=True
#End Region

'Ctrl + click to export as zip: ide://run?File=%B4X%\Zipper.jar&Args=Project.zip

Sub Class_Globals
	Private Root As B4XView
	Private xui As XUI
	Private AS_TimerPicker1 As AS_TimerPicker
End Sub

Public Sub Initialize
	
End Sub

'This event will be called once, before the page becomes visible.
Private Sub B4XPage_Created (Root1 As B4XView)
	Root = Root1
	Root.LoadLayout("frm_main")
	B4XPages.SetTitle(Me,"AS TimePicker")
	'Sleep(0)
	'AS_TimerPicker1.Hours = 16
	AS_TimerPicker1.Refresh
	
End Sub


Private Sub AS_TimerPicker1_SelectedHourChanged (Hour As Int)
	Log("SelectedHourChanged: " & Hour)
End Sub

Private Sub AS_TimerPicker1_SelectedMinuteChanged (Minute As Int)
	Log("SelectedMinuteChanged: " & Minute)
End Sub

Private Sub AS_TimerPicker1_SelectedHour (Hour As Int)
	Log("SelectedHour: " & Hour)
End Sub

Private Sub AS_TimerPicker1_SelectedMinute (Minute As Int)
	Log("SelectedMinute: " & Minute)
End Sub