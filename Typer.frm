VERSION 5.00
Begin VB.Form Typer 
   Caption         =   "Typer"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
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
   ScaleHeight     =   3030
   ScaleWidth      =   4560
   StartUpPosition =   3  '´°¿ÚÈ±Ê¡
   Begin VB.CommandButton Command1 
      Caption         =   "backy"
      Height          =   495
      Left            =   1320
      TabIndex        =   1
      Top             =   240
      Width           =   2775
   End
   Begin VB.TextBox Text1 
      Height          =   1935
      Left            =   480
      TabIndex        =   0
      Top             =   840
      Width           =   2535
   End
End
Attribute VB_Name = "Typer"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    Typer.Hide
    Main.Show
End Sub

Private Sub Form_Resize()
    Text1.Width = Typer.Width
    Text1.Height = Typer.Height
End Sub

Private Sub Text1_Change()
    MsgBox "WOW YOU TYPED!!!1", vbExclamation, "WOW!!!"
End Sub
