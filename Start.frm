VERSION 5.00
Begin VB.Form Start 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Start"
   ClientHeight    =   3030
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   5115
   BeginProperty Font 
      Name            =   "Comic Sans MS"
      Size            =   9
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3030
   ScaleWidth      =   5115
   StartUpPosition =   2  'ÆÁÄ»ÖÐÐÄ
   Begin VB.CommandButton Command1 
      Caption         =   "go not so pro xddddddd"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   -1  'True
         Italic          =   -1  'True
         Strikethrough   =   -1  'True
      EndProperty
      Height          =   735
      Left            =   120
      TabIndex        =   1
      Top             =   2160
      Width           =   4815
   End
   Begin VB.CommandButton StartCommand 
      Caption         =   "Start"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   72
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1695
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   4815
   End
End
Attribute VB_Name = "Start"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Pro As Boolean

Private Sub Command1_Click()
    Pro = True
    MsgBox ("sorry pro is dead")
End Sub

Private Sub StartCommand_Click()
    If Pro = True Then
        Start.Hide
        Main.Show
    Else
        MsgBox "Your trial of ToolBoxPlus starts.", vbInformation, "ToolBoxPlus"
        MsgBox "Your trial of ToolBoxPlus ended!", vbCritical, "ToolBoxPlus"
    End If
End Sub
