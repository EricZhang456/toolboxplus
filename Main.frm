VERSION 5.00
Begin VB.Form Main 
   Caption         =   "ToolBoxPlus"
   ClientHeight    =   7245
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   11760
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
   ScaleHeight     =   7245
   ScaleWidth      =   11760
   StartUpPosition =   3  '´°¿ÚÈ±Ê¡
   Begin VB.CommandButton Command1 
      Caption         =   "Typer"
      Height          =   255
      Left            =   6720
      TabIndex        =   4
      Top             =   2160
      Width           =   615
   End
   Begin VB.CommandButton IEFRAME1 
      Caption         =   "THE POWERFUL INTERNET!"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   36
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1935
      Left            =   120
      TabIndex        =   3
      Top             =   1680
      Width           =   6255
   End
   Begin VB.CommandButton NORMAL 
      Caption         =   "nORMa1"
      Height          =   255
      Left            =   7440
      TabIndex        =   2
      Top             =   240
      Width           =   975
   End
   Begin VB.Label Label2 
      Caption         =   "Pro"
      Height          =   375
      Left            =   5520
      TabIndex        =   1
      Top             =   480
      Width           =   495
   End
   Begin VB.Label Label1 
      Caption         =   "ToolBoxPlus"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   48
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1215
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   6855
   End
End
Attribute VB_Name = "Main"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim N As Boolean

Private Sub Command1_Click()
    Main.Hide
    Typer.Show
End Sub

Private Sub Form_Load()
    NORMAL.Visible = False
End Sub

Private Sub IEFRAME1_Click()
    Main.Hide
    IEFrameForm.Show
End Sub

Private Sub Label1_Click()
    Label1.Caption = "ToolBoxMinus"
    N = True
End Sub

Private Sub Label2_Click()
    Label2.Caption = "Bad"
    If N = True Then
        NORMAL.Visible = True
    End If
End Sub

Private Sub NORMAL_Click()
    Label1.Caption = "ToolBoxPlus"
    Label2.Caption = "Pro"
    NORMAL.Visible = False
    N = False
End Sub
