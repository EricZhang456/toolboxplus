VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "ieframe.dll"
Begin VB.Form IEFrameForm 
   Caption         =   "IEFrameForm"
   ClientHeight    =   10440
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   12855
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
   ScaleHeight     =   10440
   ScaleWidth      =   12855
   StartUpPosition =   3  '´°¿ÚÈ±Ê¡
   Begin VB.CommandButton Command6 
      Caption         =   "main"
      Height          =   255
      Left            =   12360
      TabIndex        =   7
      Top             =   480
      Width           =   495
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Refresh"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3120
      TabIndex        =   6
      Top             =   480
      Width           =   1095
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Home"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2400
      TabIndex        =   5
      Top             =   480
      Width           =   735
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Back"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   1680
      TabIndex        =   4
      Top             =   480
      Width           =   735
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Forward"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   600
      TabIndex        =   3
      Top             =   480
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Go"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   0
      TabIndex        =   2
      Top             =   480
      Width           =   615
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   0
      TabIndex        =   1
      Top             =   0
      Width           =   12855
   End
   Begin SHDocVwCtl.WebBrowser WebBrowser1 
      Height          =   9720
      Left            =   0
      TabIndex        =   0
      Top             =   720
      Width           =   12855
      ExtentX         =   22675
      ExtentY         =   17145
      ViewMode        =   0
      Offline         =   0
      Silent          =   0
      RegisterAsBrowser=   0
      RegisterAsDropTarget=   1
      AutoArrange     =   0   'False
      NoClientEdge    =   0   'False
      AlignLeft       =   0   'False
      NoWebView       =   0   'False
      HideFileNames   =   0   'False
      SingleClick     =   0   'False
      SingleSelection =   0   'False
      NoFolders       =   0   'False
      Transparent     =   0   'False
      ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
      Location        =   "http:///"
   End
End
Attribute VB_Name = "IEFrameForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    WebBrowser1.Navigate (Text1.Text)
End Sub

Private Sub Command2_Click()
    WebBrowser1.GoForward
End Sub

Private Sub Command3_Click()
    WebBrowser1.GoBack
End Sub

Private Sub Command4_Click()
    WebBrowser1.GoHome
End Sub

Private Sub Command5_Click()
    WebBrowser1.Refresh
End Sub

Private Sub Command6_Click()
    IEFrameForm.Hide
    Main.Show
End Sub

Private Sub Form_Load()
    IEFrameForm.Caption = ("Navigating: https://www.bing.com/")
    WebBrowser1.Navigate ("https://www.bing.com/")
End Sub

Private Sub Form_Resize()
    WebBrowser1.Width = IEFrameForm.Width - 240
    WebBrowser1.Height = IEFrameForm.Height - 750
    Text1.Width = IEFrameForm.Width
    'Text1.Height = Command1.Height
End Sub


Private Sub WebBrowser1_BeforeNavigate2(ByVal pDisp As Object, URL As Variant, Flags As Variant, TargetFrameName As Variant, PostData As Variant, Headers As Variant, Cancel As Boolean)
    IEFrameForm.Caption = ("Navigating: " + URL)
    Text1.Text = URL
End Sub
