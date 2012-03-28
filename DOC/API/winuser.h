
MinGW's 'winuse.h' in human readable format.

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define MNGO_NOINTERFACE                                         0x00000000
#define MNGO_NOERROR                                             0x00000001
#define MNGOF_TOPGAP                                             0x00000001
#define MNGOF_BOTTOMGAP                                          0x00000002
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define WC_DIALOG MAKEINTATOM(0x00008002)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define FVIRTKEY                                                 0x00000001
#define FNOINVERT                                                0x00000002
#define FSHIFT                                                   0x00000004
#define FCONTROL                                                 0x00000008
#define FALT                                                     0x00000010
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define ATF_TIMEOUTON                                            0x00000001
#define ATF_ONOFFFEEDBACK                                        0x00000002
#define ATF_AVAILABLE                                            0x00000004           /* May be obsolete. Not in recent MS docs. */
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define WH_JOURNALRECORD                                         0x00000000
#define WH_JOURNALPLAYBACK                                       0x00000001
#define WH_KEYBOARD                                              0x00000002
#define WH_GETMESSAGE                                            0x00000003
#define WH_CALLWNDPROC                                           0x00000004
#define WH_CBT                                                   0x00000005
#define WH_SYSMSGFILTER                                          0x00000006
#define WH_MOUSE                                                 0x00000007
#define WH_HARDWARE                                              0x00000008
#define WH_DEBUG                                                 0x00000009
#define WH_SHELL                                                 0x0000000A
#define WH_FOREGROUNDIDLE                                        0x0000000B
#define WH_CALLWNDPROCRET                                        0x0000000C
#define WH_KEYBOARD_LL                                           0x0000000D
#define WH_MOUSE_LL                                              0x0000000E
#define WH_MAX                                                   0x0000000F
#define WH_MAXHOOK                                               0x0000000F
#define WH_MINHOOK                                               0xFFFFFFFF
#define WH_MIN                                                   0xFFFFFFFF
#define WH_MSGFILTER                                             0xFFFFFFFF
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define HC_ACTION                                                0x00000000
#define HC_GETNEXT                                               0x00000001
#define HC_SKIP                                                  0x00000002
#define HC_NOREMOVE                                              0x00000003
#define HC_NOREM                                                 0x00000003
#define HC_SYSMODALON                                            0x00000004
#define HC_SYSMODALOFF                                           0x00000005
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define HCBT_MOVESIZE                                            0x00000000
#define HCBT_MINMAX                                              0x00000001
#define HCBT_QS                                                  0x00000002
#define HCBT_CREATEWND                                           0x00000003
#define HCBT_DESTROYWND                                          0x00000004
#define HCBT_ACTIVATE                                            0x00000005
#define HCBT_CLICKSKIPPED                                        0x00000006
#define HCBT_KEYSKIPPED                                          0x00000007
#define HCBT_SYSCOMMAND                                          0x00000008
#define HCBT_SETFOCUS                                            0x00000009
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define CF_TEXT                                                  0x00000001
#define CF_BITMAP                                                0x00000002
#define CF_METAFILEPICT                                          0x00000003
#define CF_SYLK                                                  0x00000004
#define CF_DIF                                                   0x00000005
#define CF_TIFF                                                  0x00000006
#define CF_OEMTEXT                                               0x00000007
#define CF_DIB                                                   0x00000008
#define CF_PALETTE                                               0x00000009
#define CF_PENDATA                                               0x0000000A
#define CF_RIFF                                                  0x0000000B
#define CF_WAVE                                                  0x0000000C
#define CF_UNICODETEXT                                           0x0000000D
#define CF_ENHMETAFILE                                           0x0000000E
#define CF_HDROP                                                 0x0000000F
#define CF_LOCALE                                                0x00000010
#define CF_MAX                                                   0x00000011
#define CF_OWNERDISPLAY                                          0x00000080
#define CF_DSPTEXT                                               0x00000081
#define CF_DSPBITMAP                                             0x00000082
#define CF_DSPMETAFILEPICT                                       0x00000083
#define CF_DSPENHMETAFILE                                        0x00000084
#define CF_PRIVATEFIRST                                          0x00000200
#define CF_PRIVATELAST                                           0x000002FF
#define CF_GDIOBJFIRST                                           0x00000300
#define CF_GDIOBJLAST                                            0x000003FF
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define HKL_PREV                                                 0x00000000
#define HKL_NEXT                                                 0x00000001
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define KLF_ACTIVATE                                             0x00000001
#define KLF_SUBSTITUTE_OK                                        0x00000002
#define KLF_UNLOADPREVIOUS                                       0x00000004
#define KLF_REORDER                                              0x00000008
#define KLF_REPLACELANG                                          0x00000010
#define KLF_NOTELLSHELL                                          0x00000080
#define KLF_SETFORPROCESS                                        0x00000100
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define KL_NAMELENGTH                                            0x00000009
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define MF_ENABLED                                               0x00000000
#define MF_STRING                                                0x00000000
#define MF_INSERT                                                0x00000000
#define MF_UNHILITE                                              0x00000000
#define MF_UNCHECKED                                             0x00000000
#define MF_GRAYED                                                0x00000001
#define MF_DISABLED                                              0x00000002
#define MF_BITMAP                                                0x00000004
#define MF_CHECKED                                               0x00000008
#define MF_POPUP                                                 0x00000010
#define MF_MENUBARBREAK                                          0x00000020
#define MF_MENUBREAK                                             0x00000040
#define MF_END                                                   0x00000080
#define MF_CHANGE                                                0x00000080
#define MF_APPEND                                                0x00000080
#define MF_HILITE                                                0x00000080
#define MF_OWNERDRAW                                             0x00000100
#define MF_DELETE                                                0x00000200
#define MF_USECHECKBITMAPS                                       0x00000200
#define MF_SEPARATOR                                             0x00000800
#define MF_DEFAULT                                               0x00001000
#define MF_REMOVE                                                0x00001000
#define MF_SYSMENU                                               0x00002000
#define MF_HELP                                                  0x00004000
#define MF_RIGHTJUSTIFY                                          0x00004000
#define MF_MOUSESELECT                                           0x00008000
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define BSM_ALLCOMPONENTS                                        0x00000000
#define BSM_VXDS                                                 0x00000001
#define BSM_NETDRIVER                                            0x00000002
#define BSM_INSTALLABLEDRIVERS                                   0x00000004
#define BSM_APPLICATIONS                                         0x00000008
#define BSM_ALLDESKTOPS                                          0x00000010
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define BSF_QUERY                                                0x00000001
#define BSF_IGNORECURRENTTASK                                    0x00000002
#define BSF_FLUSHDISK                                            0x00000004
#define BSF_NOHANG                                               0x00000008
#define BSF_POSTMESSAGE                                          0x00000010
#define BSF_FORCEIFHUNG                                          0x00000020
#define BSF_NOTIMEOUTIFNOTHUNG                                   0x00000040
#define BSF_ALLOWSFW                                             0x00000080
#define BSF_SENDNOTIFYMESSAGE                                    0x00000100
#define BSF_RETURNHDESK                                          0x00000200
#define BSF_LUID                                                 0x00000400
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define BROADCAST_QUERY_DENY                                     0x424D5144        /* 'BMQD' */
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define ENUM_CURRENT_SETTINGS                                    0xFFFFFFFF
#define ENUM_REGISTRY_SETTINGS                                   0xFFFFFFFE
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define CDS_UPDATEREGISTRY                                       0x00000001
#define CDS_TEST                                                 0x00000002
#define CDS_FULLSCREEN                                           0x00000004
#define CDS_GLOBAL                                               0x00000008
#define CDS_SET_PRIMARY                                          0x00000010
#define CDS_NORESET                                              0x10000000
#define CDS_SETRECT                                              0x20000000
#define CDS_RESET                                                0x40000000
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define DISP_CHANGE_SUCCESSFUL                                   0x00000000
#define DISP_CHANGE_RESTART                                      0x00000001
#define DISP_CHANGE_FAILED                                       0xFFFFFFFF
#define DISP_CHANGE_BADMODE                                      0xFFFFFFFE
#define DISP_CHANGE_NOTUPDATED                                   0xFFFFFFFD
#define DISP_CHANGE_BADFLAGS                                     0xFFFFFFFC
#define DISP_CHANGE_BADPARAM                                     0xFFFFFFFB
#define DISP_CHANGE_BADDUALVIEW                                  0xFFFFFFFA
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define BST_UNCHECKED                                            0x00000000
#define BST_CHECKED                                              0x00000001
#define BST_INDETERMINATE                                        0x00000002
#define BST_PUSHED                                               0x00000004
#define BST_FOCUS                                                0x00000008
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define MF_BYCOMMAND                                             0x00000000
#define MF_UNCHECKED                                             0x00000000
#define MF_UNHILITE                                              0x00000000
#define MF_HILITE                                                0x00000080
#define MF_BYPOSITION                                            0x00000400
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define CWP_ALL                                                  0x00000000
#define CWP_SKIPINVISIBLE                                        0x00000001
#define CWP_SKIPDISABLED                                         0x00000002
#define CWP_SKIPTRANSPARENT                                      0x00000004
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define IMAGE_BITMAP                                             0x00000000
#define IMAGE_ICON                                               0x00000001
#define IMAGE_CURSOR                                             0x00000002
#define IMAGE_ENHMETAFIL                                         0x00000003
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define DF_ALLOWOTHERACCOUNTHOOK                                 0x00000001
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define DESKTOP_READOBJECTS                                      0x00000001
#define DESKTOP_CREATEWINDOW                                     0x00000002
#define DESKTOP_CREATEMENU                                       0x00000004
#define DESKTOP_HOOKCONTROL                                      0x00000008
#define DESKTOP_JOURNALRECORD                                    0x00000010
#define DESKTOP_JOURNALPLAYBACK                                  0x00000020
#define DESKTOP_ENUMERATE                                        0x00000040
#define DESKTOP_WRITEOBJECTS                                     0x00000080
#define DESKTOP_SWITCHDESKTOP                                    0x00000100
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define CW_USEDEFAULT                                            0x80000000
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define WS_POPUPWINDOW                                           0x80880000
#define WS_POPUP                                                 0x80000000
#define WS_CHILD                                                 0x40000000
#define WS_CHILDWINDOW                                           0x40000000
#define WS_ICONIC                                                0x20000000
#define WS_MINIMIZE                                              0x20000000
#define WS_VISIBLE                                               0x10000000
#define WS_DISABLED                                              0x08000000
#define WS_CLIPSIBLINGS                                          0x04000000
#define WS_CLIPCHILDREN                                          0x02000000
#define WS_MAXIMIZE                                              0x01000000
#define WS_OVERLAPPEDWINDOW                                      0x00CF0000
#define WS_TILEDWINDOW                                           0x00CF0000
#define WS_CAPTION                                               0x00C00000
#define WS_BORDER                                                0x00800000
#define WS_DLGFRAME                                              0x00400000
#define WS_VSCROLL                                               0x00200000
#define WS_HSCROLL                                               0x00100000
#define WS_SYSMENU                                               0x00080000
#define WS_SIZEBOX                                               0x00040000
#define WS_THICKFRAME                                            0x00040000
#define WS_GROUP                                                 0x00020000
#define WS_MINIMIZEBOX                                           0x00020000
#define WS_MAXIMIZEBOX                                           0x00010000
#define WS_TABSTOP                                               0x00010000
#define WS_TILED                                                 0x00000000
#define WS_OVERLAPPED                                            0x00000000
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define MDIS_ALLCHILDSTYLES                                      0x00000001
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define BS_TEXT                                                  0x00000000
#define BS_PUSHBUTTON                                            0x00000000
#define BS_DEFPUSHBUTTON                                         0x00000001
#define BS_CHECKBOX                                              0x00000002
#define BS_AUTOCHECKBOX                                          0x00000003
#define BS_RADIOBUTTON                                           0x00000004
#define BS_3STATE                                                0x00000005
#define BS_AUTO3STATE                                            0x00000006
#define BS_GROUPBOX                                              0x00000007
#define BS_USERBUTTON                                            0x00000008
#define BS_AUTORADIOBUTTON                                       0x00000009
#define BS_OWNERDRAW                                             0x0000000B
#define BS_RIGHTBUTTON                                           0x00000020
#define BS_LEFTTEXT                                              0x00000020
#define BS_ICON                                                  0x00000040
#define BS_BITMAP                                                0x00000080
#define BS_LEFT                                                  0x00000100
#define BS_RIGHT                                                 0x00000200
#define BS_CENTER                                                0x00000300
#define BS_TOP                                                   0x00000400
#define BS_BOTTOM                                                0x00000800
#define BS_VCENTER                                               0x00000C00
#define BS_PUSHLIKE                                              0x00001000
#define BS_MULTILINE                                             0x00002000
#define BS_NOTIFY                                                0x00004000
#define BS_FLAT                                                  0x00008000
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define CBS_SIMPLE                                               0x00000001
#define CBS_DROPDOWN                                             0x00000002
#define CBS_DROPDOWNLIST                                         0x00000003
#define CBS_OWNERDRAWFIXED                                       0x00000010
#define CBS_OWNERDRAWVARIABLE                                    0x00000020
#define CBS_AUTOHSCROLL                                          0x00000040
#define CBS_OEMCONVERT                                           0x00000080
#define CBS_SORT                                                 0x00000100
#define CBS_HASSTRINGS                                           0x00000200
#define CBS_NOINTEGRALHEIGHT                                     0x00000400
#define CBS_DISABLENOSCROLL                                      0x00000800
#define CBS_UPPERCASE                                            0x00002000
#define CBS_LOWERCASE                                            0x00004000
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define ES_LEFT                                                  0x00000000
#define ES_CENTER                                                0x00000001
#define ES_RIGHT                                                 0x00000002
#define ES_MULTILINE                                             0x00000004
#define ES_UPPERCASE                                             0x00000008
#define ES_LOWERCASE                                             0x00000010
#define ES_PASSWORD                                              0x00000020
#define ES_AUTOVSCROLL                                           0x00000040
#define ES_AUTOHSCROLL                                           0x00000080
#define ES_NOHIDESEL                                             0x00000100
#define ES_OEMCONVERT                                            0x00000400
#define ES_READONLY                                              0x00000800
#define ES_WANTRETURN                                            0x00001000
#define ES_NUMBER                                                0x00002000
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define LBS_NOTIFY                                               0x00000001
#define LBS_SORT                                                 0x00000002
#define LBS_NOREDRAW                                             0x00000004
#define LBS_MULTIPLESEL                                          0x00000008
#define LBS_OWNERDRAWFIXED                                       0x00000010
#define LBS_OWNERDRAWVARIABLE                                    0x00000020
#define LBS_HASSTRINGS                                           0x00000040
#define LBS_NOINTEGRALHEIGHT                                     0x00000100
#define LBS_MULTICOLUMN                                          0x00000200
#define LBS_EXTENDEDSEL                                          0x00000800
#define LBS_DISABLENOSCROLL                                      0x00001000
#define LBS_NODATA                                               0x00002000
#define LBS_NOSEL                                                0x00004000
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define SBS_HORZ                                                 0x00000000
#define SBS_VERT                                                 0x00000001
#define SBS_LEFTALIGN                                            0x00000002
#define SBS_SIZEBOXTOPLEFTALIGN                                  0x00000002
#define SBS_TOPALIGN                                             0x00000002
#define SBS_BOTTOMALIGN                                          0x00000004
#define SBS_RIGHTALIGN                                           0x00000004
#define SBS_SIZEBOXBOTTOMRIGHTALIGN                              0x00000004
#define SBS_SIZEBOX                                              0x00000008
#define SBS_SIZEGRIP                                             0x00000010
#define LBS_USETABSTOPS                                          0x00000080
#define LBS_WANTKEYBOARDINPUT                                    0x00000400
#define LBS_STANDARD                                             0x00A00003
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define SS_LEFT                                                  0x00000000
#define SS_CENTER                                                0x00000001
#define SS_RIGHT                                                 0x00000002
#define SS_ICON                                                  0x00000003
#define SS_BLACKRECT                                             0x00000004
#define SS_GRAYRECT                                              0x00000005
#define SS_WHITERECT                                             0x00000006
#define SS_BLACKFRAME                                            0x00000007
#define SS_GRAYFRAME                                             0x00000008
#define SS_WHITEFRAME                                            0x00000009
#define SS_USERITEM                                              0x0000000A
#define SS_SIMPLE                                                0x0000000B
#define SS_LEFTNOWORDWRAP                                        0x0000000C
#define SS_OWNERDRAW                                             0x0000000D
#define SS_BITMAP                                                0x0000000E
#define SS_ENHMETAFILE                                           0x0000000F
#define SS_ETCHEDHORZ                                            0x00000010
#define SS_ETCHEDVERT                                            0x00000011
#define SS_ETCHEDFRAME                                           0x00000012
#define SS_TYPEMASK                                              0x0000001F
#define SS_NOPREFIX                                              0x00000080
#define SS_NOTIFY                                                0x00000100
#define SS_CENTERIMAGE                                           0x00000200
#define SS_RIGHTJUST                                             0x00000400
#define SS_REALSIZEIMAGE                                         0x00000800
#define SS_SUNKEN                                                0x00001000
#define SS_ENDELLIPSIS                                           0x00004000
#define SS_PATHELLIPSIS                                          0x00008000
#define SS_WORDELLIPSIS                                          0x0000C000
#define SS_ELLIPSISMASK                                          0x0000C000
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define DS_ABSALIGN                                              0x00000001
#define DS_SYSMODAL                                              0x00000002
#define DS_3DLOOK                                                0x00000004
#define DS_FIXEDSYS                                              0x00000008
#define DS_NOFAILCREATE                                          0x00000010
#define DS_LOCALEDIT                                             0x00000020
#define DS_SETFONT                                               0x00000040
#define DS_SHELLFONT                                             0x00000048
#define DS_MODALFRAME                                            0x00000080
#define DS_NOIDLEMSG                                             0x00000100
#define DS_SETFOREGROUND                                         0x00000200
#define DS_CONTROL                                               0x00000400
#define DS_CENTER                                                0x00000800
#define DS_CENTERMOUSE                                           0x00001000
#define DS_CONTEXTHELP                                           0x00002000
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define WS_EX_LTRREADING                                         0x00000000
#define WS_EX_LEFT                                               0x00000000
#define WS_EX_RIGHTSCROLLBAR                                     0x00000000
#define WS_EX_DLGMODALFRAME                                      0x00000001
#define WS_EX_NOPARENTNOTIFY                                     0x00000004
#define WS_EX_TOPMOST                                            0x00000008
#define WS_EX_ACCEPTFILES                                        0x00000010
#define WS_EX_TRANSPARENT                                        0x00000020
#define WS_EX_MDICHILD                                           0x00000040
#define WS_EX_TOOLWINDOW                                         0x00000080
#define WS_EX_WINDOWEDGE                                         0x00000100
#define WS_EX_CLIENTEDGE                                         0x00000200
#define WS_EX_PALETTEWINDOW                                      0x00000188
#define WS_EX_OVERLAPPEDWINDOW                                   0x00000300
#define WS_EX_CONTEXTHELP                                        0x00000400
#define WS_EX_RIGHT                                              0x00001000
#define WS_EX_RTLREADING                                         0x00002000
#define WS_EX_LEFTSCROLLBAR                                      0x00004000
#define WS_EX_CONTROLPARENT                                      0x00010000
#define WS_EX_STATICEDGE                                         0x00020000
#define WS_EX_APPWINDOW                                          0x00040000
#define WS_EX_LAYERED                                            0x00080000        /* w2k */
#define WS_EX_NOINHERITLAYOUT                                    0x00100000        /* w2k */
#define WS_EX_LAYOUTRTL                                          0x00400000        /* w98, w2k */
#define WS_EX_COMPOSITED                                         0x02000000        /* XP */
#define WS_EX_NOACTIVATE                                         0x08000000        /* w2k */
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define WINSTA_ENUMDESKTOPS                                      0x00000001
#define WINSTA_READATTRIBUTES                                    0x00000002
#define WINSTA_ACCESSCLIPBOARD                                   0x00000004
#define WINSTA_CREATEDESKTOP                                     0x00000008
#define WINSTA_WRITEATTRIBUTES                                   0x00000010
#define WINSTA_ACCESSGLOBALATOMS                                 0x00000020
#define WINSTA_EXITWINDOWS                                       0x00000040
#define WINSTA_ENUMERATE                                         0x00000100
#define WINSTA_READSCREEN                                        0x00000200
#define WINSTA_ALL_ACCESS                                        0x0000037F
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define DDL_READWRITE                                            0x00000000
#define DDL_READONLY                                             0x00000001
#define DDL_HIDDEN                                               0x00000002
#define DDL_SYSTEM                                               0x00000004
#define DDL_DIRECTORY                                            0x00000010
#define DDL_ARCHIVE                                              0x00000020
#define DDL_POSTMSGS                                             0x00002000
#define DDL_DRIVES                                               0x00004000
#define DDL_EXCLUSIVE                                            0x00008000
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define DC_ACTIVE                                                0x00000001
#define DC_SMALLCAP                                              0x00000002
#define DC_ICON                                                  0x00000004
#define DC_TEXT                                                  0x00000008
#define DC_INBUTTON                                              0x00000010
#define DC_GRADIENT                                              0x00000020
#define DC_BUTTONS                                               0x00001000
#define DC_CAPTION                                               0x0000100C
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define BDR_RAISEDOUTER                                          0x00000001
#define BDR_SUNKENOUTER                                          0x00000002
#define BDR_OUTER                                                0x00000003
#define BDR_RAISEDINNER                                          0x00000004
#define BDR_RAISED                                               0x00000005
#define BDR_SUNKENINNER                                          0x00000008
#define BDR_SUNKEN                                               0x0000000A
#define BDR_INNER                                                0x0000000C
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define EDGE_RAISED                                              0x00000005
#define EDGE_ETCHED                                              0x00000006
#define EDGE_BUMP                                                0x00000009
#define EDGE_SUNKEN                                              0x0000000A
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define BF_LEFT                                                  0x00000001
#define BF_TOP                                                   0x00000002
#define BF_TOPLEFT                                               0x00000003
#define BF_RIGHT                                                 0x00000004
#define BF_TOPRIGHT                                              0x00000006
#define BF_BOTTOM                                                0x00000008
#define BF_BOTTOMLEFT                                            0x00000009
#define BF_BOTTOMRIGHT                                           0x0000000C
#define BF_RECT                                                  0x0000000F
#define BF_DIAGONAL                                              0x00000010
#define BF_DIAGONAL_ENDTOPLEFT                                   0x00000013
#define BF_DIAGONAL_ENDTOPRIGHT                                  0x00000016
#define BF_DIAGONAL_ENDBOTTOMLEFT                                0x00000019
#define BF_DIAGONAL_ENDBOTTOMRIGHT                               0x0000001C
#define BF_MIDDLE                                                0x00000800
#define BF_SOFT                                                  0x00001000
#define BF_ADJUST                                                0x00002000
#define BF_FLAT                                                  0x00004000
#define BF_MONO                                                  0x00008000
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define DFC_CAPTION                                              0x00000001
#define DFC_MENU                                                 0x00000002
#define DFC_SCROLL                                               0x00000003
#define DFC_BUTTON                                               0x00000004
#define DFC_POPUPMENU                                            0x00000005
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define DFCS_CAPTIONCLOSE                                        0x00000000
#define DFCS_MENUARROW                                           0x00000000
#define DFCS_SCROLLUP                                            0x00000000
#define DFCS_BUTTONCHECK                                         0x00000000
#define DFCS_CAPTIONMIN                                          0x00000001
#define DFCS_MENUCHECK                                           0x00000001
#define DFCS_SCROLLDOWN                                          0x00000001
#define DFCS_BUTTONRADIOIMAGE                                    0x00000001
#define DFCS_CAPTIONMAX                                          0x00000002
#define DFCS_MENUBULLET                                          0x00000002
#define DFCS_SCROLLLEFT                                          0x00000002
#define DFCS_BUTTONRADIOMASK                                     0x00000002
#define DFCS_CAPTIONRESTORE                                      0x00000003
#define DFCS_SCROLLRIGHT                                         0x00000003
#define DFCS_CAPTIONHELP                                         0x00000004
#define DFCS_MENUARROWRIGHT                                      0x00000004
#define DFCS_BUTTONRADIO                                         0x00000004
#define DFCS_SCROLLCOMBOBOX                                      0x00000005
#define DFCS_SCROLLSIZEGRIP                                      0x00000008
#define DFCS_BUTTON3STATE                                        0x00000008
#define DFCS_SCROLLSIZEGRIPRIGHT                                 0x00000010
#define DFCS_BUTTONPUSH                                          0x00000010
#define DFCS_INACTIVE                                            0x00000100
#define DFCS_PUSHED                                              0x00000200
#define DFCS_CHECKED                                             0x00000400
#define DFCS_TRANSPARENT                                         0x00000800
#define DFCS_HOT                                                 0x00001000
#define DFCS_ADJUSTRECT                                          0x00002000
#define DFCS_FLAT                                                0x00004000
#define DFCS_MONO                                                0x00008000
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define DST_COMPLEX                                              0x00000000
#define DST_TEXT                                                 0x00000001
#define DST_PREFIXTEXT                                           0x00000002
#define DST_ICON                                                 0x00000003
#define DST_BITMAP                                               0x00000004
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define DSS_NORMAL                                               0x00000000
#define DSS_UNION                                                0x00000010
#define DSS_DISABLED                                             0x00000020
#define DSS_MONO                                                 0x00000080
#define DSS_RIGHT                                                0x00008000
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define DT_LEFT                                                  0x00000000
#define DT_TOP                                                   0x00000000
#define DT_CENTER                                                0x00000001
#define DT_RIGHT                                                 0x00000002
#define DT_VCENTER                                               0x00000004
#define DT_BOTTOM                                                0x00000008
#define DT_WORDBREAK                                             0x00000010
#define DT_SINGLELINE                                            0x00000020
#define DT_EXPANDTABS                                            0x00000040
#define DT_TABSTOP                                               0x00000080
#define DT_NOCLIP                                                0x00000100
#define DT_EXTERNALLEADING                                       0x00000200
#define DT_CALCRECT                                              0x00000400
#define DT_NOPREFIX                                              0x00000800
#define DT_INTERNAL                                              0x00001000
#define DT_EDITCONTROL                                           0x00002000
#define DT_PATH_ELLIPSIS                                         0x00004000
#define DT_END_ELLIPSIS                                          0x00008000
#define DT_MODIFYSTRING                                          0x00010000
#define DT_RTLREADING                                            0x00020000
#define DT_WORD_ELLIPSIS                                         0x00040000
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define WB_LEFT                                                  0x00000000
#define WB_RIGHT                                                 0x00000001
#define WB_ISDELIMITER                                           0x00000002
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define SB_HORZ                                                  0x00000000
#define SB_LINELEFT                                              0x00000000
#define SB_LINEUP                                                0x00000000
#define SB_VERT                                                  0x00000001
#define SB_LINEDOWN                                              0x00000001
#define SB_LINERIGHT                                             0x00000001
#define SB_PAGEUP                                                0x00000002
#define SB_PAGELEFT                                              0x00000002
#define SB_CTL                                                   0x00000002
#define SB_PAGEDOWN                                              0x00000003
#define SB_PAGERIGHT                                             0x00000003
#define SB_BOTH                                                  0x00000003
#define SB_THUMBPOSITION                                         0x00000004
#define SB_THUMBTRACK                                            0x00000005
#define SB_LEFT                                                  0x00000006
#define SB_TOP                                                   0x00000006
#define SB_RIGHT                                                 0x00000007
#define SB_BOTTOM                                                0x00000007
#define SB_ENDSCROLL                                             0x00000008
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define ESB_ENABLE_BOTH                                          0x00000000
#define ESB_DISABLE_LEFT                                         0x00000001
#define ESB_DISABLE_LTUP                                         0x00000001
#define ESB_DISABLE_UP                                           0x00000001
#define ESB_DISABLE_DOWN                                         0x00000002
#define ESB_DISABLE_RIGHT                                        0x00000002
#define ESB_DISABLE_RTDN                                         0x00000002
#define ESB_DISABLE_BOTH                                         0x00000003
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define IS_INTRESOURCE(i)   (((ULONG_PTR)(i) >> 16) == 0)
#define MAKEINTRESOURCEA(i) (LPSTR)((DWORD)((WORD)(i)))
#define MAKEINTRESOURCEW(i) (LPWSTR)((DWORD)((WORD)(i)))
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define RT_CURSOR                                                0x00000001
#define RT_BITMAP                                                0x00000002
#define RT_ICON                                                  0x00000003
#define RT_MENU                                                  0x00000004
#define RT_DIALOG                                                0x00000005
#define RT_STRING                                                0x00000006
#define RT_FONTDIR                                               0x00000007
#define RT_FONT                                                  0x00000008
#define RT_ACCELERATOR                                           0x00000009
#define RT_RCDATA                                                0x0000000A
#define RT_MESSAGETABLE                                          0x0000000B
#define RT_GROUP_CURSOR                                          0x0000000C
#define RT_GROUP_ICON                                            0x0000000E
#define RT_VERSION                                               0x00000010
#define RT_DLGINCLUDE                                            0x00000011
#define RT_PLUGPLAY                                              0x00000013
#define RT_VXD                                                   0x00000014
#define RT_ANICURSOR                                             0x00000015
#define RT_ANIICON                                               0x00000016
#define RT_HTML                                                  0x00000017
#define RT_MANIFEST                                              0x00000018
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define CREATEPROCESS_MANIFEST_RESOURCE_ID                       0x00000001
#define ISOLATIONAWARE_MANIFEST_RESOURCE_ID                      0x00000002
#define ISOLATIONAWARE_NOSTATICIMPORT_MANIFEST_RESOURCE_ID       0x00000003
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define EWX_LOGOFF                                               0x00000000
#define EWX_SHUTDOWN                                             0x00000001
#define EWX_REBOOT                                               0x00000002
#define EWX_FORCE                                                0x00000004
#define EWX_POWEROFF                                             0x00000008
#define EWX_FORCEIFHUNG                                          0x00000010
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define CS_VREDRAW                                               0x00000001
#define CS_HREDRAW                                               0x00000002
#define CS_KEYCVTWINDOW                                          0x00000004
#define CS_DBLCLKS                                               0x00000008
#define CS_OWNDC                                                 0x00000020
#define CS_CLASSDC                                               0x00000040
#define CS_PARENTDC                                              0x00000080
#define CS_NOKEYCVT                                              0x00000400
#define CS_NOCLOSE                                               0x00000200
#define CS_SAVEBITS                                              0x00000800
#define CS_BYTEALIGNCLIENT                                       0x00001000
#define CS_BYTEALIGNWINDOW                                       0x00002000
#define CS_GLOBALCLASS                                           0x00004000
#define CS_IME                                                   0x00010000
#define CS_DROPSHADOW                                            0x00020000
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define GCW_ATOM                                                 0xFFFFFFE0
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define GCL_MENUNAME                                             0xFFFFFFF8
#define GCL_HBRBACKGROUND                                        0xFFFFFFF6
#define GCL_HCURSOR                                              0xFFFFFFF4
#define GCL_HICON                                                0xFFFFFFF2
#define GCL_HMODULE                                              0xFFFFFFF0
#define GCL_CBWNDEXTRA                                           0xFFFFFFEE
#define GCL_CBCLSEXTRA                                           0xFFFFFFEC
#define GCL_WNDPROC                                              0xFFFFFFE8
#define GCL_STYLE                                                0xFFFFFFE6
#define GCL_HICONSM                                              0xFFFFFFDE
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define GCLP_MENUNAME                                            0xFFFFFFF8
#define GCLP_HBRBACKGROUND                                       0xFFFFFFF6
#define GCLP_HCURSOR                                             0xFFFFFFF4
#define GCLP_HICON                                               0xFFFFFFF2
#define GCLP_HMODULE                                             0xFFFFFFF0
#define GCLP_WNDPROC                                             0xFFFFFFE8
#define GCLP_HICONSM                                             0xFFFFFFDE
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#if 0
    /* This is supposed to be defined by the program using it not defined
       in the w32api headers.  I've left it here for documentation purposes.
    */
#ifndef IDC_STATIC  /* May be predefined by resource compiler. */
#define IDC_STATIC                                               0xFFFFFFFF
#endif
#endif
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define IDC_ARROW                                                0x00007F00
#define IDC_IBEAM                                                0x00007F01
#define IDC_WAIT                                                 0x00007F02
#define IDC_CROSS                                                0x00007F03
#define IDC_UPARROW                                              0x00007F04
#define IDC_SIZE                                                 0x00007F80
#define IDC_ICON                                                 0x00007F81
#define IDC_SIZENWSE                                             0x00007F82
#define IDC_SIZENESW                                             0x00007F83
#define IDC_SIZEWE                                               0x00007F84
#define IDC_SIZENS                                               0x00007F85
#define IDC_SIZEALL                                              0x00007F86
#define IDC_NO                                                   0x00007F88
#define IDC_HAND                                                 0x00007F89
#define IDC_APPSTARTING                                          0x00007F8A
#define IDC_HELP                                                 0x00007F8B
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define IDI_APPLICATION                                          0x00007F00
#define IDI_HAND                                                 0x00007F01
#define IDI_ERROR                                                0x00007F01
#define IDI_QUESTION                                             0x00007F02
#define IDI_EXCLAMATION                                          0x00007F03
#define IDI_WARNING                                              0x00007F03
#define IDI_ASTERISK                                             0x00007F04
#define IDI_INFORMATION                                          0x00007F04
#define IDI_WINLOGO                                              0x00007F05
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define MIIM_STATE                                               0x00000001
#define MIIM_ID                                                  0x00000002
#define MIIM_SUBMENU                                             0x00000004
#define MIIM_CHECKMARKS                                          0x00000008
#define MIIM_TYPE                                                0x00000010
#define MIIM_DATA                                                0x00000020
#define MIIM_STRING                                              0x00000040
#define MIIM_BITMAP                                              0x00000080
#define MIIM_FTYPE                                               0x00000100
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define MIM_MAXHEIGHT                                            0x00000001
#define MIM_BACKGROUND                                           0x00000002
#define MIM_HELPID                                               0x00000004
#define MIM_MENUDATA                                             0x00000008
#define MIM_STYLE                                                0x00000010
#define MIM_APPLYTOSUBMENUS                                      0x80000000
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define MNS_CHECKORBMP                                           0x04000000
#define MNS_NOTIFYBYPOS                                          0x08000000
#define MNS_AUTODISMISS                                          0x10000000
#define MNS_DRAGDROP                                             0x20000000
#define MNS_MODELESS                                             0x40000000
#define MNS_NOCHECK                                              0x80000000
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define MFT_STRING                                               0x00000000
#define MFT_BITMAP                                               0x00000004
#define MFT_MENUBARBREAK                                         0x00000020
#define MFT_MENUBREAK                                            0x00000040
#define MFT_OWNERDRAW                                            0x00000100
#define MFT_RADIOCHECK                                           0x00000200
#define MFT_SEPARATOR                                            0x00000800
#define MFT_RIGHTORDER                                           0x00002000
#define MFT_RIGHTJUSTIFY                                         0x00004000
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define MFS_ENABLED                                              0x00000000
#define MFS_UNCHECKED                                            0x00000000
#define MFS_UNHILITE                                             0x00000000
#define MFS_DISABLED                                             0x00000003
#define MFS_GRAYED                                               0x00000003
#define MFS_CHECKED                                              0x00000008
#define MFS_HILITE                                               0x00000080
#define MFS_DEFAULT                                              0x00001000
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define GW_HWNDFIRST                                             0x00000000
#define GW_HWNDLAST                                              0x00000001
#define GW_HWNDNEXT                                              0x00000002
#define GW_HWNDPREV                                              0x00000003
#define GW_OWNER                                                 0x00000004
#define GW_CHILD                                                 0x00000005
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define SW_HIDE                                                  0x00000000
#define SW_NORMAL                                                0x00000001
#define SW_SHOWNORMAL                                            0x00000001
#define SW_SHOWMINIMIZED                                         0x00000002
#define SW_MAXIMIZE                                              0x00000003
#define SW_SHOWMAXIMIZED                                         0x00000003
#define SW_SHOWNOACTIVATE                                        0x00000004
#define SW_SHOW                                                  0x00000005
#define SW_MINIMIZE                                              0x00000006
#define SW_SHOWMINNOACTIVE                                       0x00000007
#define SW_SHOWNA                                                0x00000008
#define SW_RESTORE                                               0x00000009
#define SW_SHOWDEFAULT                                           0x00000010
#define SW_FORCEMINIMIZE                                         0x00000011
#define SW_MAX                                                   0x00000011
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define MB_OK                                                    0x00000000
#define MB_APPLMODAL                                             0x00000000
#define MB_DEFBUTTON1                                            0x00000000
#define MB_OKCANCEL                                              0x00000001
#define MB_ABORTRETRYIGNORE                                      0x00000002
#define MB_YESNOCANCEL                                           0x00000003
#define MB_YESNO                                                 0x00000004
#define MB_RETRYCANCEL                                           0x00000005
#define MB_CANCELTRYCONTINUE                                     0x00000006
#define MB_TYPEMASK                                              0x0000000F
#define MB_ICONERROR                                             0x00000010
#define MB_ICONHAND                                              0x00000010
#define MB_ICONSTOP                                              0x00000010
#define MB_ICONQUESTION                                          0x00000020
#define MB_ICONEXCLAMATION                                       0x00000030
#define MB_ICONWARNING                                           0x00000030
#define MB_ICONASTERISK                                          0x00000040
#define MB_ICONINFORMATION                                       0x00000040
#define MB_USERICON                                              0x00000080
#define MB_ICONMASK                                              0x000000F0
#define MB_DEFBUTTON2                                            0x00000100
#define MB_DEFBUTTON3                                            0x00000200
#define MB_DEFBUTTON4                                            0x00000300
#define MB_DEFMASK                                               0x00000F00
#define MB_SYSTEMMODAL                                           0x00001000
#define MB_TASKMODAL                                             0x00002000
#define MB_MODEMASK                                              0x00003000
#define MB_HELP                                                  0x00004000
#define MB_NOFOCUS                                               0x00008000
#define MB_MISCMASK                                              0x0000C000
#define MB_SETFOREGROUND                                         0x00010000
#define MB_DEFAULT_DESKTOP_ONLY                                  0x00020000
#define MB_TOPMOST                                               0x00040000
#define MB_SERVICE_NOTIFICATION                                  0x00040000     /* NT <       0x0400 */
#define MB_SERVICE_NOTIFICATION_NT3X                             0x00040000     /* NT >=      0x0400 */
#define MB_RIGHT                                                 0x00080000
#define MB_RTLREADING                                            0x00100000
#define MB_SERVICE_NOTIFICATION                                  0x00200000     /* NT >=      0x0400 */
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define IDOK                                                     0x00000001
#define IDCANCEL                                                 0x00000002
#define IDABORT                                                  0x00000003
#define IDRETRY                                                  0x00000004
#define IDIGNORE                                                 0x00000005
#define IDYES                                                    0x00000006
#define IDNO                                                     0x00000007
#define IDCLOSE                                                  0x00000008
#define IDHELP                                                   0x00000009
#define IDTRYAGAIN                                               0x0000000A
#define IDCONTINUE                                               0x0000000B
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define GWL_WNDPROC                                              0xFFFFFFFC
#define GWLP_WNDPROC                                             0xFFFFFFFC
#define GWL_HINSTANCE                                            0xFFFFFFFA
#define GWLP_HINSTANCE                                           0xFFFFFFFA
#define GWL_HWNDPARENT                                           0xFFFFFFF8
#define GWLP_HWNDPARENT                                          0xFFFFFFF8
#define GWL_ID                                                   0xFFFFFFF4
#define GWLP_ID                                                  0xFFFFFFF4
#define GWL_STYLE                                                0xFFFFFFF0
#define GWL_EXSTYLE                                              0xFFFFFFEC
#define GWL_USERDATA                                             0xFFFFFFEB
#define GWLP_USERDATA                                            0xFFFFFFEB
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define DWL_MSGRESULT                                            0x00000000
#define DWLP_MSGRESULT                                           0x00000000
#define DWL_DLGPROC                                              0x00000004
#define DWLP_DLGPROC                                             0x00000004
#define DWL_USER                                                 0x00000008
#define DWLP_USER                                                0x00000008
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define QS_KEY                                                   0x00000001
#define QS_MOUSEMOVE                                             0x00000002
#define QS_MOUSEBUTTON                                           0x00000004
#define QS_MOUSE                                                 0x00000006
#define QS_INPUT                                                 0x00000007     /* NT ->      0x0500 */
#define QS_POSTMESSAGE                                           0x00000008
#define QS_TIMER                                                 0x00000010
#define QS_PAINT                                                 0x00000020
#define QS_SENDMESSAGE                                           0x00000040
#define QS_HOTKEY                                                0x00000080
#define QS_ALLEVENTS                                             0x000000BF     /* NT ->      0x0500 */
#define QS_ALLINPUT                                              0x000000FF     /* NT ->      0x0500 */
#define QS_ALLPOSTMESSAGE                                        0x00000100
#define QS_RAWINPUT                                              0x00000400     /* NT      0x0501 -> */
#define QS_INPUT                                                 0x00000407     /* NT      0x0501 -> */
#define QS_ALLEVENTS                                             0x000004BF     /* NT      0x0501 -> */
#define QS_ALLINPUT                                              0x000004FF     /* NT      0x0501 -> */
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define MWMO_WAITALL                                             0x00000001
#define MWMO_ALERTABLE                                           0x00000002
#define MWMO_INPUTAVAILABLE                                      0x00000004
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define COLOR_SCROLLBAR                                          0x00000000
#define COLOR_BACKGROUND                                         0x00000001
#define COLOR_DESKTOP                                            0x00000001
#define COLOR_ACTIVECAPTION                                      0x00000002
#define COLOR_INACTIVECAPTION                                    0x00000003
#define COLOR_MENU                                               0x00000004
#define COLOR_WINDOW                                             0x00000005
#define COLOR_WINDOWFRAME                                        0x00000006
#define COLOR_MENUTEXT                                           0x00000007
#define COLOR_WINDOWTEXT                                         0x00000008
#define COLOR_CAPTIONTEXT                                        0x00000009
#define COLOR_ACTIVEBORDER                                       0x0000000A
#define COLOR_INACTIVEBORDER                                     0x0000000B
#define COLOR_APPWORKSPACE                                       0x0000000C
#define COLOR_HIGHLIGHT                                          0x0000000D
#define COLOR_HIGHLIGHTTEXT                                      0x0000000E
#define COLOR_3DFACE                                             0x0000000F
#define COLOR_BTNFACE                                            0x0000000F
#define COLOR_3DSHADOW                                           0x00000010
#define COLOR_BTNSHADOW                                          0x00000010
#define COLOR_GRAYTEXT                                           0x00000011
#define COLOR_BTNTEXT                                            0x00000012
#define COLOR_INACTIVECAPTIONTEXT                                0x00000013
#define COLOR_3DHILIGHT                                          0x00000014
#define COLOR_3DHIGHLIGHT                                        0x00000014
#define COLOR_BTNHILIGHT                                         0x00000014
#define COLOR_BTNHIGHLIGHT                                       0x00000014
#define COLOR_3DDKSHADOW                                         0x00000015
#define COLOR_3DLIGHT                                            0x00000016
#define COLOR_INFOTEXT                                           0x00000017
#define COLOR_INFOBK                                             0x00000018
#define COLOR_HOTLIGHT                                           0x0000001A
#define COLOR_GRADIENTACTIVECAPTION                              0x0000001B
#define COLOR_GRADIENTINACTIVECAPTION                            0x0000001C
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define CTLCOLOR_MSGBOX                                          0x00000000
#define CTLCOLOR_EDIT                                            0x00000001
#define CTLCOLOR_LISTBOX                                         0x00000002
#define CTLCOLOR_BTN                                             0x00000003
#define CTLCOLOR_DLG                                             0x00000004
#define CTLCOLOR_SCROLLBAR                                       0x00000005
#define CTLCOLOR_STATIC                                          0x00000006
#define CTLCOLOR_MAX                                             0x00000007
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define SM_CXSCREEN                                              0x00000000
#define SM_CYSCREEN                                              0x00000001
#define SM_CXVSCROLL                                             0x00000002
#define SM_CYHSCROLL                                             0x00000003
#define SM_CYCAPTION                                             0x00000004
#define SM_CXBORDER                                              0x00000005
#define SM_CYBORDER                                              0x00000006
#define SM_CXDLGFRAME                                            0x00000007
#define SM_CXFIXEDFRAME                                          0x00000007
#define SM_CYDLGFRAME                                            0x00000008
#define SM_CYFIXEDFRAME                                          0x00000008
#define SM_CYVTHUMB                                              0x00000009
#define SM_CXHTHUMB                                              0x0000000A
#define SM_CXICON                                                0x0000000B
#define SM_CYICON                                                0x0000000C
#define SM_CXCURSOR                                              0x0000000D
#define SM_CYCURSOR                                              0x0000000E
#define SM_CYMENU                                                0x0000000F
#define SM_CXFULLSCREEN                                          0x00000010
#define SM_CYFULLSCREEN                                          0x00000011
#define SM_CYKANJIWINDOW                                         0x00000012
#define SM_MOUSEPRESENT                                          0x00000013
#define SM_CYVSCROLL                                             0x00000014
#define SM_CXHSCROLL                                             0x00000015
#define SM_DEBUG                                                 0x00000016
#define SM_SWAPBUTTON                                            0x00000017
#define SM_RESERVED1                                             0x00000018
#define SM_RESERVED2                                             0x00000019
#define SM_RESERVED3                                             0x0000001A
#define SM_RESERVED4                                             0x0000001B
#define SM_CXMIN                                                 0x0000001C
#define SM_CYMIN                                                 0x0000001D
#define SM_CXSIZE                                                0x0000001E
#define SM_CYSIZE                                                0x0000001F
#define SM_CXSIZEFRAME                                           0x00000020
#define SM_CXFRAME                                               0x00000020
#define SM_CYSIZEFRAME                                           0x00000021
#define SM_CYFRAME                                               0x00000021
#define SM_CXMINTRACK                                            0x00000022
#define SM_CYMINTRACK                                            0x00000023
#define SM_CXDOUBLECLK                                           0x00000024
#define SM_CYDOUBLECLK                                           0x00000025
#define SM_CXICONSPACING                                         0x00000026
#define SM_CYICONSPACING                                         0x00000027
#define SM_MENUDROPALIGNMENT                                     0x00000028
#define SM_PENWINDOWS                                            0x00000029
#define SM_DBCSENABLED                                           0x0000002A
#define SM_CMOUSEBUTTONS                                         0x0000002B
#define SM_SECURE                                                0x0000002C
#define SM_CXEDGE                                                0x0000002D
#define SM_CYEDGE                                                0x0000002E
#define SM_CXMINSPACING                                          0x0000002F
#define SM_CYMINSPACING                                          0x00000030
#define SM_CXSMICON                                              0x00000031
#define SM_CYSMICON                                              0x00000032
#define SM_CYSMCAPTION                                           0x00000033
#define SM_CXSMSIZE                                              0x00000034
#define SM_CYSMSIZE                                              0x00000035
#define SM_CXMENUSIZE                                            0x00000036
#define SM_CYMENUSIZE                                            0x00000037
#define SM_ARRANGE                                               0x00000038
#define SM_CXMINIMIZED                                           0x00000039
#define SM_CYMINIMIZED                                           0x0000003A
#define SM_CXMAXTRACK                                            0x0000003B
#define SM_CYMAXTRACK                                            0x0000003C
#define SM_CXMAXIMIZED                                           0x0000003D
#define SM_CYMAXIMIZED                                           0x0000003E
#define SM_NETWORK                                               0x0000003F
#define SM_CLEANBOOT                                             0x00000043
#define SM_CXDRAG                                                0x00000044
#define SM_CYDRAG                                                0x00000045
#define SM_SHOWSOUNDS                                            0x00000046
#define SM_CXMENUCHECK                                           0x00000047
#define SM_CYMENUCHECK                                           0x00000048
#define SM_SLOWMACHINE                                           0x00000049
#define SM_MIDEASTENABLED                                        0x0000004A
#define SM_MOUSEWHEELPRESENT                                     0x0000004B
#define SM_XVIRTUALSCREEN                                        0x0000004C
#define SM_CMETRICS                                              0x0000004C     /* NT ->      0x0400 */
#define SM_YVIRTUALSCREEN                                        0x0000004D
#define SM_CXVIRTUALSCREEN                                       0x0000004E
#define SM_CYVIRTUALSCREEN                                       0x0000004F
#define SM_CMONITORS                                             0x00000050
#define SM_SAMEDISPLAYFORMAT                                     0x00000051
#define SM_IMMENABLED                                            0x00000052
#define SM_CXFOCUSBORDER                                         0x00000053
#define SM_CYFOCUSBORDER                                         0x00000054
#define SM_TABLETPC                                              0x00000056
#define SM_MEDIACENTER                                           0x00000057
#define SM_STARTER                                               0x00000058
#define SM_CMETRICS                                              0x00000058     /* NT      0x0401 -> */
#define SM_SERVERR2                                              0x00000059
#define SM_REMOTESESSION                                    0X00001000
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define ARW_BOTTOMLEFT                                           0x00000000
#define ARW_LEFT                                                 0x00000000
#define ARW_RIGHT                                                0x00000000
#define ARW_BOTTOMRIGHT                                          0x00000001
#define ARW_TOPLEFT                                              0x00000002
#define ARW_TOPRIGHT                                             0x00000003
#define ARW_DOWN                                                 0x00000004
#define ARW_UP                                                   0x00000004
#define ARW_HIDE                                                 0x00000008
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define UOI_FLAGS                                                0x00000001
#define UOI_NAME                                                 0x00000002
#define UOI_TYPE                                                 0x00000003
#define UOI_USER_SID                                             0x00000004
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define LR_DEFAULTCOLOR                                          0x00000000
#define LR_MONOCHROME                                            0x00000001
#define LR_COLOR                                                 0x00000002
#define LR_COPYRETURNORG                                         0x00000004
#define LR_COPYDELETEORG                                         0x00000008
#define LR_LOADFROMFILE                                          0x00000010
#define LR_LOADTRANSPARENT                                       0x00000020
#define LR_DEFAULTSIZE                                           0x00000040
#define LR_LOADREALSIZE                                          0x00000080
#define LR_VGACOLOR                                              0x00000080
#define LR_LOADMAP3DCOLORS                                       0x00001000
#define LR_CREATEDIBSECTION                                      0x00002000
#define LR_COPYFROMRESOURCE                                      0x00004000
#define LR_SHARED                                                0x00008000
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define KEYEVENTF_EXTENDEDKEY                                    0x00000001
#define KEYEVENTF_KEYUP                                     0000000002
#define KEYEVENTF_UNICODE                                        0x00000004
#define KEYEVENTF_SCANCODE                                       0x00000008
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define OBM_LFARROWI                                             0x00007FDE
#define OBM_RGARROWI                                             0x00007FDF
#define OBM_DNARROWI                                             0x00007FE0
#define OBM_UPARROWI                                             0x00007FE1
#define OBM_COMBO                                                0x00007FE2
#define OBM_MNARROW                                              0x00007FE3
#define OBM_LFARROWD                                             0x00007FE4
#define OBM_RGARROWD                                             0x00007FE5
#define OBM_DNARROWD                                             0x00007FE6
#define OBM_UPARROWD                                             0x00007FE7
#define OBM_RESTORED                                             0x00007FE8
#define OBM_ZOOMD                                                0x00007FE9
#define OBM_REDUCED                                              0x00007FEA
#define OBM_RESTORE                                              0x00007FEB
#define OBM_ZOOM                                                 0x00007FEC
#define OBM_REDUCE                                               0x00007FED
#define OBM_LFARROW                                              0x00007FEE
#define OBM_RGARROW                                              0x00007FEF
#define OBM_DNARROW                                              0x00007FF0
#define OBM_UPARROW                                              0x00007FF1
#define OBM_CLOSE                                                0x00007FF2
#define OBM_OLD_RESTORE                                          0x00007FF3
#define OBM_OLD_ZOOM                                             0x00007FF4
#define OBM_OLD_REDUCE                                           0x00007FF5
#define OBM_BTNCORNERS                                           0x00007FF6
#define OBM_CHECKBOXES                                           0x00007FF7
#define OBM_CHECK                                                0x00007FF8
#define OBM_BTSIZE                                               0x00007FF9
#define OBM_OLD_LFARROW                                          0x00007FFA
#define OBM_OLD_RGARROW                                          0x00007FFB
#define OBM_OLD_DNARROW                                          0x00007FFC
#define OBM_OLD_UPARROW                                          0x00007FFD
#define OBM_SIZE                                                 0x00007FFE
#define OBM_OLD_CLOSE                                            0x00007FFF
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define OCR_NORMAL                                               0x00007F00
#define OCR_IBEAM                                                0x00007F01
#define OCR_WAIT                                                 0x00007F02
#define OCR_CROSS                                                0x00007F03
#define OCR_UP                                                   0x00007F04
#define OCR_SIZE                                                 0x00007F80
#define OCR_ICON                                                 0x00007F81
#define OCR_SIZENWSE                                             0x00007F82
#define OCR_SIZENESW                                             0x00007F83
#define OCR_SIZEWE                                               0x00007F84
#define OCR_SIZENS                                               0x00007F85
#define OCR_SIZEALL                                              0x00007F86
#define OCR_NO                                                   0x00007F88
#define OCR_APPSTARTING                                          0x00007F8A
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define OIC_SAMPLE                                               0x00007F00
#define OIC_HAND                                                 0x00007F01
#define OIC_ERROR                                                0x00007F01
#define OIC_QUES                                                 0x00007F02
#define OIC_BANG                                                 0x00007F03
#define OIC_WARNING                                              0x00007F03
#define OIC_NOTE                                                 0x00007F04
#define OIC_INFORMATION                                          0x00007F04
#define OIC_WINLOGO                                              0x00007F05
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define HELPINFO_WINDOW                                          0x00000001
#define HELPINFO_MENUITEM                                        0x00000002
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define MSGF_DIALOGBOX                                           0x00000000
#define MSGF_MESSAGEBOX                                          0x00000001
#define MSGF_MENU                                                0x00000002
#define MSGF_MOVE                                                0x00000003
#define MSGF_SIZE                                                0x00000004
#define MSGF_SCROLLBAR                                           0x00000005
#define MSGF_NEXTWINDOW                                          0x00000006
#define MSGF_MAINLOOP                                            0x00000008
#define MSGF_USER                                                0x00001000
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define MOUSEEVENTF_MOVE                                         0x00000001
#define MOUSEEVENTF_LEFTDOWN                                     0x00000002
#define MOUSEEVENTF_LEFTUP                                       0x00000004
#define MOUSEEVENTF_RIGHTDOWN                                    0x00000008
#define MOUSEEVENTF_RIGHTUP                                      0x00000010
#define MOUSEEVENTF_MIDDLEDOWN                                   0x00000020
#define MOUSEEVENTF_MIDDLEUP                                     0x00000040
#define MOUSEEVENTF_XDOWN                                        0x00000080
#define MOUSEEVENTF_XUP                                          0x00000100
#define MOUSEEVENTF_WHEEL                                        0x00000800
#define MOUSEEVENTF_ABSOLUTE                                     0x00008000
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define PBT_APMQUERYSUSPEND                                      0x00000000
#define PBT_APMQUERYSTANDBY                                      0x00000001
#define PBT_APMQUERYSUSPENDFAILED                                0x00000002
#define PBT_APMQUERYSTANDBYFAILED                                0x00000003
#define PBT_APMSUSPEND                                           0x00000004
#define PBT_APMSTANDBY                                           0x00000005
#define PBT_APMRESUMECRITICAL                                    0x00000006
#define PBT_APMRESUMESUSPEND                                     0x00000007
#define PBT_APMRESUMESTANDBY                                     0x00000008
#define PBT_APMBATTERYLOW                                        0x00000009
#define PBT_APMPOWERSTATUSCHANGE                                 0x0000000A
#define PBT_APMOEMEVENT                                          0x0000000B
#define PBT_APMRESUMEAUTOMATIC                                   0x00000012
#define PBT_POWERSETTINGCHANGE                                   0x00008013
#define PBTF_APMRESUMEFROMFAILURE                                0x00000001
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define PM_NOREMOVE                                              0x00000000
#define PM_REMOVE                                                0x00000001
#define PM_NOYIELD                                               0x00000002
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                               NT >=         0x0500
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# define PM_QS_INPUT (QS_INPUT << 16)
# define PM_QS_POSTMESSAGE ((QS_POSTMESSAGE|QS_HOTKEY|QS_TIMER) << 16)
# define PM_QS_PAINT (QS_PAINT << 16)
# define PM_QS_SENDMESSAGE (QS_SENDMESSAGE << 16)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define HWND_DESKTOP                                             0x00000000
#define HWND_TOP                                                 0x00000000
#define HWND_BOTTOM                                              0x00000001
#define HWND_MESSAGE                                             0xFFFFFFFD
#define HWND_NOTOPMOST                                           0xFFFFFFFE
#define HWND_BROADCAST                                           0x0000FFFF
#define HWND_TOPMOST                                             0xFFFFFFFF
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define RDW_INVALIDATE                                           0x00000001
#define RDW_INTERNALPAINT                                        0x00000002
#define RDW_ERASE                                                0x00000004
#define RDW_VALIDATE                                             0x00000008
#define RDW_NOINTERNALPAINT                                      0x00000010
#define RDW_NOERASE                                              0x00000020
#define RDW_NOCHILDREN                                           0x00000040
#define RDW_ALLCHILDREN                                          0x00000080
#define RDW_UPDATENOW                                            0x00000100
#define RDW_ERASENOW                                             0x00000200
#define RDW_FRAME                                                0x00000400
#define RDW_NOFRAME                                              0x00000800
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define SMTO_NORMAL                                              0x00000000
#define SMTO_BLOCK                                               0x00000001
#define SMTO_ABORTIFHUNG                                         0x00000002
#define SMTO_NOTIMEOUTIFNOTHUNG                                  0x00000008
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define SIF_RANGE                                                0x00000001
#define SIF_PAGE                                                 0x00000002
#define SIF_POS                                                  0x00000004
#define SIF_DISABLENOSCROLL                                      0x00000008
#define SIF_TRACKPOS                                             0x00000010
#define SIF_ALL                                                  0x00000017
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define SWP_NOSIZE                                               0x00000001
#define SWP_NOMOVE                                               0x00000002
#define SWP_NOZORDER                                             0x00000004
#define SWP_NOREDRAW                                             0x00000008
#define SWP_NOACTIVATE                                           0x00000010
#define SWP_DRAWFRAME                                            0x00000020
#define SWP_FRAMECHANGED                                         0x00000020
#define SWP_SHOWWINDOW                                           0x00000040
#define SWP_HIDEWINDOW                                           0x00000080
#define SWP_NOCOPYBITS                                           0x00000100
#define SWP_NOOWNERZORDER                                        0x00000200
#define SWP_NOREPOSITION                                         0x00000200
#define SWP_NOSENDCHANGING                                       0x00000400
#define SWP_DEFERERASE                                           0x00002000
#define SWP_ASYNCWINDOWPOS                                       0x00004000
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define HSHELL_WINDOWCREATED                                     0x00000001
#define HSHELL_WINDOWDESTROYED                                   0x00000002
#define HSHELL_ACTIVATESHELLWINDOW                               0x00000003
#define HSHELL_WINDOWACTIVATED                                   0x00000004
#define HSHELL_GETMINRECT                                        0x00000005
#define HSHELL_REDRAW                                            0x00000006
#define HSHELL_TASKMAN                                           0x00000007
#define HSHELL_LANGUAGE                                          0x00000008
#define HSHELL_ENDTASK                                           0x0000000A
#define HSHELL_ACCESSIBILITYSTATE                                0x0000000B
#define HSHELL_APPCOMMAND                                        0x0000000C
#define HSHELL_WINDOWREPLACED                                    0x0000000D
#define HSHELL_WINDOWREPLACING                                   0x0000000E
#define HSHELL_RUDEAPPACTIVATED                                  0x00008004
#define HSHELL_FLASH                                             0x00008006
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define SPI_GETBEEP                                              0x00000001
#define SPI_SETBEEP                                              0x00000002
#define SPI_GETMOUSE                                             0x00000003
#define SPI_SETMOUSE                                             0x00000004
#define SPI_GETBORDER                                            0x00000005
#define SPI_SETBORDER                                            0x00000006
#define SPI_GETKEYBOARDSPEED                                     0x0000000A
#define SPI_SETKEYBOARDSPEED                                     0x0000000B
#define SPI_LANGDRIVER                                           0x0000000C
#define SPI_ICONHORIZONTALSPACING                                0x0000000D
#define SPI_GETSCREENSAVETIMEOUT                                 0x0000000E
#define SPI_SETSCREENSAVETIMEOUT                                 0x0000000F
#define SPI_GETSCREENSAVEACTIVE                                  0x00000010
#define SPI_SETSCREENSAVEACTIVE                                  0x00000011
#define SPI_GETGRIDGRANULARITY                                   0x00000012
#define SPI_SETGRIDGRANULARITY                                   0x00000013
#define SPI_SETDESKWALLPAPER                                     0x00000014
#define SPI_SETDESKPATTERN                                       0x00000015
#define SPI_GETKEYBOARDDELAY                                     0x00000016
#define SPI_SETKEYBOARDDELAY                                     0x00000017
#define SPI_ICONVERTICALSPACING                                  0x00000018
#define SPI_GETICONTITLEWRAP                                     0x00000019
#define SPI_GETMENUDROPALIGNMENT                                 0x0000001B
#define SPI_SETICONTITLEWRAP                                     0x0000001A
#define SPI_SETMENUDROPALIGNMENT                                 0x0000001C
#define SPI_SETDOUBLECLKWIDTH                                    0x0000001D
#define SPI_SETDOUBLECLKHEIGHT                                   0x0000001E
#define SPI_GETICONTITLELOGFONT                                  0x0000001F
#define SPI_SETDOUBLECLICKTIME                                   0x00000020
#define SPI_SETMOUSEBUTTONSWAP                                   0x00000021
#define SPI_SETICONTITLELOGFONT                                  0x00000022
#define SPI_GETFASTTASKSWITCH                                    0x00000023
#define SPI_SETFASTTASKSWITCH                                    0x00000024
#define SPI_SETDRAGFULLWINDOWS                                   0x00000025
#define SPI_GETDRAGFULLWINDOWS                                   0x00000026
#define SPI_GETNONCLIENTMETRICS                                  0x00000029
#define SPI_SETNONCLIENTMETRICS                                  0x0000002A
#define SPI_GETMINIMIZEDMETRICS                                  0x0000002B
#define SPI_SETMINIMIZEDMETRICS                                  0x0000002C
#define SPI_GETICONMETRICS                                       0x0000002D
#define SPI_SETICONMETRICS                                       0x0000002E
#define SPI_SETWORKAREA                                          0x0000002F
#define SPI_GETWORKAREA                                          0x00000030
#define SPI_SETPENWINDOWS                                        0x00000031
#define SPI_GETFILTERKEYS                                        0x00000032
#define SPI_SETFILTERKEYS                                        0x00000033
#define SPI_GETTOGGLEKEYS                                        0x00000034
#define SPI_SETTOGGLEKEYS                                        0x00000035
#define SPI_GETMOUSEKEYS                                         0x00000036
#define SPI_SETMOUSEKEYS                                         0x00000037
#define SPI_GETSHOWSOUNDS                                        0x00000038
#define SPI_SETSHOWSOUNDS                                        0x00000039
#define SPI_GETSTICKYKEYS                                        0x0000003A
#define SPI_SETSTICKYKEYS                                        0x0000003B
#define SPI_GETACCESSTIMEOUT                                     0x0000003C
#define SPI_SETACCESSTIMEOUT                                     0x0000003D
#define SPI_GETSERIALKEYS                                        0x0000003E
#define SPI_SETSERIALKEYS                                        0x0000003F
#define SPI_GETSOUNDSENTRY                                       0x00000040
#define SPI_SETSOUNDSENTRY                                       0x00000041
#define SPI_GETHIGHCONTRAST                                      0x00000042
#define SPI_SETHIGHCONTRAST                                      0x00000043
#define SPI_GETKEYBOARDPREF                                      0x00000044
#define SPI_SETKEYBOARDPREF                                      0x00000045
#define SPI_GETSCREENREADER                                      0x00000046
#define SPI_SETSCREENREADER                                      0x00000047
#define SPI_GETANIMATION                                         0x00000048
#define SPI_SETANIMATION                                         0x00000049
#define SPI_GETFONTSMOOTHING                                     0x0000004A
#define SPI_SETFONTSMOOTHING                                     0x0000004B
#define SPI_SETDRAGWIDTH                                         0x0000004C
#define SPI_SETDRAGHEIGHT                                        0x0000004D
#define SPI_SETHANDHELD                                          0x0000004E
#define SPI_GETLOWPOWERTIMEOUT                                   0x0000004F
#define SPI_GETPOWEROFFTIMEOUT                                   0x00000050
#define SPI_SETLOWPOWERTIMEOUT                                   0x00000051
#define SPI_SETPOWEROFFTIMEOUT                                   0x00000052
#define SPI_GETLOWPOWERACTIVE                                    0x00000053
#define SPI_GETPOWEROFFACTIVE                                    0x00000054
#define SPI_SETLOWPOWERACTIVE                                    0x00000055
#define SPI_SETPOWEROFFACTIVE                                    0x00000056
#define SPI_SETCURSORS                                           0x00000057
#define SPI_SETICONS                                             0x00000058
#define SPI_GETDEFAULTINPUTLANG                                  0x00000059
#define SPI_SETDEFAULTINPUTLANG                                  0x0000005A
#define SPI_SETLANGTOGGLE                                        0x0000005B
#define SPI_GETWINDOWSEXTENSION                                  0x0000005C
#define SPI_SETMOUSETRAILS                                       0x0000005D
#define SPI_GETMOUSETRAILS                                       0x0000005E
#define SPI_GETSNAPTODEFBUTTON                                   0x0000005F
#define SPI_SETSNAPTODEFBUTTON                                   0x00000060
#define SPI_SETSCREENSAVERRUNNING                                0x00000061
#define SPI_GETMOUSEHOVERWIDTH                                   0x00000062
#define SPI_SETMOUSEHOVERWIDTH                                   0x00000063
#define SPI_GETMOUSEHOVERHEIGHT                                  0x00000064
#define SPI_SETMOUSEHOVERHEIGHT                                  0x00000065
#define SPI_GETMOUSEHOVERTIME                                    0x00000066
#define SPI_SETMOUSEHOVERTIME                                    0x00000067
#define SPI_GETWHEELSCROLLLINES                                  0x00000068 
#define SPI_SETWHEELSCROLLLINES                                  0x00000069
#define SPI_GETMENUSHOWDELAY                                     0x0000006A
#define SPI_SETMENUSHOWDELAY                                     0x0000006B
#define SPI_GETSHOWIMEUI                                         0x0000006E
#define SPI_SETSHOWIMEUI                                         0x0000006F
#define SPI_GETMOUSESPEED                                        0x00000070
#define SPI_SETMOUSESPEED                                        0x00000071
#define SPI_GETSCREENSAVERRUNNING                                0x00000072
#define SPI_GETDESKWALLPAPER                                     0x00000073
#define SPI_GETACTIVEWINDOWTRACKING                              0x00001000
#define SPI_SETACTIVEWINDOWTRACKING                              0x00001001
#define SPI_GETMENUANIMATION                                     0x00001002
#define SPI_SETMENUANIMATION                                     0x00001003
#define SPI_GETCOMBOBOXANIMATION                                 0x00001004
#define SPI_SETCOMBOBOXANIMATION                                 0x00001005
#define SPI_GETLISTBOXSMOOTHSCROLLING                            0x00001006
#define SPI_SETLISTBOXSMOOTHSCROLLING                            0x00001007
#define SPI_GETGRADIENTCAPTIONS                                  0x00001008
#define SPI_SETGRADIENTCAPTIONS                                  0x00001009
#define SPI_GETKEYBOARDCUES                                      0x0000100A
#define SPI_GETMENUUNDERLINES                                    0x0000100A
#define SPI_SETMENUUNDERLINES                                    0x0000100A
#define SPI_SETKEYBOARDCUES                                      0x0000100B
#define SPI_GETACTIVEWNDTRKZORDER                                0x0000100C
#define SPI_SETACTIVEWNDTRKZORDER                                0x0000100D
#define SPI_GETHOTTRACKING                                       0x0000100E
#define SPI_SETHOTTRACKING                                       0x0000100F
#define SPI_GETMENUFADE                                          0x00001012
#define SPI_SETMENUFADE                                          0x00001013
#define SPI_GETSELECTIONFADE                                     0x00001014
#define SPI_SETSELECTIONFADE                                     0x00001015
#define SPI_GETTOOLTIPANIMATION                                  0x00001016
#define SPI_SETTOOLTIPANIMATION                                  0x00001017
#define SPI_GETTOOLTIPFADE                                       0x00001018
#define SPI_SETTOOLTIPFADE                                       0x00001019
#define SPI_GETCURSORSHADOW                                      0x0000101A
#define SPI_SETCURSORSHADOW                                      0x0000101B
#define SPI_GETMOUSESONAR                                        0x0000101C
#define SPI_SETMOUSESONAR                                        0x0000101D
#define SPI_GETMOUSECLICKLOCK                                    0x0000101E
#define SPI_SETMOUSECLICKLOCK                                    0x0000101F
#define SPI_GETMOUSEVANISH                                       0x00001020
#define SPI_SETMOUSEVANISH                                       0x00001021
#define SPI_GETFLATMENU                                          0x00001022
#define SPI_SETFLATMENU                                          0x00001023
#define SPI_GETDROPSHADOW                                        0x00001024
#define SPI_SETDROPSHADOW                                        0x00001025
#define SPI_GETBLOCKSENDINPUTRESETS                              0x00001026
#define SPI_SETBLOCKSENDINPUTRESETS                              0x00001027
#define SPI_GETUIEFFECTS                                         0x0000103E
#define SPI_SETUIEFFECTS                                         0x0000103F
#define SPI_GETFOREGROUNDLOCKTIMEOUT                             0x00002000
#define SPI_SETFOREGROUNDLOCKTIMEOUT                             0x00002001
#define SPI_GETACTIVEWNDTRKTIMEOUT                               0x00002002
#define SPI_SETACTIVEWNDTRKTIMEOUT                               0x00002003
#define SPI_GETFOREGROUNDFLASHCOUNT                              0x00002004
#define SPI_SETFOREGROUNDFLASHCOUNT                              0x00002005
#define SPI_GETCARETWIDTH                                        0x00002006
#define SPI_SETCARETWIDTH                                        0x00002007
#define SPI_GETMOUSECLICKLOCKTIME                                0x00002008
#define SPI_SETMOUSECLICKLOCKTIME                                0x00002009
#define SPI_GETFONTSMOOTHINGTYPE                                 0x0000200A
#define SPI_SETFONTSMOOTHINGTYPE                                 0x0000200B
#define SPI_GETFONTSMOOTHINGCONTRAST                             0x0000200C
#define SPI_SETFONTSMOOTHINGCONTRAST                             0x0000200D
#define SPI_GETFOCUSBORDERWIDTH                                  0x0000200E
#define SPI_SETFOCUSBORDERWIDTH                                  0x0000200F
#define SPI_GETFOCUSBORDERHEIGHT                                 0x00002010
#define SPI_SETFOCUSBORDERHEIGHT                                 0x00002011
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define SPIF_UPDATEINIFILE                                       0x00000001
#define SPIF_SENDCHANGE                                          0x00000002
#define SPIF_SENDWININICHANGE                                    0x00000002
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define ATF_TIMEOUTON                                            0x00000001
#define ATF_ONOFFFEEDBACK                                        0x00000002
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define WM_NULL                                                  0x00000000
#define WM_CREATE                                                0x00000001
#define WM_DESTROY                                               0x00000002
#define WM_MOVE                                                  0x00000003
#define WM_SIZE                                                  0x00000005
#define WM_ACTIVATE                                              0x00000006
#define WM_SETFOCUS                                              0x00000007
#define WM_KILLFOCUS                                             0x00000008
#define WM_ENABLE                                                0x0000000A
#define WM_SETREDRAW                                             0x0000000B
#define WM_SETTEXT                                               0x0000000C
#define WM_GETTEXT                                               0x0000000D
#define WM_GETTEXTLENGTH                                         0x0000000E
#define WM_PAINT                                                 0x0000000F
#define WM_CLOSE                                                 0x00000010
#define WM_QUERYENDSESSION                                       0x00000011
#define WM_QUIT                                                  0x00000012
#define WM_QUERYOPEN                                             0x00000013
#define WM_ERASEBKGND                                            0x00000014
#define WM_SYSCOLORCHANGE                                        0x00000015
#define WM_ENDSESSION                                            0x00000016
#define WM_SHOWWINDOW                                            0x00000017
#define WM_SETTINGCHANGE                                         0x00000018
#define WM_WININICHANGE                                          0x0000001A
#define WM_DEVMODECHANGE                                         0x0000001B
#define WM_ACTIVATEAPP                                           0x0000001C
#define WM_FONTCHANGE                                            0x0000001D
#define WM_TIMECHANGE                                            0x0000001E
#define WM_CANCELMODE                                            0x0000001F
#define WM_SETCURSOR                                             0x00000020
#define WM_MOUSEACTIVATE                                         0x00000021
#define WM_CHILDACTIVATE                                         0x00000022
#define WM_QUEUESYNC                                             0x00000023
#define WM_GETMINMAXINFO                                         0x00000024
#define WM_PAINTICON                                             0x00000026
#define WM_ICONERASEBKGND                                        0x00000027
#define WM_NEXTDLGCTL                                            0x00000028
#define WM_SPOOLERSTATUS                                         0x0000002A
#define WM_DRAWITEM                                              0x0000002B
#define WM_MEASUREITEM                                           0x0000002C
#define WM_DELETEITEM                                            0x0000002D
#define WM_VKEYTOITEM                                            0x0000002E
#define WM_CHARTOITEM                                            0x0000002F
#define WM_SETFONT                                               0x00000030
#define WM_GETFONT                                               0x00000031
#define WM_SETHOTKEY                                             0x00000032
#define WM_GETHOTKEY                                             0x00000033
#define WM_QUERYDRAGICON                                         0x00000037
#define WM_COMPAREITEM                                           0x00000039
#define WM_GETOBJECT                                             0x0000003D
#define WM_COMPACTING                                            0x00000045
#define WM_COMMNOTIFY                                            0x00000044         /* obsolete */
#define WM_WINDOWPOSCHANGING                                     0x00000046
#define WM_WINDOWPOSCHANGED                                      0x00000047
#define WM_POWER                                                 0x00000048
#define WM_COPYDATA                                              0x0000004A
#define WM_CANCELJOURNAL                                         0x0000004B
#define WM_NOTIFY                                                0x0000004E
#define WM_INPUTLANGCHANGEREQUEST                                0x00000050
#define WM_INPUTLANGCHANGE                                       0x00000051
#define WM_TCARD                                                 0x00000052
#define WM_HELP                                                  0x00000053
#define WM_USERCHANGED                                           0x00000054
#define WM_NOTIFYFORMAT                                          0x00000055
#define WM_CONTEXTMENU                                           0x0000007B
#define WM_STYLECHANGING                                         0x0000007C
#define WM_STYLECHANGED                                          0x0000007D
#define WM_DISPLAYCHANGE                                         0x0000007E
#define WM_GETICON                                               0x0000007F
#define WM_SETICON                                               0x00000080
#define WM_NCCREATE                                              0x00000081
#define WM_NCDESTROY                                             0x00000082
#define WM_NCCALCSIZE                                            0x00000083
#define WM_NCHITTEST                                             0x00000084
#define WM_NCPAINT                                               0x00000085
#define WM_NCACTIVATE                                            0x00000086
#define WM_GETDLGCODE                                            0x00000087
#define WM_SYNCPAINT                                             0x00000088
#define WM_NCMOUSEMOVE                                           0x000000A0
#define WM_NCLBUTTONDOWN                                         0x000000A1
#define WM_NCLBUTTONUP                                           0x000000A2
#define WM_NCLBUTTONDBLCLK                                       0x000000A3
#define WM_NCRBUTTONDOWN                                         0x000000A4
#define WM_NCRBUTTONUP                                           0x000000A5
#define WM_NCRBUTTONDBLCLK                                       0x000000A6
#define WM_NCMBUTTONDOWN                                         0x000000A7
#define WM_NCMBUTTONUP                                           0x000000A8
#define WM_NCMBUTTONDBLCLK                                       0x000000A9
#define WM_NCXBUTTONDOWN                                         0x000000AB
#define WM_NCXBUTTONUP                                           0x000000AC
#define WM_NCXBUTTONDBLCLK                                       0x000000AD
#define WM_INPUT                                                 0x000000FF
#define WM_KEYDOWN                                               0x00000100
#define WM_KEYFIRST                                              0x00000100
#define WM_KEYUP                                                 0x00000101
#define WM_CHAR                                                  0x00000102
#define WM_DEADCHAR                                              0x00000103
#define WM_SYSKEYDOWN                                            0x00000104
#define WM_SYSKEYUP                                              0x00000105
#define WM_SYSCHAR                                               0x00000106
#define WM_SYSDEADCHAR                                           0x00000107
#define WM_KEYLAST                                               0x00000108
#define WM_INITDIALOG                                            0x00000110
#define WM_COMMAND                                               0x00000111
#define WM_SYSCOMMAND                                            0x00000112
#define WM_TIMER                                                 0x00000113
#define WM_HSCROLL                                               0x00000114
#define WM_VSCROLL                                               0x00000115
#define WM_INITMENU                                              0x00000116
#define WM_INITMENUPOPUP                                         0x00000117
#define WM_MENUSELECT                                            0x0000011F
#define WM_MENUCHAR                                              0x00000120
#define WM_ENTERIDLE                                             0x00000121
#define WM_MENURBUTTONUP                                         0x00000122
#define WM_MENUDRAG                                              0x00000123
#define WM_MENUGETOBJECT                                         0x00000124
#define WM_UNINITMENUPOPUP                                       0x00000125
#define WM_MENUCOMMAND                                           0x00000126
#define WM_CHANGEUISTATE                                         0x00000127
#define WM_UPDATEUISTATE                                         0x00000128
#define WM_QUERYUISTATE                                          0x00000129
#define WM_CTLCOLORMSGBOX                                        0x00000132
#define WM_CTLCOLOREDIT                                          0x00000133
#define WM_CTLCOLORLISTBOX                                       0x00000134
#define WM_CTLCOLORBTN                                           0x00000135
#define WM_CTLCOLORDLG                                           0x00000136
#define WM_CTLCOLORSCROLLBAR                                     0x00000137
#define WM_CTLCOLORSTATIC                                        0x00000138
#define WM_MOUSEFIRST                                            0x00000200
#define WM_MOUSEMOVE                                             0x00000200
#define WM_LBUTTONDOWN                                           0x00000201
#define WM_LBUTTONUP                                             0x00000202
#define WM_LBUTTONDBLCLK                                         0x00000203
#define WM_RBUTTONDOWN                                           0x00000204
#define WM_RBUTTONUP                                             0x00000205
#define WM_RBUTTONDBLCLK                                         0x00000206
#define WM_MBUTTONDOWN                                           0x00000207
#define WM_MBUTTONUP                                             0x00000208
#define WM_MBUTTONDBLCLK                                         0x00000209
#define WM_MOUSEWHEEL                                            0x0000020A
#define WM_MOUSELAST                                             0x0000020A
#define WM_XBUTTONDOWN                                           0x0000020B
#define WM_XBUTTONUP                                             0x0000020C
#define WM_XBUTTONDBLCLK                                         0x0000020D
#define WM_MOUSELAST                                             0x0000020D
#define WM_PARENTNOTIFY                                          0x00000210
#define WM_ENTERMENULOOP                                         0x00000211
#define WM_EXITMENULOOP                                          0x00000212
#define WM_NEXTMENU                                              0x00000213
#define WM_SIZING                                                0x00000214
#define WM_CAPTURECHANGED                                        0x00000215
#define WM_MOVING                                                0x00000216
#define WM_POWERBROADCAST                                        0x00000218
#define WM_DEVICECHANGE                                          0x00000219
#define WM_MDICREATE                                             0x00000220
#define WM_MDIDESTROY                                            0x00000221
#define WM_MDIACTIVATE                                           0x00000222
#define WM_MDIRESTORE                                            0x00000223
#define WM_MDINEXT                                               0x00000224
#define WM_MDIMAXIMIZE                                           0x00000225
#define WM_MDITILE                                               0x00000226
#define WM_MDICASCADE                                            0x00000227
#define WM_MDIICONARRANGE                                        0x00000228
#define WM_MDIGETACTIVE                                          0x00000229
#define WM_MDISETMENU                                            0x00000230
#define WM_ENTERSIZEMOVE                                         0x00000231
#define WM_EXITSIZEMOVE                                          0x00000232
#define WM_DROPFILES                                             0x00000233
#define WM_MDIREFRESHMENU                                        0x00000234
#define WM_NCMOUSEHOVER                                          0x000002A0
#define WM_MOUSEHOVER                                            0x000002A1
#define WM_NCMOUSELEAVE                                          0x000002A2
#define WM_MOUSELEAVE                                            0x000002A3
#define WM_CUT                                                   0x00000300
#define WM_COPY                                                  0x00000301
#define WM_PASTE                                                 0x00000302
#define WM_CLEAR                                                 0x00000303
#define WM_UNDO                                                  0x00000304
#define WM_RENDERFORMAT                                          0x00000305
#define WM_RENDERALLFORMATS                                      0x00000306
#define WM_DESTROYCLIPBOARD                                      0x00000307
#define WM_DRAWCLIPBOARD                                         0x00000308
#define WM_PAINTCLIPBOARD                                        0x00000309
#define WM_VSCROLLCLIPBOARD                                      0x0000030A
#define WM_SIZECLIPBOARD                                         0x0000030B
#define WM_ASKCBFORMATNAME                                       0x0000030C
#define WM_CHANGECBCHAIN                                         0x0000030D
#define WM_HSCROLLCLIPBOARD                                      0x0000030E
#define WM_QUERYNEWPALETTE                                       0x0000030F
#define WM_PALETTEISCHANGING                                     0x00000310
#define WM_PALETTECHANGED                                        0x00000311
#define WM_HOTKEY                                                0x00000312
#define WM_PRINT                                                 0x00000317
#define WM_PRINTCLIENT                                           0x00000318
#define WM_APPCOMMAND                                            0x00000319
#define WM_THEMECHANGED                                          0x0000031A
#define WM_HANDHELDFIRST                                         0x00000358
#define WM_HANDHELDLAST                                          0x0000035F
#define WM_AFXFIRST                                              0x00000360
#define WM_AFXLAST                                               0x0000037F
#define WM_PENWINFIRST                                           0x00000380
#define WM_PENWINLAST                                            0x0000038F
#define WM_USER                                                  0x00000400
#define WM_APP                                                   0x00008000
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                NT >=         0x0400
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define WHEEL_DELTA                                              0x00000078
#define GET_WHEEL_DELTA_WPARAM(wparam) ((short)HIWORD (wparam))
#define WHEEL_PAGESCROLL                                         0xFFFFFFFF
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define BM_GETCHECK                                              0x000000F0
#define BM_SETCHECK                                              0x000000F1
#define BM_GETSTATE                                              0x000000F2
#define BM_SETSTATE                                              0x000000F3
#define BM_SETSTYLE                                              0x000000F4
#define BM_CLICK                                                 0x000000F5
#define BM_GETIMAGE                                              0x000000F6
#define BM_SETIMAGE                                              0x000000F7
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define BN_CLICKED                                               0x00000000
#define BN_PAINT                                                 0x00000001
#define BN_HILITE                                                0x00000002
#define BN_PUSHED                                                0x00000002
#define BN_UNHILITE                                              0x00000003
#define BN_UNPUSHED                                              0x00000003
#define BN_DISABLE                                               0x00000004
#define BN_DBLCLK                                                0x00000005
#define BN_DOUBLECLICKED                                         0x00000005
#define BN_SETFOCUS                                              0x00000006
#define BN_KILLFOCUS                                             0x00000007
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define CB_GETEDITSEL                                            0x00000140
#define CB_LIMITTEXT                                             0x00000141
#define CB_SETEDITSEL                                            0x00000142
#define CB_ADDSTRING                                             0x00000143
#define CB_DELETESTRING                                          0x00000144
#define CB_DIR                                                   0x00000145
#define CB_GETCOUNT                                              0x00000146
#define CB_GETCURSEL                                             0x00000147
#define CB_GETLBTEXT                                             0x00000148
#define CB_GETLBTEXTLEN                                          0x00000149
#define CB_INSERTSTRING                                          0x0000014A
#define CB_RESETCONTENT                                          0x0000014B
#define CB_FINDSTRING                                            0x0000014C
#define CB_SELECTSTRING                                          0x0000014D
#define CB_SETCURSEL                                             0x0000014E
#define CB_SHOWDROPDOWN                                          0x0000014F
#define CB_GETITEMDATA                                           0x00000150
#define CB_SETITEMDATA                                           0x00000151
#define CB_GETDROPPEDCONTROLRECT                                 0x00000152
#define CB_SETITEMHEIGHT                                         0x00000153
#define CB_GETITEMHEIGHT                                         0x00000154
#define CB_SETEXTENDEDUI                                         0x00000155
#define CB_GETEXTENDEDUI                                         0x00000156
#define CB_GETDROPPEDSTATE                                       0x00000157
#define CB_FINDSTRINGEXACT                                       0x00000158
#define CB_SETLOCALE                                             0x00000159
#define CB_GETLOCALE                                             0x0000015A
#define CB_GETTOPINDEX                                           0x0000015B
#define CB_SETTOPINDEX                                           0x0000015C
#define CB_GETHORIZONTALEXTENT                                   0x0000015D
#define CB_SETHORIZONTALEXTENT                                   0x0000015E
#define CB_GETDROPPEDWIDTH                                       0x0000015F
#define CB_SETDROPPEDWIDTH                                       0x00000160
#define CB_INITSTORAGE                                           0x00000161
#define CB_SETMINVISIBLE                                         0x00001701
#define CB_GETMINVISIBLE                                         0x00001702
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define CBN_SELCHANGE                                            0x00000001
#define CBN_DBLCLK                                               0x00000002
#define CBN_SETFOCUS                                             0x00000003
#define CBN_KILLFOCUS                                            0x00000004
#define CBN_EDITCHANGE                                           0x00000005
#define CBN_EDITUPDATE                                           0x00000006
#define CBN_DROPDOWN                                             0x00000007
#define CBN_CLOSEUP                                              0x00000008
#define CBN_SELENDOK                                             0x00000009
#define CBN_SELENDCANCEL                                         0x0000000A
#define CBN_ERRSPACE                                             0xFFFFFFFF
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define EM_GETSEL                                                0x000000B0
#define EM_SETSEL                                                0x000000B1
#define EM_GETRECT                                               0x000000B2
#define EM_SETRECT                                               0x000000B3
#define EM_SETRECTNP                                             0x000000B4
#define EM_SCROLL                                                0x000000B5
#define EM_LINESCROLL                                            0x000000B6
#define EM_SCROLLCARET                                           0x000000B7
#define EM_GETMODIFY                                             0x000000B8
#define EM_SETMODIFY                                             0x000000B9
#define EM_GETLINECOUNT                                          0x000000BA
#define EM_LINEINDEX                                             0x000000BB
#define EM_SETHANDLE                                             0x000000BC
#define EM_GETHANDLE                                             0x000000BD
#define EM_GETTHUMB                                              0x000000BE
#define EM_LINELENGTH                                            0x000000C1
#define EM_REPLACESEL                                            0x000000C2
#define EM_GETLINE                                               0x000000C4
#define EM_SETLIMITTEXT                                          0x000000C5
#define EM_LIMITTEXT                                             0x000000C5
#define EM_CANUNDO                                               0x000000C6
#define EM_UNDO                                                  0x000000C7
#define EM_FMTLINES                                              0x000000C8
#define EM_LINEFROMCHAR                                          0x000000C9
#define EM_SETTABSTOPS                                           0x000000CB
#define EM_SETPASSWORDCHAR                                       0x000000CC
#define EM_EMPTYUNDOBUFFER                                       0x000000CD
#define EM_GETFIRSTVISIBLELINE                                   0x000000CE
#define EM_SETREADONLY                                           0x000000CF
#define EM_SETWORDBREAKPROC                                      0x000000D0
#define EM_GETWORDBREAKPROC                                      0x000000D1
#define EM_GETPASSWORDCHAR                                       0x000000D2
#define EM_SETMARGINS                                            0x000000D3
#define EM_GETMARGINS                                            0x000000D4
#define EM_GETLIMITTEXT                                          0x000000D5
#define EM_POSFROMCHAR                                           0x000000D6
#define EM_CHARFROMPOS                                           0x000000D7
#define EM_SETIMESTATUS                                          0x000000D8
#define EM_GETIMESTATUS                                          0x000000D9
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define EN_SETFOCUS                                              0x00000100
#define EN_KILLFOCUS                                             0x00000200
#define EN_CHANGE                                                0x00000300
#define EN_UPDATE                                                0x00000400
#define EN_ERRSPACE                                              0x00000500
#define EN_MAXTEXT                                               0x00000501
#define EN_HSCROLL                                               0x00000601
#define EN_VSCROLL                                               0x00000602
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define LB_ADDSTRING                                             0x00000180
#define LB_INSERTSTRING                                          0x00000181
#define LB_DELETESTRING                                          0x00000182
#define LB_SELITEMRANGEEX                                        0x00000183
#define LB_RESETCONTENT                                          0x00000184
#define LB_SETSEL                                                0x00000185
#define LB_SETCURSEL                                             0x00000186
#define LB_GETSEL                                                0x00000187
#define LB_GETCURSEL                                             0x00000188
#define LB_GETTEXT                                               0x00000189
#define LB_GETTEXTLEN                                            0x0000018A
#define LB_GETCOUNT                                              0x0000018B
#define LB_SELECTSTRING                                          0x0000018C
#define LB_DIR                                                   0x0000018D
#define LB_GETTOPINDEX                                           0x0000018E
#define LB_FINDSTRING                                            0x0000018F
#define LB_GETSELCOUNT                                           0x00000190
#define LB_GETSELITEMS                                           0x00000191
#define LB_SETTABSTOPS                                           0x00000192
#define LB_GETHORIZONTALEXTENT                                   0x00000193
#define LB_SETHORIZONTALEXTENT                                   0x00000194
#define LB_SETCOLUMNWIDTH                                        0x00000195
#define LB_ADDFILE                                               0x00000196
#define LB_SETTOPINDEX                                           0x00000197
#define LB_GETITEMRECT                                           0x00000198
#define LB_GETITEMDATA                                           0x00000199
#define LB_SETITEMDATA                                           0x0000019A
#define LB_SELITEMRANGE                                          0x0000019B
#define LB_SETANCHORINDEX                                        0x0000019C
#define LB_GETANCHORINDEX                                        0x0000019D
#define LB_SETCARETINDEX                                         0x0000019E
#define LB_GETCARETINDEX                                         0x0000019F
#define LB_SETITEMHEIGHT                                         0x000001A0
#define LB_GETITEMHEIGHT                                         0x000001A1
#define LB_FINDSTRINGEXACT                                       0x000001A2
#define LB_SETLOCALE                                             0x000001A5
#define LB_GETLOCALE                                             0x000001A6
#define LB_SETCOUNT                                              0x000001A7
#define LB_INITSTORAGE                                           0x000001A8
#define LB_ITEMFROMPOINT                                         0x000001A9
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define LBN_SELCHANGE                                            0x00000001
#define LBN_DBLCLK                                               0x00000002
#define LBN_SELCANCEL                                            0x00000003
#define LBN_SETFOCUS                                             0x00000004
#define LBN_KILLFOCUS                                            0x00000005
#define LBN_ERRSPACE                                             0xFFFFFFFE
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define SBM_SETPOS                                               0x000000E0
#define SBM_GETPOS                                               0x000000E1
#define SBM_SETRANGE                                             0x000000E2
#define SBM_GETRANGE                                             0x000000E3
#define SBM_ENABLE_ARROWS                                        0x000000E4
#define SBM_SETRANGEREDRAW                                       0x000000E6
#define SBM_SETSCROLLINFO                                        0x000000E9
#define SBM_GETSCROLLINFO                                        0x000000EA
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define STM_SETICON                                              0x00000170
#define STM_GETICON                                              0x00000171
#define STM_SETIMAGE                                             0x00000172
#define STM_GETIMAGE                                             0x00000173
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define STN_CLICKED                                              0x00000000
#define STN_DBLCLK                                               0x00000001
#define STN_ENABLE                                               0x00000002
#define STN_DISABLE                                              0x00000003
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define DM_GETDEFID                                              0x00000400
#define DM_SETDEFID                                              0x00000401
#define DM_REPOSITION                                            0x00000402
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define PSM_PAGEINFO                                             0x00000500
#define PSM_SHEETINFO                                            0x00000501
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define PSI_SETACTIVE                                            0x00000001
#define PSI_CHANGED                                              0x00000001
#define PSI_KILLACTIVE                                           0x00000002
#define PSI_GUISTART                                             0x00000002
#define PSI_APPLY                                                0x00000003
#define PSI_REBOOT                                               0x00000003
#define PSI_RESET                                                0x00000004
#define PSI_GETSIBLINGS                                          0x00000004
#define PSI_HASHELP                                              0x00000005
#define PSI_HELP                                                 0x00000006
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define DCX_WINDOW                                               0x00000001
#define DCX_CACHE                                                0x00000002
#define DCX_NORESETATTRS                                         0x00000004
#define DCX_CLIPCHILDREN                                         0x00000008
#define DCX_CLIPSIBLINGS                                         0x00000010
#define DCX_PARENTCLIP                                           0x00000020
#define DCX_EXCLUDERGN                                           0x00000040
#define DCX_INTERSECTRGN                                         0x00000080
#define DCX_INTERSECTUPDATE                                      0x00000200
#define DCX_LOCKWINDOWUPDATE                                     0x00000400
#define DCX_VALIDATE                                             0x00002000
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define GMDI_USEDISABLED                                         0x00000001
#define GMDI_GOINTOPOPUPS                                        0x00000002
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define FKF_FILTERKEYSON                                         0x00000001
#define FKF_AVAILABLE                                            0x00000002
#define FKF_HOTKEYACTIVE                                         0x00000004
#define FKF_CONFIRMHOTKEY                                        0x00000008
#define FKF_HOTKEYSOUND                                          0x00000010
#define FKF_INDICATOR                                            0x00000020
#define FKF_CLICKON                                              0x00000040
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define HCF_HIGHCONTRASTON                                       0x00000001
#define HCF_AVAILABLE                                            0x00000002
#define HCF_HOTKEYACTIVE                                         0x00000004
#define HCF_CONFIRMHOTKEY                                        0x00000008
#define HCF_HOTKEYSOUND                                          0x00000010
#define HCF_INDICATOR                                            0x00000020
#define HCF_HOTKEYAVAILABLE                                      0x00000040
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define MKF_MOUSEKEYSON                                          0x00000001
#define MKF_AVAILABLE                                            0x00000002
#define MKF_HOTKEYACTIVE                                         0x00000004
#define MKF_CONFIRMHOTKEY                                        0x00000008
#define MKF_HOTKEYSOUND                                          0x00000010
#define MKF_INDICATOR                                            0x00000020
#define MKF_MODIFIERS                                            0x00000040
#define MKF_REPLACENUMBERS                                       0x00000080
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define SERKF_SERIALKEYSON                                       0x00000001
#define SERKF_AVAILABLE                                          0x00000002
#define SERKF_INDICATOR                                          0x00000004
#define SERKF_ACTIVE                                             0x00000008           /* May be obsolete. Not in recent MS docs. */
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define SSF_SOUNDSENTRYON                                        0x00000001
#define SSF_AVAILABLE                                            0x00000002
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define SSTF_NONE                                                0x00000000
#define SSTF_CHARS                                               0x00000001
#define SSTF_BORDER                                              0x00000002
#define SSTF_DISPLAY                                             0x00000003
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define SSGF_NONE                                                0x00000000
#define SSGF_DISPLAY                                             0x00000003
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define SSWF_NONE                                                0x00000000
#define SSWF_TITLE                                               0x00000001
#define SSWF_WINDOW                                              0x00000002
#define SSWF_DISPLAY                                             0x00000003
#define SSWF_CUSTOM                                              0x00000004
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define SKF_STICKYKEYSON                                         0x00000001
#define SKF_AVAILABLE                                            0x00000002
#define SKF_HOTKEYACTIVE                                         0x00000004
#define SKF_CONFIRMHOTKEY                                        0x00000008
#define SKF_HOTKEYSOUND                                          0x00000010
#define SKF_INDICATOR                                            0x00000020
#define SKF_AUDIBLEFEEDBACK                                      0x00000040
#define SKF_TRISTATE                                             0x00000080
#define SKF_TWOKEYSOFF                                           0x00000100
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define TKF_TOGGLEKEYSON                                         0x00000001
#define TKF_AVAILABLE                                            0x00000002
#define TKF_HOTKEYACTIVE                                         0x00000004
#define TKF_CONFIRMHOTKEY                                        0x00000008
#define TKF_HOTKEYSOUND                                          0x00000010
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define MDITILE_VERTICAL                                         0x00000000
#define MDITILE_HORIZONTAL                                       0x00000001
#define MDITILE_SKIPDISABLED                                     0x00000002
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define VK_LBUTTON                                               0x00000001
#define VK_RBUTTON                                               0x00000002
#define VK_CANCEL                                                0x00000003
#define VK_MBUTTON                                               0x00000004
#define VK_XBUTTON1                                              0x00000005
#define VK_XBUTTON2                                              0x00000006
#define VK_BACK                                                  0x00000008
#define VK_TAB                                                   0x00000009
#define VK_CLEAR                                                 0x00000012
#define VK_RETURN                                                0x00000013
#define VK_SHIFT                                                 0x00000010
#define VK_CONTROL                                               0x00000011
#define VK_MENU                                                  0x00000012
#define VK_PAUSE                                                 0x00000013
#define VK_CAPITAL                                               0x00000014
#define VK_KANA                                                  0x00000015
#define VK_HANGEUL                                               0x00000015
#define VK_HANGUL                                                0x00000015
#define VK_JUNJA                                                 0x00000017
#define VK_FINAL                                                 0x00000018
#define VK_HANJA                                                 0x00000019
#define VK_KANJI                                                 0x00000019
#define VK_ESCAPE                                                0x0000001B
#define VK_CONVERT                                               0x0000001C
#define VK_NONCONVERT                                            0x0000001D
#define VK_ACCEPT                                                0x0000001E
#define VK_MODECHANGE                                            0x0000001F
#define VK_SPACE                                                 0x00000020
#define VK_PRIOR                                                 0x00000021
#define VK_NEXT                                                  0x00000022
#define VK_END                                                   0x00000023
#define VK_HOME                                                  0x00000024
#define VK_LEFT                                                  0x00000025
#define VK_UP                                                    0x00000026
#define VK_RIGHT                                                 0x00000027
#define VK_DOWN                                                  0x00000028
#define VK_SELECT                                                0x00000029
#define VK_PRINT                                                 0x0000002A
#define VK_EXECUTE                                               0x0000002B
#define VK_SNAPSHOT                                              0x0000002C
#define VK_INSERT                                                0x0000002D
#define VK_DELETE                                                0x0000002E
#define VK_HELP                                                  0x0000002F
#define VK_LWIN                                                  0x0000005B
#define VK_RWIN                                                  0x0000005C
#define VK_APPS                                                  0x0000005D
#define VK_SLEEP                                                 0x0000005F
#define VK_NUMPAD0                                               0x00000060
#define VK_NUMPAD1                                               0x00000061
#define VK_NUMPAD2                                               0x00000062
#define VK_NUMPAD3                                               0x00000063
#define VK_NUMPAD4                                               0x00000064
#define VK_NUMPAD5                                               0x00000065
#define VK_NUMPAD6                                               0x00000066
#define VK_NUMPAD7                                               0x00000067
#define VK_NUMPAD8                                               0x00000068
#define VK_NUMPAD9                                               0x00000069
#define VK_MULTIPLY                                              0x0000006A
#define VK_ADD                                                   0x0000006B
#define VK_SEPARATOR                                             0x0000006C
#define VK_SUBTRACT                                              0x0000006D
#define VK_DECIMAL                                               0x0000006E
#define VK_DIVIDE                                                0x0000006F
#define VK_F1                                                    0x00000070
#define VK_F2                                                    0x00000071
#define VK_F3                                                    0x00000072
#define VK_F4                                                    0x00000073
#define VK_F5                                                    0x00000074
#define VK_F6                                                    0x00000075
#define VK_F7                                                    0x00000076
#define VK_F8                                                    0x00000077
#define VK_F9                                                    0x00000078
#define VK_F10                                                   0x00000079
#define VK_F11                                                   0x0000007A
#define VK_F12                                                   0x0000007B
#define VK_F13                                                   0x0000007C
#define VK_F14                                                   0x0000007D
#define VK_F15                                                   0x0000007E
#define VK_F16                                                   0x0000007F
#define VK_F17                                                   0x00000080
#define VK_F18                                                   0x00000081
#define VK_F19                                                   0x00000082
#define VK_F20                                                   0x00000083
#define VK_F21                                                   0x00000084
#define VK_F22                                                   0x00000085
#define VK_F23                                                   0x00000086
#define VK_F24                                                   0x00000087
#define VK_NUMLOCK                                               0x00000090
#define VK_SCROLL                                                0x00000091
#define VK_LSHIFT                                                0x000000A0
#define VK_RSHIFT                                                0x000000A1
#define VK_LCONTROL                                              0x000000A2
#define VK_RCONTROL                                              0x000000A3
#define VK_LMENU                                                 0x000000A4
#define VK_RMENU                                                 0x000000A5
#define VK_BROWSER_BACK                                          0x000000A6
#define VK_BROWSER_FORWARD                                       0x000000A7
#define VK_BROWSER_REFRESH                                       0x000000A8
#define VK_BROWSER_STOP                                          0x000000A9
#define VK_BROWSER_SEARCH                                        0x000000AA
#define VK_BROWSER_FAVORITES                                     0x000000AB
#define VK_BROWSER_HOME                                          0x000000AC
#define VK_VOLUME_MUTE                                           0x000000AD
#define VK_VOLUME_DOWN                                           0x000000AE
#define VK_VOLUME_UP                                             0x000000AF
#define VK_MEDIA_NEXT_TRACK                                      0x000000B0
#define VK_MEDIA_PREV_TRACK                                      0x000000B1
#define VK_MEDIA_STOP                                            0x000000B2
#define VK_MEDIA_PLAY_PAUSE                                      0x000000B3
#define VK_LAUNCH_MAIL                                           0x000000B4
#define VK_LAUNCH_MEDIA_SELECT                                   0x000000B5
#define VK_LAUNCH_APP1                                           0x000000B6
#define VK_LAUNCH_APP2                                           0x000000B7
#define VK_OEM_1                                                 0x000000BA
#define VK_OEM_PLUS                                              0x000000BB
#define VK_OEM_COMMA                                             0x000000BC
#define VK_OEM_MINUS                                             0x000000BD
#define VK_OEM_PERIOD                                            0x000000BE
#define VK_OEM_2                                                 0x000000BF
#define VK_OEM_3                                                 0x000000C0
#define VK_OEM_4                                                 0x000000DB
#define VK_OEM_5                                                 0x000000DC
#define VK_OEM_6                                                 0x000000DD
#define VK_OEM_7                                                 0x000000DE
#define VK_OEM_8                                                 0x000000DF
#define VK_OEM_102                                               0x000000E2
#define VK_PROCESSKEY                                            0x000000E5
#define VK_PACKET                                                0x000000E7
#define VK_ATTN                                                  0x000000F6
#define VK_CRSEL                                                 0x000000F7
#define VK_EXSEL                                                 0x000000F8
#define VK_EREOF                                                 0x000000F9
#define VK_PLAY                                                  0x000000FA
#define VK_ZOOM                                                  0x000000FB
#define VK_NONAME                                                0x000000FC
#define VK_PA1                                                   0x000000FD
#define VK_OEM_CLEAR                                             0x000000FE
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define TME_HOVER                                                0x00000001
#define TME_LEAVE                                                0x00000002
#define TME_QUERY                                                0x40000000
#define TME_CANCEL                                               0x80000000
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define HOVER_DEFAULT                                            0xFFFFFFFF
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define MK_LBUTTON                                               0x00000001
#define MK_RBUTTON                                               0x00000002
#define MK_SHIFT                                                 0x00000004
#define MK_CONTROL                                               0x00000008
#define MK_MBUTTON                                               0x00000010
#define MK_XBUTTON1                                              0x00000020
#define MK_XBUTTON2                                              0x00000040
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define TPM_LEFTALIGN                                            0x00000000
#define TPM_LEFTBUTTON                                           0x00000000
#define TPM_HORIZONTAL                                           0x00000000
#define TPM_TOPALIGN                                             0x00000000
#define TPM_RECURSE                                              0x00000001
#define TPM_RIGHTBUTTON                                          0x00000002
#define TPM_CENTERALIGN                                          0x00000004
#define TPM_RIGHTALIGN                                           0x00000008
#define TPM_VCENTERALIGN                                         0x00000010
#define TPM_BOTTOMALIGN                                          0x00000020
#define TPM_VERTICAL                                             0x00000040
#define TPM_NONOTIFY                                             0x00000080
#define TPM_RETURNCMD                                            0x00000100
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define HELP_CONTEXT                                             0x00000001
#define HELP_QUIT                                                0x00000002
#define HELP_CONTENTS                                            0x00000003
#define HELP_INDEX                                               0x00000003
#define HELP_HELPONHELP                                          0x00000004
#define HELP_SETCONTENTS                                         0x00000005
#define HELP_SETINDEX                                            0x00000005
#define HELP_CONTEXTPOPUP                                        0x00000008
#define HELP_FORCEFILE                                           0x00000009
#define HELP_CONTEXTMENU                                         0x0000000A
#define HELP_FINDER                                              0x0000000B
#define HELP_WM_HELP                                             0x0000000C
#define HELP_TCARD_DATA                                          0x00000010
#define HELP_TCARD_OTHER_CALLER                                  0x00000011
#define HELP_KEY                                                 0x00000101
#define HELP_COMMAND                                             0x00000102
#define HELP_PARTIALKEY                                          0x00000105
#define HELP_MULTIKEY                                            0x00000201
#define HELP_SETWINPOS                                           0x00000203
#define HELP_TCARD                                               0x00008000
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define IDH_NO_HELP                                              0x00006F18
#define IDH_MISSING_CONTEXT                                      0x00006F19
#define IDH_GENERIC_HELP_BUTTON                                  0x00006F1A
#define IDH_OK                                                   0x00006F1B
#define IDH_CANCEL                                               0x00006F1C
#define IDH_HELP                                                 0x00006F1D
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define LB_CTLCODE                                               0x00000000
#define LB_OKAY                                                  0x00000000
#define LB_ERRSPACE                                              0xFFFFFFFE
#define LB_ERR                                                   0xFFFFFFFF
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define CB_OKAY                                                  0x00000000
#define CB_ERRSPACE                                              0xFFFFFFFE
#define CB_ERR                                                   0xFFFFFFFF
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define HIDE_WINDOW                                              0x00000000
#define SHOW_OPENWINDOW                                          0x00000001
#define SHOW_ICONWINDOW                                          0x00000002
#define SHOW_FULLSCREEN                                          0x00000003
#define SHOW_OPENNOACTIVATE                                      0x00000004
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define SW_PARENTCLOSING                                         0x00000001
#define SW_OTHERZOOM                                             0x00000002
#define SW_PARENTOPENING                                         0x00000003
#define SW_OTHERUNZOOM                                           0x00000004
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define KF_EXTENDED                                              0x00000100
#define KF_DLGMODE                                               0x00000800
#define KF_MENUMODE                                              0x00001000
#define KF_ALTDOWN                                               0x00002000
#define KF_REPEAT                                                0x00004000
#define KF_UP                                                    0x00008000
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define WSF_VISIBLE                                              0x00000001
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define PWR_OK                                                   0x00000001
#define PWR_SUSPENDREQUEST                                       0x00000001
#define PWR_SUSPENDRESUME                                        0x00000002
#define PWR_CRITICALRESUME                                       0x00000003
#define PWR_FAIL                                                 0xFFFFFFFF
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define NFR_ANSI                                                 0x00000001
#define NFR_UNICODE                                              0x00000002
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define NF_QUERY                                                 0x00000003
#define NF_REQUERY                                               0x00000004
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define MENULOOP_WINDOW                                          0x00000000
#define MENULOOP_POPUP                                           0x00000001
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define WMSZ_LEFT                                                0x00000001
#define WMSZ_RIGHT                                               0x00000002
#define WMSZ_TOP                                                 0x00000003
#define WMSZ_TOPLEFT                                             0x00000004
#define WMSZ_TOPRIGHT                                            0x00000005
#define WMSZ_BOTTOM                                              0x00000006
#define WMSZ_BOTTOMLEFT                                          0x00000007
#define WMSZ_BOTTOMRIGHT                                         0x00000008
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define HTNOWHERE                                                0x00000000
#define HTCLIENT                                                 0x00000001
#define HTCAPTION                                                0x00000002
#define HTSYSMENU                                                0x00000003
#define HTGROWBOX                                                0x00000004
#define HTSIZE                                                   0x00000004
#define HTMENU                                                   0x00000005
#define HTHSCROLL                                                0x00000006
#define HTVSCROLL                                                0x00000007
#define HTMINBUTTON                                              0x00000008
#define HTMAXBUTTON                                              0x00000009
#define HTREDUCE                                                 0x00000008
#define HTZOOM                                                   0x00000009
#define HTLEFT                                                   0x0000000A
#define HTSIZEFIRST                                              0x0000000A
#define HTRIGHT                                                  0x0000000B
#define HTTOP                                                    0x0000000C
#define HTTOPLEFT                                                0x0000000D
#define HTTOPRIGHT                                               0x0000000E
#define HTBOTTOM                                                 0x0000000F
#define HTBOTTOMLEFT                                             0x00000010
#define HTBOTTOMRIGHT                                            0x00000011
#define HTSIZELAST                                               0x00000011
#define HTBORDER                                                 0x00000012
#define HTOBJECT                                                 0x00000013
#define HTCLOSE                                                  0x00000014
#define HTHELP                                                   0x00000015
#define HTERROR                                                  0xFFFFFFFE
#define HTTRANSPARENT                                            0xFFFFFFFF
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define MA_ACTIVATE                                              0x00000001
#define MA_ACTIVATEANDEAT                                        0x00000002
#define MA_NOACTIVATE                                            0x00000003
#define MA_NOACTIVATEANDEAT                                      0x00000004
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define SIZE_RESTORED                                            0x00000000
#define SIZE_MINIMIZED                                           0x00000001
#define SIZE_MAXIMIZED                                           0x00000002
#define SIZE_MAXSHOW                                             0x00000003
#define SIZE_MAXHIDE                                             0x00000004
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define SIZENORMAL                                               0x00000000
#define SIZEICONIC                                               0x00000001
#define SIZEFULLSCREEN                                           0x00000002
#define SIZEZOOMSHOW                                             0x00000003
#define SIZEZOOMHIDE                                             0x00000004
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define WVR_ALIGNTOP                                             0x00000010
#define WVR_ALIGNLEFT                                            0x00000020
#define WVR_ALIGNBOTTOM                                          0x00000040
#define WVR_ALIGNRIGHT                                           0x00000080
#define WVR_HREDRAW                                              0x00000100
#define WVR_VREDRAW                                              0x00000200
#define WVR_REDRAW                                               0x00000300
#define WVR_VALIDRECTS                                           0x00000400
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define PRF_CHECKVISIBLE                                         0x00000001
#define PRF_NONCLIENT                                            0x00000002
#define PRF_CLIENT                                               0x00000004
#define PRF_ERASEBKGND                                           0x00000008
#define PRF_CHILDREN                                             0x00000010
#define PRF_OWNED                                                0x00000020
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define IDANI_OPEN                                               0x00000001
#define IDANI_CLOSE                                              0x00000002
#define IDANI_CAPTION                                            0x00000003
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define WPF_SETMINPOSITION                                       0x00000001
#define WPF_RESTORETOMAXIMIZED                                   0x00000002
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define ODT_MENU                                                 0x00000001
#define ODT_LISTBOX                                              0x00000002
#define ODT_COMBOBOX                                             0x00000003
#define ODT_BUTTON                                               0x00000004
#define ODT_STATIC                                               0x00000005
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define ODA_DRAWENTIRE                                           0x00000001
#define ODA_SELECT                                               0x00000002
#define ODA_FOCUS                                                0x00000004
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define ODS_SELECTED                                             0x00000001
#define ODS_GRAYED                                               0x00000002
#define ODS_DISABLED                                             0x00000004
#define ODS_CHECKED                                              0x00000008
#define ODS_FOCUS                                                0x00000010
#define ODS_DEFAULT                                              0x00000020
#define ODS_COMBOBOXEDIT                                         0x00001000
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define IDHOT_SNAPWINDOW                                         0xFFFFFFFF
#define IDHOT_SNAPDESKTOP                                        0xFFFFFFFE
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define DBWF_LPARAMPOINTER                                       0x00008000
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define DLGWINDOWEXTRA                                           0x0000001E
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define MNC_IGNORE                                               0x00000000
#define MNC_CLOSE                                                0x00000001
#define MNC_EXECUTE                                              0x00000002
#define MNC_SELECT                                               0x00000003
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define DOF_PROGMAN                                              0x00000001
#define DOF_SHELLDATA                                            0x00000002
#define DOF_EXECUTABLE                                           0x00008001
#define DOF_DOCUMENT                                             0x00008002
#define DOF_DIRECTORY                                            0x00008003
#define DOF_MULTIPLE                                             0x00008004
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define DO_DROPFILE                                              0x454C4946
#define DO_PRINTFILE                                             0x544E5250
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define SW_SCROLLCHILDREN                                        0x00000001
#define SW_INVALIDATE                                            0x00000002
#define SW_ERASE                                                 0x00000004
#define SW_SMOOTHSCROLL                                          0x00000010
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define SC_SIZE                                                  0x0000F000
#define SC_SEPARATOR                                             0x0000F00F
#define SC_MOVE                                                  0x0000F010
#define SC_MINIMIZE                                              0x0000F020
#define SC_ICON                                                  0x0000f020
#define SC_MAXIMIZE                                              0x0000F030
#define SC_ZOOM                                                  0x0000F030
#define SC_NEXTWINDOW                                            0x0000F040
#define SC_PREVWINDOW                                            0x0000F050
#define SC_CLOSE                                                 0x0000F060
#define SC_VSCROLL                                               0x0000F070
#define SC_HSCROLL                                               0x0000F080
#define SC_MOUSEMENU                                             0x0000F090
#define SC_KEYMENU                                               0x0000F100
#define SC_ARRANGE                                               0x0000F110
#define SC_RESTORE                                               0x0000F120
#define SC_TASKLIST                                              0x0000F130
#define SC_SCREENSAVE                                            0x0000F140
#define SC_HOTKEY                                                0x0000F150
#define SC_DEFAULT                                               0x0000F160
#define SC_MONITORPOWER                                          0x0000F170
#define SC_CONTEXTHELP                                           0x0000F180
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define EC_LEFTMARGIN                                            0x00000001
#define EC_RIGHTMARGIN                                           0x00000002
#define EC_USEFONTINFO                                           0x0000FFFF
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define DC_HASDEFID                                              0x0000534B
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define DLGC_WANTARROWS                                          0x00000001
#define DLGC_WANTTAB                                             0x00000002
#define DLGC_WANTALLKEYS                                         0x00000004
#define DLGC_WANTMESSAGE                                         0x00000004
#define DLGC_HASSETSEL                                           0x00000008
#define DLGC_DEFPUSHBUTTON                                       0x00000010
#define DLGC_UNDEFPUSHBUTTON                                     0x00000020
#define DLGC_RADIOBUTTON                                         0x00000040
#define DLGC_WANTCHARS                                           0x00000080
#define DLGC_STATIC                                              0x00000100
#define DLGC_BUTTON                                              0x00002000
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define LB_CTLCODE                                               0x00000000
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define WA_INACTIVE                                              0x00000000
#define WA_ACTIVE                                                0x00000001
#define WA_CLICKACTIVE                                           0x00000002
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define ICON_SMALL                                               0x00000000
#define ICON_BIG                                                 0x00000001
#define ICON_SMALL2                                              0x00000002
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define HBMMENU_SYSTEM                                           0x00000001
#define HBMMENU_MBAR_RESTORE                                     0x00000002
#define HBMMENU_MBAR_MINIMIZE                                    0x00000003
#define HBMMENU_MBAR_CLOSE                                       0x00000005
#define HBMMENU_MBAR_CLOSE_D                                     0x00000006
#define HBMMENU_MBAR_MINIMIZE_D                                  0x00000007
#define HBMMENU_POPUP_CLOSE                                      0x00000008
#define HBMMENU_POPUP_RESTORE                                    0x00000009
#define HBMMENU_POPUP_MAXIMIZE                                   0x0000000A
#define HBMMENU_POPUP_MINIMIZE                                   0x0000000B
#define HBMMENU_CALLBACK                                         0xFFFFFFFF
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define MOD_ALT                                                  0x00000001
#define MOD_CONTROL                                              0x00000002
#define MOD_SHIFT                                                0x00000004
#define MOD_WIN                                                  0x00000008
#define MOD_IGNORE_ALL_MODIFIER                                  0x00000400
#define MOD_ON_KEYUP                                             0x00000800
#define MOD_RIGHT                                                0x00004000
#define MOD_LEFT                                                 0x00008000
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define LLKHF_EXTENDED                                           0x00000001
#define LLKHF_INJECTED                                           0x00000010
#define LLKHF_ALTDOWN                                            0x00000020
#define LLKHF_UP                                                 0x00000080
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define FLASHW_STOP                                              0x00000000
#define FLASHW_CAPTION                                           0x00000001
#define FLASHW_TRAY                                              0x00000002
#define FLASHW_ALL                                               0x00000003
#define FLASHW_TIMER                                             0x00000004
#define FLASHW_TIMERNOFG                                         0x0000000C
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define CURSOR_SHOWING                                           0x00000001
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define WS_ACTIVECAPTION                                         0x00000001
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define INPUT_MOUSE                                              0x00000000
#define INPUT_KEYBOARD                                           0x00000001
#define INPUT_HARDWARE                                           0x00000002
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define ENDSESSION_LOGOFF                                        0x80000000
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define CHILDID_SELF                                             0x00000000
#define OBJID_WINDOW                                             0x00000000
#define OBJID_SOUND                                              0xFFFFFFF5
#define OBJID_ALERT                                              0xFFFFFFF6
#define OBJID_CURSOR                                             0xFFFFFFF7
#define OBJID_CARET                                              0xFFFFFFF8
#define OBJID_SIZEGRIP                                           0xFFFFFFF9
#define OBJID_HSCROLL                                            0xFFFFFFFA
#define OBJID_VSCROLL                                            0xFFFFFFFB
#define OBJID_CLIENT                                             0xFFFFFFFC
#define OBJID_MENU                                               0xFFFFFFFD
#define OBJID_TITLEBAR                                           0xFFFFFFFE
#define OBJID_SYSMENU                                            0xFFFFFFFF
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define GUI_CARETBLINKING                                        0x00000001
#define GUI_INMOVESIZE                                           0x00000002
#define GUI_INMENUMODE                                           0x00000004
#define GUI_SYSTEMMENUMODE                                       0x00000008
#define GUI_POPUPMENUMODE                                        0x00000010
#define GUI_16BITTASK                                            0x00000020
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define WINEVENT_OUTOFCONTEXT                                    0x00000000
#define WINEVENT_SKIPOWNTHREAD                                   0x00000001
#define WINEVENT_SKIPOWNPROCESS                                  0x00000002
#define WINEVENT_INCONTEXT                                       0x00000004
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define AW_HOR_POSITIVE                                          0x00000001
#define AW_HOR_NEGATIVE                                          0x00000002
#define AW_VER_POSITIVE                                          0x00000004
#define AW_VER_NEGATIVE                                          0x00000008
#define AW_CENTER                                                0x00000010
#define AW_HIDE                                                  0x00010000
#define AW_ACTIVATE                                              0x00020000
#define AW_SLIDE                                                 0x00040000
#define AW_BLEND                                                 0x00080000
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define DEVICE_NOTIFY_WINDOW_HANDLE                              0x00000000
#define DEVICE_NOTIFY_SERVICE_HANDLE                             0x00000001
#define DEVICE_NOTIFY_ALL_INTERFACE_CLASSES                      0x00000004
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define EVENT_MIN                                                0x00000001
#define EVENT_SYSTEM_SOUND                                       0x00000001
#define EVENT_SYSTEM_ALERT                                       0x00000002
#define EVENT_SYSTEM_FOREGROUND                                  0x00000003
#define EVENT_SYSTEM_MENUSTART                                   0x00000004
#define EVENT_SYSTEM_MENUEND                                     0x00000005
#define EVENT_SYSTEM_MENUPOPUPSTART                              0x00000006
#define EVENT_SYSTEM_MENUPOPUPEND                                0x00000007
#define EVENT_SYSTEM_CAPTURESTART                                0x00000008
#define EVENT_SYSTEM_CAPTUREEND                                  0x00000009
#define EVENT_SYSTEM_MOVESIZESTART                               0x0000000A
#define EVENT_SYSTEM_MOVESIZEEND                                 0x0000000B
#define EVENT_SYSTEM_CONTEXTHELPSTART                            0x0000000C
#define EVENT_SYSTEM_CONTEXTHELPEND                              0x0000000D
#define EVENT_SYSTEM_DRAGDROPSTART                               0x0000000E
#define EVENT_SYSTEM_DRAGDROPEND                                 0x0000000F
#define EVENT_SYSTEM_DIALOGSTART                                 0x00000010
#define EVENT_SYSTEM_DIALOGEND                                   0x00000011
#define EVENT_SYSTEM_SCROLLINGSTART                              0x00000012
#define EVENT_SYSTEM_SCROLLINGEND                                0x00000013
#define EVENT_SYSTEM_SWITCHSTART                                 0x00000014
#define EVENT_SYSTEM_SWITCHEND                                   0x00000015
#define EVENT_SYSTEM_MINIMIZESTART                               0x00000016
#define EVENT_SYSTEM_MINIMIZEEND                                 0x00000017
#define EVENT_CONSOLE_CARET                                      0x00004001
#define EVENT_CONSOLE_UPDATE_REGION                              0x00004002
#define EVENT_CONSOLE_UPDATE_SIMPLE                              0x00004003
#define EVENT_CONSOLE_UPDATE_SCROLL                              0x00004004
#define EVENT_CONSOLE_LAYOUT                                     0x00004005
#define EVENT_CONSOLE_START_APPLICATION                          0x00004006
#define EVENT_CONSOLE_END_APPLICATION                            0x00004007
#define EVENT_OBJECT_CREATE                                      0x00008000
#define EVENT_OBJECT_DESTROY                                     0x00008001
#define EVENT_OBJECT_SHOW                                        0x00008002
#define EVENT_OBJECT_HIDE                                        0x00008003
#define EVENT_OBJECT_REORDER                                     0x00008004
#define EVENT_OBJECT_FOCUS                                       0x00008005
#define EVENT_OBJECT_SELECTION                                   0x00008006
#define EVENT_OBJECT_SELECTIONADD                                0x00008007
#define EVENT_OBJECT_SELECTIONREMOVE                             0x00008008
#define EVENT_OBJECT_SELECTIONWITHIN                             0x00008009
#define EVENT_OBJECT_STATECHANGE                                 0x0000800A
#define EVENT_OBJECT_LOCATIONCHANGE                              0x0000800B
#define EVENT_OBJECT_NAMECHANGE                                  0x0000800C
#define EVENT_OBJECT_DESCRIPTIONCHANGE                           0x0000800D
#define EVENT_OBJECT_VALUECHANGE                                 0x0000800E
#define EVENT_OBJECT_PARENTCHANGE                                0x0000800F
#define EVENT_OBJECT_HELPCHANGE                                  0x00008010
#define EVENT_OBJECT_DEFACTIONCHANGE                             0x00008011
#define EVENT_OBJECT_ACCELERATORCHANGE                           0x00008012
#define EVENT_MAX                                                0x7FFFFFFF
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define CONSOLE_CARET_SELECTION                                  0x00000001
#define CONSOLE_APPLICATION_16BIT                                0x00000001
#define CONSOLE_CARET_VISIBLE                                    0x00000002
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define LSFW_LOCK                                                0x00000001
#define LSFW_UNLOCK                                              0x00000002
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define ASFW_ANY                                                 0xFFFFFFFF
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define LWA_COLORKEY                                             0x00000001
#define LWA_ALPHA                                                0x00000002
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define ULW_COLORKEY                                             0x00000001
#define ULW_ALPHA                                                0x00000002
#define ULW_OPAQUE                                               0x00000004
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define GA_PARENT                                                0x00000001
#define GA_ROOT                                                  0x00000002
#define GA_ROOTOWNER                                             0x00000003
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define MONITOR_DEFAULTTONULL                                    0x00000000
#define MONITOR_DEFAULTTOPRIMARY                                 0x00000001
#define MONITOR_DEFAULTTONEAREST                                 0x00000002
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define MONITORINFOF_PRIMARY                                     0x00000001
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define EDS_RAWMODE                                              0x00000002
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define ISMEX_NOSEND                                             0x00000000
#define ISMEX_SEND                                               0x00000001
#define ISMEX_NOTIFY                                             0x00000002
#define ISMEX_CALLBACK                                           0x00000004
#define ISMEX_REPLIED                                            0x00000008
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define GR_GDIOBJECTS                                            0x00000000
#define GR_USEROBJECTS                                           0x00000001
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define GMMP_USE_DISPLAY_POINTS                                  0x00000001
#define GMMP_USE_HIGH_RESOLUTION_POINTS                          0x00000002
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define XBUTTON1                                                 0x00000001
#define XBUTTON2                                                 0x00000002
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define FE_FONTSMOOTHINGSTANDARD                                 0x00000001
#define FE_FONTSMOOTHINGCLEARTYPE                                0x00000002
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define PW_CLIENTONLY                                            0x00000001
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define RIM_INPUT                                                0x00000000
#define RIM_TYPEMOUSE                                            0x00000000
#define RIM_INPUTSINK                                            0x00000001
#define RIM_TYPEKEYBOARD                                         0x00000001
#define RIM_TYPEHID                                              0x00000002
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define MOUSE_MOVE_RELATIVE                                      0x00000000
#define MOUSE_MOVE_ABSOLUTE                                      0x00000001
#define MOUSE_VIRTUAL_DESKTOP                                    0x00000002
#define MOUSE_ATTRIBUTES_CHANGED                                 0x00000004
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define RI_KEY_MAKE                                              0x00000000
#define RI_KEY_BREAK                                             0x00000001
#define RI_MOUSE_LEFT_BUTTON_DOWN                                0x00000001
#define RI_MOUSE_BUTTON_1_DOWN                                   0x00000001
#define RI_KEY_E0                                                0x00000002
#define RI_MOUSE_LEFT_BUTTON_UP                                  0x00000002
#define RI_MOUSE_BUTTON_1_UP                                     0x00000002
#define RI_KEY_E1                                                0x00000004
#define RI_MOUSE_RIGHT_BUTTON_DOWN                               0x00000004
#define RI_MOUSE_BUTTON_2_DOWN                                   0x00000004
#define RI_KEY_TERMSRV_SET_LED                                   0x00000008
#define RI_MOUSE_RIGHT_BUTTON_UP                                 0x00000008
#define RI_MOUSE_BUTTON_2_UP                                     0x00000008
#define RI_KEY_TERMSRV_SHADOW                                    0x00000010
#define RI_MOUSE_MIDDLE_BUTTON_DOWN                              0x00000010
#define RI_MOUSE_BUTTON_3_DOWN                                   0x00000010
#define RI_MOUSE_MIDDLE_BUTTON_UP                                0x00000020
#define RI_MOUSE_BUTTON_3_UP                                     0x00000020
#define RI_MOUSE_BUTTON_4_DOWN                                   0x00000040
#define RI_MOUSE_BUTTON_4_UP                                     0x00000080
#define KEYBOARD_OVERRUN_MAKE_CODE                               0x000000FF
#define RI_MOUSE_BUTTON_5_DOWN                                   0x00000100
#define RI_MOUSE_BUTTON_5_UP                                     0x00000200
#define RI_MOUSE_WHEEL                                           0x00000400
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define RID_INPUT                                                0x10000003
#define RID_HEADER                                               0x10000005
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define RIDI_PREPARSEDDATA                                       0x20000005
#define RIDI_DEVICENAME                                          0x20000007
#define RIDI_DEVICEINFO                                          0x2000000B
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define RIDEV_REMOVE                                             0x00000001
#define RIDEV_EXCLUDE                                            0x00000010
#define RIDEV_PAGEONLY                                           0x00000020
#define RIDEV_NOLEGACY                                           0x00000030
#define RIDEV_INPUTSINK                                          0x00000100
#define RIDEV_CAPTUREMOUSE                                       0x00000200
#define RIDEV_NOHOTKEYS                                          0x00000200
#define RIDEV_APPKEYS                                            0x00000400
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
typedef BOOL(CALLBACK *DLGPROC)(HWND,UINT,WPARAM,LPARAM);
typedef VOID(CALLBACK *TIMERPROC)(HWND,UINT,UINT,DWORD);
typedef BOOL(CALLBACK *GRAYSTRINGPROC)(HDC,LPARAM,int);
typedef LRESULT(CALLBACK *HOOKPROC)(int,WPARAM,LPARAM);
typedef BOOL(CALLBACK *PROPENUMPROCA)(HWND,LPCSTR,HANDLE);
typedef BOOL(CALLBACK *PROPENUMPROCW)(HWND,LPCWSTR,HANDLE);
typedef BOOL(CALLBACK *PROPENUMPROCEXA)(HWND,LPSTR,HANDLE,DWORD);
typedef BOOL(CALLBACK *PROPENUMPROCEXW)(HWND,LPWSTR,HANDLE,DWORD);
typedef int(CALLBACK *EDITWORDBREAKPROCA)(LPSTR,int,int,int);
typedef int(CALLBACK *EDITWORDBREAKPROCW)(LPWSTR,int,int,int);
typedef LRESULT(CALLBACK *WNDPROC)(HWND,UINT,WPARAM,LPARAM);
typedef BOOL(CALLBACK *DRAWSTATEPROC)(HDC,LPARAM,WPARAM,int,int);
typedef BOOL(CALLBACK *WNDENUMPROC)(HWND,LPARAM);
typedef BOOL(CALLBACK *ENUMWINDOWSPROC)(HWND,LPARAM);
typedef BOOL(CALLBACK* MONITORENUMPROC)(HMONITOR,HDC,LPRECT,LPARAM);
typedef BOOL(CALLBACK *NAMEENUMPROCA)(LPSTR,LPARAM);
typedef BOOL(CALLBACK *NAMEENUMPROCW)(LPWSTR,LPARAM);
typedef NAMEENUMPROCA DESKTOPENUMPROCA;
typedef NAMEENUMPROCW DESKTOPENUMPROCW;
typedef NAMEENUMPROCA WINSTAENUMPROCA;
typedef NAMEENUMPROCW WINSTAENUMPROCW;
typedef void(CALLBACK *SENDASYNCPROC)(HWND,UINT,DWORD,LRESULT);
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
DECLARE_HANDLE(HHOOK);
DECLARE_HANDLE(HDWP);
DECLARE_HANDLE(HDEVNOTIFY);
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   MENUGETOBJECTINFO
   {
    DWORD           dwFlags;
    UINT            uPos;
    HMENU           hmenu;
    PVOID           riid;
    PVOID           pvObj;
   }
   MENUGETOBJECTINFO, *PMENUGETOBJECTINFO;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   ACCEL
   {
    BYTE            fVirt;
    WORD            key;
    WORD             cmd;
   }
   ACCEL,*LPACCEL;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   ACCESSTIMEOUT
   {
    UINT            cbSize;
    DWORD           dwFlags;
    DWORD           iTimeOutMSec;
   }
   ACCESSTIMEOUT, *LPACCESSTIMEOUT;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   ANIMATIONINFO
   {
    UINT            cbSize;
    int             iMinAnimate;
   }
   ANIMATIONINFO,*LPANIMATIONINFO;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   CREATESTRUCTA
   {
    LPVOID          lpCreateParams;
    HINSTANCE       hInstance;
    HMENU           hMenu;
    HWND            hwndParent;
    int             cy;
    int             cx;
    int             y;
    int             x;
    LONG            style;
    LPCSTR          lpszName;
    LPCSTR          lpszClass;
    DWORD           dwExStyle;
   }
   CREATESTRUCTA,*LPCREATESTRUCTA;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   CREATESTRUCTW
   {
    LPVOID          lpCreateParams;
    HINSTANCE       hInstance;
    HMENU           hMenu;
    HWND            hwndParent;
    int             cy;
    int             cx;
    int             y;
    int             x;
    LONG            style;
    LPCWSTR         lpszName;
    LPCWSTR         lpszClass;
    DWORD           dwExStyle;
   }
   CREATESTRUCTW,*LPCREATESTRUCTW;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   CBT_CREATEWNDA
   {
    LPCREATESTRUCTA lpcs;
    HWND            hwndInsertAfter;
   }
   CBT_CREATEWNDA, *LPCBT_CREATEWNDA;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   CBT_CREATEWNDW
   {
    LPCREATESTRUCTW lpcs;
    HWND            hwndInsertAfter;
   }
   CBT_CREATEWNDW, *LPCBT_CREATEWNDW;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   CBTACTIVATESTRUCT
   {
    BOOL            fMouse;
    HWND            hWndActive;
   }
   CBTACTIVATESTRUCT,*LPCBTACTIVATESTRUCT;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   CLIENTCREATESTRUCT
   {
    HANDLE          hWindowMenu;
    UINT            idFirstChild;
   }
   CLIENTCREATESTRUCT,*LPCLIENTCREATESTRUCT;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   COMPAREITEMSTRUCT
   {
    UINT            CtlType;
    UINT            CtlID;
    HWND            hwndItem;
    UINT            itemID1;
    DWORD           itemData1;
    UINT            itemID2;
    DWORD           itemData2;
    DWORD           dwLocaleId;
   }
   COMPAREITEMSTRUCT,*LPCOMPAREITEMSTRUCT;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   COPYDATASTRUCT
   {
    DWORD           dwData;
    DWORD           cbData;
    PVOID           lpData;
   }
   COPYDATASTRUCT,*PCOPYDATASTRUCT;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   CURSORSHAPE
   {
    int             xHotSpot;
    int             yHotSpot;
    int             cx;
    int             cy;
    int             cbWidth;
    BYTE            Planes;
    BYTE            BitsPixel;
   }
   CURSORSHAPE,*LPCURSORSHAPE;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   CWPRETSTRUCT
   {
    LRESULT         lResult;
    LPARAM          lParam;
    WPARAM          wParam;
    DWORD           message;
    HWND            hwnd;
   }
   CWPRETSTRUCT;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   CWPSTRUCT
   {
    LPARAM          lParam;
    WPARAM          wParam;
    UINT            message;
    HWND            hwnd;
   }
   CWPSTRUCT,*PCWPSTRUCT;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   DEBUGHOOKINFO
   {
    DWORD           idThread;
    DWORD           idThreadInstaller;
    LPARAM          lParam;
    WPARAM          wParam;
    int             code;
   }
   DEBUGHOOKINFO,*PDEBUGHOOKINFO,*LPDEBUGHOOKINFO;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  DELETEITEMSTRUCT
  {
   UINT            CtlType;
   UINT            CtlID;
   UINT            itemID;
   HWND            hwndItem;
   UINT            itemData;
  }
  DELETEITEMSTRUCT,*PDELETEITEMSTRUCT,*LPDELETEITEMSTRUCT;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#pragma pack(push,2)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  struct
  {
   DWORD            style;
   DWORD            dwExtendedStyle;
   short            x;
   short            y;
   short            cx;
   short            cy;
   WORD             id;
  }
  DLGITEMTEMPLATE,*LPDLGITEMTEMPLATE;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  struct
  {
   DWORD            style;
   DWORD            dwExtendedStyle;
   WORD             cdit;
   short            x;
   short            y;
   short            cx;
   short            cy;
  }
  DLGTEMPLATE,*LPDLGTEMPLATE,*LPDLGTEMPLATEA,*LPDLGTEMPLATEW;
  typedef const DLGTEMPLATE *LPCDLGTEMPLATE;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#pragma pack(pop)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  DRAWITEMSTRUCT
  {
   UINT             CtlType;
   UINT             CtlID;
   UINT             itemID;
   UINT             itemAction;
   UINT             itemState;
   HWND             hwndItem;
   HDC              hDC;
   RECT             rcItem;
   DWORD            itemData;
  }
  DRAWITEMSTRUCT,*LPDRAWITEMSTRUCT,*PDRAWITEMSTRUCT;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  struct
  {
   UINT             cbSize;
   int              iTabLength;
   int              iLeftMargin;
   int              iRightMargin;
   UINT             uiLengthDrawn;
  }
  DRAWTEXTPARAMS,*LPDRAWTEXTPARAMS;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   PAINTSTRUCT
   {
    HDC             hdc;
    BOOL            fErase;
    RECT            rcPaint;
    BOOL            fRestore;
    BOOL            fIncUpdate;
    BYTE            rgbReserved[32];
   }
   PAINTSTRUCT,*LPPAINTSTRUCT;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   MSG
   {
    HWND            hwnd;
    UINT            message;
    WPARAM          wParam;
    LPARAM          lParam;
    DWORD           time;
    POINT           pt;
   }
   MSG,*LPMSG,*PMSG;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   _ICONINFO
   {
    BOOL            fIcon;
    DWORD           xHotspot;
    DWORD           yHotspot;
    HBITMAP         hbmMask;
    HBITMAP         hbmColor;
   }
   ICONINFO,*PICONINFO;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   NMHDR
   {
    HWND            hwndFrom;
    UINT            idFrom;
    UINT            code;
   }
   NMHDR,*LPNMHDR;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   _WNDCLASSA
   {
    UINT            style;
    WNDPROC         lpfnWndProc;
    int             cbClsExtra;
    int             cbWndExtra;
    HINSTANCE       hInstance;
    HICON           hIcon;
    HCURSOR         hCursor;
    HBRUSH          hbrBackground;
    LPCSTR          lpszMenuName;
    LPCSTR          lpszClassName;
   }
   WNDCLASSA,*LPWNDCLASSA,*PWNDCLASSA;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   _WNDCLASSW
   {
    UINT            style;
    WNDPROC         lpfnWndProc;
    int             cbClsExtra;
    int             cbWndExtra;
    HINSTANCE       hInstance;
    HICON           hIcon;
    HCURSOR         hCursor;
    HBRUSH          hbrBackground;
    LPCWSTR         lpszMenuName;
    LPCWSTR         lpszClassName;
   }
   WNDCLASSW,*LPWNDCLASSW,*PWNDCLASSW;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   _WNDCLASSEXA
   {
    UINT            cbSize;
    UINT            style;
    WNDPROC         lpfnWndProc;
    int             cbClsExtra;
    int             cbWndExtra;
    HINSTANCE       hInstance;
    HICON           hIcon;
    HCURSOR         hCursor;
    HBRUSH          hbrBackground;
    LPCSTR          lpszMenuName;
    LPCSTR          lpszClassName;
    HICON           hIconSm;
   }
   WNDCLASSEXA,*LPWNDCLASSEXA,*PWNDCLASSEXA;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   _WNDCLASSEXW
   {
    UINT            cbSize;
    UINT            style;
    WNDPROC         lpfnWndProc;
    int             cbClsExtra;
    int             cbWndExtra;
    HINSTANCE       hInstance;
    HICON           hIcon;
    HCURSOR         hCursor;
    HBRUSH          hbrBackground;
    LPCWSTR         lpszMenuName;
    LPCWSTR         lpszClassName;
    HICON           hIconSm;
   }
   WNDCLASSEXW,*LPWNDCLASSEXW,*PWNDCLASSEXW;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   MENUITEMINFOA
   {
    UINT            cbSize;
    UINT            fMask;
    UINT            fType;
    UINT            fState;
    UINT            wID;
    HMENU           hSubMenu;
    HBITMAP         hbmpChecked;
    HBITMAP         hbmpUnchecked;
    DWORD           dwItemData;
    LPSTR           dwTypeData;
    UINT            cch;
    HBITMAP         hbmpItem;                              /* NT >= 0500 */
   }
   MENUITEMINFOA,*LPMENUITEMINFOA;
   typedef const MENUITEMINFOA *LPCMENUITEMINFOA;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   MENUITEMINFOW
   {
    UINT            cbSize;
    UINT            fMask;
    UINT            fType;
    UINT            fState;
    UINT            wID;
    HMENU           hSubMenu;
    HBITMAP         hbmpChecked;
    HBITMAP         hbmpUnchecked;
    DWORD           dwItemData;
    LPWSTR          dwTypeData;
    UINT            cch;
    HBITMAP         hbmpItem;                              /* NT >= 0500 */
   }
   MENUITEMINFOW,*LPMENUITEMINFOW;
   typedef const MENUITEMINFOW *LPCMENUITEMINFOW;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   SCROLLINFO
   {
    UINT            cbSize;
    UINT            fMask;
    int             nMin;
    int             nMax;
    UINT            nPage;
    int             nPos;
    int             nTrackPos;
   }
   SCROLLINFO,*LPSCROLLINFO;
   typedef const SCROLLINFO *LPCSCROLLINFO;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   _WINDOWPLACEMENT
   {
    UINT            length;
    UINT            flags;
    UINT            showCmd;
    POINT           ptMinPosition;
    POINT           ptMaxPosition;
    RECT            rcNormalPosition;
   }
   WINDOWPLACEMENT,*LPWINDOWPLACEMENT,*PWINDOWPLACEMENT;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   struct
   {
    WORD            versionNumber;
    WORD            offset;
   }
   MENUITEMTEMPLATEHEADER;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   struct
   {
    WORD            mtOption;
    WORD            mtID;
    WCHAR           mtString[1];
   }
   MENUITEMTEMPLATE;
   MENUTEMPLATE,MENUTEMPLATEA,MENUTEMPLATEW,*LPMENUTEMPLATEA,
   *LPMENUTEMPLATEW,*LPMENUTEMPLATE;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   HELPINFO
   {
    UINT            cbSize;
    int             iContextType;
    int             iCtrlId;
    HANDLE          hItemHandle;
    DWORD           dwContextId;
    POINT           MousePos;
   }
   HELPINFO,*LPHELPINFO;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   typedef void(CALLBACK *MSGBOXCALLBACK)(LPHELPINFO);
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   struct
   {
    UINT            cbSize;
    HWND            hwndOwner;
    HINSTANCE       hInstance;
    LPCSTR          lpszText;
    LPCSTR          lpszCaption;
    DWORD           dwStyle;
    LPCSTR          lpszIcon;
    DWORD           dwContextHelpId;
    MSGBOXCALLBACK  lpfnMsgBoxCallback;
    DWORD           dwLanguageId;
   }
   MSGBOXPARAMSA,*PMSGBOXPARAMSA,*LPMSGBOXPARAMSA;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   struct
   {
    UINT            cbSize;
    HWND            hwndOwner;
    HINSTANCE       hInstance;
    LPCWSTR         lpszText;
    LPCWSTR         lpszCaption;
    DWORD           dwStyle;
    LPCWSTR         lpszIcon;
    DWORD           dwContextHelpId;
    MSGBOXCALLBACK  lpfnMsgBoxCallback;
    DWORD           dwLanguageId;
   }
   MSGBOXPARAMSW,*PMSGBOXPARAMSW,*LPMSGBOXPARAMSW;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   USEROBJECTFLAGS
   {
    BOOL            fInherit;
    BOOL            fReserved;
    DWORD           dwFlags;
   }
   USEROBJECTFLAGS;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   FILTERKEYS
   {
    UINT            cbSize;
    DWORD           dwFlags;
    DWORD           iWaitMSec;
    DWORD           iDelayMSec;
    DWORD           iRepeatMSec;
    DWORD           iBounceMSec;
   }
   FILTERKEYS;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   HIGHCONTRASTA
   {
    UINT            cbSize;
    DWORD           dwFlags;
    LPSTR           lpszDefaultScheme;
   }
   HIGHCONTRASTA,*LPHIGHCONTRASTA;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   HIGHCONTRASTW
   {
    UINT            cbSize;
    DWORD           dwFlags;
    LPWSTR          lpszDefaultScheme;
   }
   HIGHCONTRASTW,*LPHIGHCONTRASTW;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#ifndef NOGDI
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   ICONMETRICSA
   {
    UINT            cbSize;
    int             iHorzSpacing;
    int             iVertSpacing;
    int             iTitleWrap;
    LOGFONTA        lfFont;
   }
   ICONMETRICSA,*LPICONMETRICSA;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   ICONMETRICSW
   {
    UINT            cbSize;
    int             iHorzSpacing;
    int             iVertSpacing;
    int             iTitleWrap;
    LOGFONTW        lfFont;
   }
   ICONMETRICSW,*LPICONMETRICSW;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#endif /*  NOGDI */
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   MINIMIZEDMETRICS
   {
    UINT            cbSize;
    int             iWidth;
    int             iHorzGap;
    int             iVertGap;
    int             iArrange;
   }
   MINIMIZEDMETRICS,*LPMINIMIZEDMETRICS;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   MOUSEKEYS
   {
    UINT            cbSize;
    DWORD           dwFlags;
    DWORD           iMaxSpeed;
    DWORD           iTimeToMaxSpeed;
    DWORD           iCtrlSpeed;
    DWORD           dwReserved1;
    DWORD           dwReserved2;
   }
   MOUSEKEYS,*LPMOUSEKEYS;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#ifndef NOGDI
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   NONCLIENTMETRICSA
   {
    UINT            cbSize;
    int             iBorderWidth;
    int             iScrollWidth;
    int             iScrollHeight;
    int             iCaptionWidth;
    int             iCaptionHeight;
    LOGFONTA        lfCaptionFont;
    int             iSmCaptionWidth;
    int             iSmCaptionHeight;
    LOGFONTA        lfSmCaptionFont;
    int             iMenuWidth;
    int             iMenuHeight;
    LOGFONTA        lfMenuFont;
    LOGFONTA        lfStatusFont;
    LOGFONTA        lfMessageFont;
   }
   NONCLIENTMETRICSA,*LPNONCLIENTMETRICSA;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   NONCLIENTMETRICSW
   {
    UINT            cbSize;
    int             iBorderWidth;
    int             iScrollWidth;
    int             iScrollHeight;
    int             iCaptionWidth;
    int             iCaptionHeight;
    LOGFONTW        lfCaptionFont;
    int             iSmCaptionWidth;
    int             iSmCaptionHeight;
    LOGFONTW        lfSmCaptionFont;
    int             iMenuWidth;
    int             iMenuHeight;
    LOGFONTW        lfMenuFont;
    LOGFONTW        lfStatusFont;
    LOGFONTW        lfMessageFont;
   }
   NONCLIENTMETRICSW,*LPNONCLIENTMETRICSW;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#endif
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   SERIALKEYSA
   {
    UINT            cbSize;
    DWORD           dwFlags;
    LPSTR           lpszActivePort;
    LPSTR           lpszPort;
    UINT            iBaudRate;
    UINT            iPortState;
    UINT            iActive;
   }
   SERIALKEYSA,*LPSERIALKEYSA;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   SERIALKEYSW
   {
    UINT            cbSize;
    DWORD           dwFlags;
    LPWSTR          lpszActivePort;
    LPWSTR          lpszPort;
    UINT            iBaudRate;
    UINT            iPortState;
    UINT            iActive;
   }
   SERIALKEYSW,*LPSERIALKEYSW;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   SOUNDSENTRYA
   {
    UINT            cbSize;
    DWORD           dwFlags;
    DWORD           iFSTextEffect;
    DWORD           iFSTextEffectMSec;
    DWORD           iFSTextEffectColorBits;
    DWORD           iFSGrafEffect;
    DWORD           iFSGrafEffectMSec;
    DWORD           iFSGrafEffectColor;
    DWORD           iWindowsEffect;
    DWORD           iWindowsEffectMSec;
    LPSTR           lpszWindowsEffectDLL;
    DWORD           iWindowsEffectOrdinal;
   }
   SOUNDSENTRYA,*LPSOUNDSENTRYA;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   SOUNDSENTRYW
   {
    UINT            cbSize;
    DWORD           dwFlags;
    DWORD           iFSTextEffect;
    DWORD           iFSTextEffectMSec;
    DWORD           iFSTextEffectColorBits;
    DWORD           iFSGrafEffect;
    DWORD           iFSGrafEffectMSec;
    DWORD           iFSGrafEffectColor;
    DWORD           iWindowsEffect;
    DWORD           iWindowsEffectMSec;
    LPWSTR          lpszWindowsEffectDLL;
    DWORD           iWindowsEffectOrdinal;
   }
   SOUNDSENTRYW,*LPSOUNDSENTRYW;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   STICKYKEYS
   {
    DWORD           cbSize;
    DWORD           dwFlags;
   }
   STICKYKEYS,*LPSTICKYKEYS;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   TOGGLEKEYS
   {
    DWORD           cbSize;
    DWORD           dwFlags;
   }
   TOGGLEKEYS;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   MOUSEHOOKSTRUCT
   {
    POINT           pt;
    HWND            hwnd;
    UINT            wHitTestCode;
    DWORD           dwExtraInfo;
   }
   MOUSEHOOKSTRUCT,*LPMOUSEHOOKSTRUCT,*PMOUSEHOOKSTRUCT;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   TRACKMOUSEEVENT
   {
    DWORD           cbSize;
    DWORD           dwFlags;
    HWND            hwndTrack;
    DWORD           dwHoverTime;
   }
   TRACKMOUSEEVENT,*LPTRACKMOUSEEVENT;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   TPMPARAMS
   {
    UINT            cbSize;
    RECT            rcExclude;
   }
   TPMPARAMS,*LPTPMPARAMS;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   EVENTMSG
   {
    UINT            message;
    UINT            paramL;
    UINT            paramH;
    DWORD           time;
    HWND            hwnd;
   }
   EVENTMSG,*PEVENTMSGMSG,*LPEVENTMSGMSG,*PEVENTMSG,*LPEVENTMSG;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   _WINDOWPOS
   {
    HWND            hwnd;
    HWND            hwndInsertAfter;
    int             x;
    int             y;
    int             cx;
    int             cy;
    UINT            flags;
   }
   WINDOWPOS,*PWINDOWPOS,*LPWINDOWPOS;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   NCCALCSIZE_PARAMS
   {
    RECT            rgrc[3];
    PWINDOWPOS      lppos;
   }
   NCCALCSIZE_PARAMS, *LPNCCALCSIZE_PARAMS;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   MDICREATESTRUCTA
   {
    LPCSTR          szClass;
    LPCSTR          szTitle;
    HANDLE          hOwner;
    int             x;
    int             y;
    int             cx;
    int             cy;
    DWORD           style;
    LPARAM          lParam;
   }
   MDICREATESTRUCTA,*LPMDICREATESTRUCTA;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   MDICREATESTRUCTW
   {
    LPCWSTR         szClass;
    LPCWSTR         szTitle;
    HANDLE          hOwner;
    int             x;
    int             y;
    int             cx;
    int             cy;
    DWORD           style;
    LPARAM          lParam;
   }
   MDICREATESTRUCTW,*LPMDICREATESTRUCTW;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   MINMAXINFO
   {
    POINT           ptReserved;
    POINT           ptMaxSize;
    POINT           ptMaxPosition;
    POINT           ptMinTrackSize;
    POINT           ptMaxTrackSize;
   }
   MINMAXINFO,*PMINMAXINFO,*LPMINMAXINFO;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   MDINEXTMENU
   {
    HMENU           hmenuIn;
    HMENU           hmenuNext;
    HWND            hwndNext;
   }
   MDINEXTMENU,*PMDINEXTMENU,*LPMDINEXTMENU;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   MEASUREITEMSTRUCT
   {
    UINT            CtlType;
    UINT            CtlID;
    UINT            itemID;
    UINT            itemWidth;
    UINT            itemHeight;
    DWORD           itemData;
   }
   MEASUREITEMSTRUCT,*PMEASUREITEMSTRUCT,*LPMEASUREITEMSTRUCT;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   DROPSTRUCT
   {
    HWND            hwndSource;
    HWND            hwndSink;
    DWORD           wFmt;
    DWORD           dwData;
    POINT           ptDrop;
    DWORD           dwControlData;
   }
   DROPSTRUCT,*PDROPSTRUCT,*LPDROPSTRUCT;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
typedef DWORD HELPPOLY;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   MULTIKEYHELPA
   {
    DWORD           mkSize;
    CHAR            mkKeylist;
    CHAR            szKeyphrase[1];
   }
   MULTIKEYHELPA,*PMULTIKEYHELPA,*LPMULTIKEYHELPA;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   MULTIKEYHELPW
   {
    DWORD           mkSize;
    WCHAR           mkKeylist;
    WCHAR           szKeyphrase[1];
   }
   MULTIKEYHELPW,*PMULTIKEYHELPW,*LPMULTIKEYHELPW;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   HELPWININFOA
   {
    int             wStructSize;
    int             x;
    int             y;
    int             dx;
    int             dy;
    int             wMax;
    CHAR            rgchMember[2];
   }
   HELPWININFOA,*PHELPWININFOA,*LPHELPWININFOA;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   HELPWININFOW
   {
    int             wStructSize;
    int             x;
    int             y;
    int             dx;
    int             dy;
    int             wMax;
    WCHAR           rgchMember[2];
   }
   HELPWININFOW,*PHELPWININFOW,*LPHELPWININFOW;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   STYLESTRUCT
   { 
    DWORD           styleOld;
    DWORD           styleNew;
   }
   STYLESTRUCT,*LPSTYLESTRUCT;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   ALTTABINFO
   {
    DWORD           cbSize;
    int             cItems;
    int             cColumns;
    int             cRows;
    int             iColFocus;
    int             iRowFocus;
    int             cxItem;
    int             cyItem;
    POINT           ptStart;
   }
   ALTTABINFO,*PALTTABINFO,*LPALTTABINFO;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   COMBOBOXINFO
   {
    DWORD           cbSize;
    RECT            rcItem;
    RECT            rcButton;
    DWORD           stateButton;
    HWND            hwndCombo;
    HWND            hwndItem;
    HWND            hwndList;
   }
   COMBOBOXINFO,*PCOMBOBOXINFO,*LPCOMBOBOXINFO;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   CURSORINFO
   {
    DWORD           cbSize;
    DWORD           flags;
    HCURSOR         hCursor;
    POINT           ptScreenPos;
   }
   CURSORINFO,*PCURSORINFO,*LPCURSORINFO;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   MENUBARINFO
   {
    DWORD           cbSize;
    RECT            rcBar;
    HMENU           hMenu;
    HWND            hwndMenu;
    BOOL            fBarFocused:1;
    BOOL            fFocused:1;
   }
   MENUBARINFO,*PMENUBARINFO;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   MENUINFO
   {
    DWORD           cbSize;
    DWORD           fMask;
    DWORD           dwStyle;
    UINT            cyMax;
    HBRUSH          hbrBack;
    DWORD           dwContextHelpID;
    ULONG_PTR       dwMenuData;
   }
   MENUINFO,*LPMENUINFO;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   typedef MENUINFO CONST *LPCMENUINFO;
   #define CCHILDREN_SCROLLBAR 5
   SCROLLBARINFO
   {
    DWORD           cbSize;
    RECT            rcScrollBar;
    int             dxyLineButton;
    int             xyThumbTop;
    int             xyThumbBottom;
    int             reserved;
    DWORD           rgstate[CCHILDREN_SCROLLBAR+1];
   }
   SCROLLBARINFO,*PSCROLLBARINFO,*LPSCROLLBARINFO;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   #define CCHILDREN_TITLEBAR 5                           /* WIN >= 0410 */
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   TITLEBARINFO
   {
    DWORD           cbSize;
    RECT            rcTitleBar;
    DWORD           rgstate[CCHILDREN_TITLEBAR+1];
   }
   TITLEBARINFO,*PTITLEBARINFO,*LPTITLEBARINFO;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   WINDOWINFO
   {
    DWORD           cbSize;
    RECT            rcWindow;
    RECT            rcClient;
    DWORD           dwStyle;
    DWORD           dwExStyle;
    DWORD           dwWindowStatus;
    UINT            cxWindowBorders;
    UINT            cyWindowBorders;
    ATOM            atomWindowType;
    WORD            wCreatorVersion;
   }
   WINDOWINFO,*PWINDOWINFO,*LPWINDOWINFO;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   LASTINPUTINFO
   {
    UINT            cbSize;
    DWORD           dwTime;
   }
   LASTINPUTINFO,*PLASTINPUTINFO;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   MONITORINFO
   {
    DWORD           cbSize;
    RECT            rcMonitor;
    RECT            rcWork;
    DWORD           dwFlags;
   }
   MONITORINFO,*LPMONITORINFO;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   #define CCHDEVICENAME 32
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   #ifdef __cplusplus
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   MONITORINFOEXA : public tagMONITORINFO
   {
    CHAR            szDevice[CCHDEVICENAME];
   }
   MONITORINFOEXA, *LPMONITORINFOEXA;
   MONITORINFOEXW : public tagMONITORINFO
   {
    WCHAR           szDevice[CCHDEVICENAME];
   }
   MONITORINFOEXW, *LPMONITORINFOEXW;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#else
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   MONITORINFOEXA
   {
    DWORD           cbSize;
    RECT            rcMonitor;
    RECT            rcWork;
    DWORD           dwFlags;
    CHAR            szDevice[CCHDEVICENAME];
   }
   MONITORINFOEXA,*LPMONITORINFOEXA;
   MONITORINFOEXW
   {
    DWORD           cbSize;
    RECT            rcMonitor;
    RECT            rcWork;
    DWORD           dwFlags;
    WCHAR           szDevice[CCHDEVICENAME];
   }
   MONITORINFOEXW,*LPMONITORINFOEXW;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   KBDLLHOOKSTRUCT
   {
    DWORD           vkCode;
    DWORD           scanCode;
    DWORD           flags;
    DWORD           time;
    DWORD           dwExtraInfo;
   }
   KBDLLHOOKSTRUCT,*LPKBDLLHOOKSTRUCT,*PKBDLLHOOKSTRUCT;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                        NT >= 0500 or WIN >= 0410
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   struct
   {
    UINT            cbSize;
    HWND            hwnd;
    DWORD           dwFlags;
    UINT            uCount;
    DWORD           dwTimeout;
   }
   FLASHWINFO,*PFLASHWINFO;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                        NT >=         0x0500 or WIN >=         0x0490
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   MOUSEMOVEPOINT
   {
    int             x;
    int             y;
    DWORD           time;
    ULONG_PTR       dwExtraInfo;
   }
   MOUSEMOVEPOINT,*PMOUSEMOVEPOINT,*LPMOUSEMOVEPOINT;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   MOUSEINPUT
   {
    LONG            dx;
    LONG            dy;
    DWORD           mouseData;
    DWORD           dwFlags;
    DWORD           time;
    ULONG_PTR       dwExtraInfo;
   }
   MOUSEINPUT,*PMOUSEINPUT;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   KEYBDINPUT
   {
    WORD            wVk;
    WORD            wScan;
    DWORD           dwFlags;
    DWORD           time;
    ULONG_PTR       dwExtraInfo;
   }
   KEYBDINPUT,*PKEYBDINPUT;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   HARDWAREINPUT
   {
    DWORD           uMsg;
    WORD            wParamL;
    WORD            wParamH;
   }
   HARDWAREINPUT,*PHARDWAREINPUT;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   INPUT
   {
    DWORD           type;
    _ANONYMOUS_UNION union
    {
     MOUSEINPUT     mi;
     KEYBDINPUT     ki;
     HARDWAREINPUT  hi;
    }
    DUMMYUNIONNAME;
   }
   INPUT,*PINPUT,*LPINPUT;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   GUITHREADINFO
   {
    DWORD           cbSize;
    DWORD           flags;
    HWND            hwndActive;
    HWND            hwndFocus;
    HWND            hwndCapture;
    HWND            hwndMenuOwner;
    HWND            hwndMoveSize;
    HWND            hwndCaret;
    RECT            rcCaret;
   }
   GUITHREADINFO,*PGUITHREADINFO,*LPGUITHREADINFO;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   typedef VOID (*WINEVENTPROC)
   (HWINEVENTHOOK,DWORD,HWND,LONG,LONG,DWORD,DWORD);
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   struct
   {
    UINT            cbSize;
    HDESK           hdesk;
    HWND            hwnd;
    LUID            luid;
   }
   BSMINFO,*PBSMINFO;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   DECLARE_HANDLE(HRAWINPUT);
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   RAWINPUTHEADER
   {
    DWORD           dwType;
    DWORD           dwSize;
    HANDLE          hDevice;
    WPARAM          wParam;
   }
   RAWINPUTHEADER,*PRAWINPUTHEADER;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   RAWMOUSE
   {
    USHORT          usFlags;
    _ANONYMOUS_UNION union
    {
     ULONG          ulButtons;
     _ANONYMOUS_STRUCT struct
     {
      USHORT        usButtonFlags;
      USHORT        usButtonData;
     };
    };
    ULONG           ulRawButtons;
    LONG            lLastX;
    LONG            lLastY;
    ULONG           ulExtraInformation;
   }
   RAWMOUSE,*PRAWMOUSE,*LPRAWMOUSE;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   RAWKEYBOARD
   {
    USHORT          MakeCode;
    USHORT          Flags;
    USHORT          Reserved;
    USHORT          VKey;
    UINT            Message;
    ULONG           ExtraInformation;
   }
   RAWKEYBOARD,*PRAWKEYBOARD,*LPRAWKEYBOARD;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   RAWHID
   {
    DWORD           dwSizeHid;
    DWORD           dwCount;
    BYTE            bRawData;
   }
   RAWHID,*PRAWHID,*LPRAWHID;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   RAWINPUT
   {
    RAWINPUTHEADER  header;
    union
    {
     RAWMOUSE       mouse;
     RAWKEYBOARD    keyboard;
     RAWHID         hid;
    }
    data;
   }
   RAWINPUT,*PRAWINPUT,*LPRAWINPUT;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   RAWINPUTDEVICE
   {
    USHORT          usUsagePage;
    USHORT          usUsage;
    DWORD           dwFlags;
    HWND            hwndTarget;
   }
   RAWINPUTDEVICE,*PRAWINPUTDEVICE,*LPRAWINPUTDEVICE;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   typedef const RAWINPUTDEVICE *PCRAWINPUTDEVICE;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   RAWINPUTDEVICELIST
   {
    HANDLE          hDevice;
    DWORD           dwType;
   }
   RAWINPUTDEVICELIST,*PRAWINPUTDEVICELIST;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   RID_DEVICE_INFO_MOUSE
   {
    DWORD           dwId;
    DWORD           dwNumberOfButtons;
    DWORD           dwSampleRate;
    BOOL            fHasHorizontalWheel;
   }
   RID_DEVICE_INFO_MOUSE, *PRID_DEVICE_INFO_MOUSE;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   RID_DEVICE_INFO_KEYBOARD
   {
    DWORD           dwType;
    DWORD           dwSubType;
    DWORD           dwKeyboardMode;
    DWORD           dwNumberOfFunctionKeys;
    DWORD           dwNumberOfIndicators;
    DWORD           dwNumberOfKeysTotal;
   }
   RID_DEVICE_INFO_KEYBOARD, *PRID_DEVICE_INFO_KEYBOARD;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   RID_DEVICE_INFO_HID
   {
    DWORD           dwVendorId;
    DWORD           dwProductId;
    DWORD           dwVersionNumber;
    USHORT          usUsagePage;
    USHORT          usUsage;
   }
   RID_DEVICE_INFO_HID, *PRID_DEVICE_INFO_HID;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   RID_DEVICE_INFO
   { 
    DWORD           cbSize; 
    DWORD           dwType; 
    _ANONYMOUS_UNION union
    { 
     RID_DEVICE_INFO_MOUSE     mouse; 
     RID_DEVICE_INFO_KEYBOARD  keyboard; 
     RID_DEVICE_INFO_HID       hid; 
    }
    DUMMYUNIONNAME;
   }
   RID_DEVICE_INFO, *PRID_DEVICE_INFO, *LPRID_DEVICE_INFO;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   struct
   {
    POINT           pt;
    DWORD           mouseData;
    DWORD           flags;
    DWORD           time;
    ULONG_PTR       dwExtraInfo;
   }
   MSLLHOOKSTRUCT, *PMSLLHOOKSTRUCT;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define AnsiToOem CharToOemA
#define OemToAnsi OemToCharA
#define AnsiToOemBuff CharToOemBuffA
#define OemToAnsiBuff OemToCharBuffA
#define AnsiUpper CharUpperA
#define AnsiUpperBuff CharUpperBuffA
#define AnsiLower CharLowerA
#define AnsiLowerBuff CharLowerBuffA
#define AnsiNext CharNextA
#define AnsiPrev CharPrevA
#define MAKELPARAM(l,h) ((LPARAM)MAKELONG(l,h))
#define MAKEWPARAM(l,h) ((WPARAM)MAKELONG(l,h))
#define MAKELRESULT(l,h) ((LRESULT)MAKELONG(l,h))
#define POINTSTOPOINT(p,ps) { \
  (p).x=LOWORD(*(DWORD *)&ps); \
  (p).y=HIWORD(*(DWORD *)&ps); \
}
#define POINTTOPOINTS(p) ((POINTS)MAKELONG((p).x,(p).y))
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   typedef const GUID *LPCGUID;
   typedef HANDLE HPOWERNOTIFY;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   struct
   {
    GUID            PowerSetting;
    DWORD           DataLength;
    UCHAR           Data[1];
   }
   POWERBROADCAST_SETTING, *PPOWERBROADCAST_SETTING;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
extern const GUID GUID_POWERSCHEME_PERSONALITY;
extern const GUID GUID_MIN_POWER_SAVINGS;
extern const GUID GUID_MAX_POWER_SAVINGS;
extern const GUID GUID_TYPICAL_POWER_SAVINGS;
extern const GUID GUID_ACDC_POWER_SOURCE;
extern const GUID GUID_BATTERY_PERCENTAGE_REMAINING;
extern const GUID GUID_IDLE_BACKGROUND_TASK;
extern const GUID GUID_SYSTEM_AWAYMODE;
extern const GUID GUID_MONITOR_POWER_ON;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define CopyCursor(c) ((HCURSOR)CopyIcon((HICON)(c)))
#define CreateDialogA(h,n,w,f) CreateDialogParamA(h,n,w,f,0)
#define CreateDialogW(h,n,w,f) CreateDialogParamW(h,n,w,f,0)
#define CreateDialogIndirectA(h,t,w,f) CreateDialogIndirectParamA(h,t,w,f,0)
#define CreateDialogIndirectW(h,t,w,f) CreateDialogIndirectParamW(h,t,w,f,0)
#define GetNextWindow(h,c) GetWindow(h,c)
#define CreateWindowA(a,b,c,d,e,f,g,h,i,j,k) CreateWindowExA(0,a,b,c,d,e,f,g,h,i,j,k)
#define CreateWindowW(a,b,c,d,e,f,g,h,i,j,k) CreateWindowExW(0,a,b,c,d,e,f,g,h,i,j,k)
#define DefHookProc(c,p,lp,h) CallNextHookEx((HHOOK)*h,c,p,lp)
#define DialogBoxA(i,t,p,f) DialogBoxParamA(i,t,p,f,0)
#define DialogBoxW(i,t,p,f) DialogBoxParamW(i,t,p,f,0)
#define DialogBoxIndirectA(i,t,p,f) DialogBoxIndirectParamA(i,t,p,f,0)
#define DialogBoxIndirectW(i,t,p,f) DialogBoxIndirectParamW(i,t,p,f,0)
#define EnumTaskWindows(h,f,p) EnumThreadWindows((DWORD)h,f,p)
#define ExitWindows(r,c) ExitWindowsEx(EWX_LOGOFF,0)
#define GetWindowTask(hWnd) ((HANDLE)GetWindowThreadProcessId(hWnd, NULL))
#define PostAppMessageA(t,m,w,l) PostThreadMessageA((DWORD)t,m,w,l)
#define PostAppMessageW(t,m,w,l) PostThreadMessageW((DWORD)t,m,w,l)
#define GetSysModalWindow() (NULL)
#define SetSysModalWindow(h) (NULL)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
WINUSERAPI HKL           WINAPI   ActivateKeyboardLayout(HKL,UINT);
WINUSERAPI BOOL          WINAPI   AdjustWindowRect(LPRECT,DWORD,BOOL);
WINUSERAPI BOOL          WINAPI   AdjustWindowRectEx(LPRECT,DWORD,BOOL,DWORD);
WINUSERAPI BOOL          WINAPI   AnimateWindow(HWND,DWORD,DWORD);
WINUSERAPI BOOL          WINAPI   AnyPopup(void);
WINUSERAPI BOOL          WINAPI   AppendMenuA(HMENU,UINT,UINT_PTR,LPCSTR);
WINUSERAPI BOOL          WINAPI   AppendMenuW(HMENU,UINT,UINT_PTR,LPCWSTR);
WINUSERAPI UINT          WINAPI   ArrangeIconicWindows(HWND);
WINUSERAPI BOOL          WINAPI   AttachThreadInput(DWORD,DWORD,BOOL);
WINUSERAPI HDWP          WINAPI   BeginDeferWindowPos(int);
WINUSERAPI HDC           WINAPI   BeginPaint(HWND,LPPAINTSTRUCT);
WINUSERAPI BOOL          WINAPI   BringWindowToTop(HWND);
WINUSERAPI long          WINAPI   BroadcastSystemMessage(DWORD,LPDWORD,UINT,WPARAM,LPARAM);
WINUSERAPI long          WINAPI   BroadcastSystemMessageA(DWORD,LPDWORD,UINT,WPARAM,LPARAM);
WINUSERAPI long          WINAPI   BroadcastSystemMessageW(DWORD,LPDWORD,UINT,WPARAM,LPARAM);
WINUSERAPI long          WINAPI   BroadcastSystemMessageExA(DWORD,LPDWORD,UINT,WPARAM,LPARAM,PBSMINFO);
WINUSERAPI long          WINAPI   BroadcastSystemMessageExW(DWORD,LPDWORD,UINT,WPARAM,LPARAM,PBSMINFO);
WINUSERAPI BOOL          WINAPI   CallMsgFilterA(LPMSG,INT);
WINUSERAPI BOOL          WINAPI   CallMsgFilterW(LPMSG,INT);
WINUSERAPI LRESULT       WINAPI   CallNextHookEx(HHOOK,int,WPARAM,LPARAM);
WINUSERAPI LRESULT       WINAPI   CallWindowProcA(WNDPROC,HWND,UINT,WPARAM,LPARAM);
WINUSERAPI LRESULT       WINAPI   CallWindowProcW(WNDPROC,HWND,UINT,WPARAM,LPARAM);
WINUSERAPI WORD          WINAPI   CascadeWindows(HWND,UINT,LPCRECT,UINT,const HWND*);
WINUSERAPI BOOL          WINAPI   ChangeClipboardChain(HWND,HWND);
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#ifndef NOGDI
WINUSERAPI LONG          WINAPI   ChangeDisplaySettingsA(PDEVMODEA,DWORD);
WINUSERAPI LONG          WINAPI   ChangeDisplaySettingsW(PDEVMODEW,DWORD);
WINUSERAPI LONG          WINAPI   ChangeDisplaySettingsExA(LPCSTR,LPDEVMODEA,HWND,DWORD,LPVOID);
WINUSERAPI LONG          WINAPI   ChangeDisplaySettingsExW(LPCWSTR,LPDEVMODEW,HWND,DWORD,LPVOID);
#endif
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
WINUSERAPI BOOL          WINAPI   ChangeMenuA(HMENU,UINT,LPCSTR,UINT,UINT);
WINUSERAPI BOOL          WINAPI   ChangeMenuW(HMENU,UINT,LPCWSTR,UINT,UINT);
WINUSERAPI LPSTR         WINAPI   CharLowerA(LPSTR);
WINUSERAPI LPWSTR        WINAPI   CharLowerW(LPWSTR);
WINUSERAPI DWORD         WINAPI   CharLowerBuffA(LPSTR,DWORD);
WINUSERAPI DWORD         WINAPI   CharLowerBuffW(LPWSTR,DWORD);
WINUSERAPI LPSTR         WINAPI   CharNextA(LPCSTR);
WINUSERAPI LPWSTR        WINAPI   CharNextW(LPCWSTR);
WINUSERAPI LPSTR         WINAPI   CharNextExA(WORD,LPCSTR,DWORD);
WINUSERAPI LPSTR         WINAPI   CharPrevA(LPCSTR,LPCSTR);
WINUSERAPI LPWSTR        WINAPI   CharPrevW(LPCWSTR,LPCWSTR);
WINUSERAPI LPSTR         WINAPI   CharPrevExA(WORD,LPCSTR,LPCSTR,DWORD);
WINUSERAPI BOOL          WINAPI   CharToOemA(LPCSTR,LPSTR);
WINUSERAPI BOOL          WINAPI   CharToOemW(LPCWSTR,LPSTR);
WINUSERAPI BOOL          WINAPI   CharToOemBuffA(LPCSTR,LPSTR,DWORD);
WINUSERAPI BOOL          WINAPI   CharToOemBuffW(LPCWSTR,LPSTR,DWORD);
WINUSERAPI LPSTR         WINAPI   CharUpperA(LPSTR);
WINUSERAPI LPWSTR        WINAPI   CharUpperW(LPWSTR);
WINUSERAPI DWORD         WINAPI   CharUpperBuffA(LPSTR,DWORD);
WINUSERAPI DWORD         WINAPI   CharUpperBuffW(LPWSTR,DWORD);
WINUSERAPI BOOL          WINAPI   CheckDlgButton(HWND,int,UINT);
WINUSERAPI DWORD         WINAPI   CheckMenuItem(HMENU,UINT,UINT);
WINUSERAPI BOOL          WINAPI   CheckMenuRadioItem(HMENU,UINT,UINT,UINT,UINT);
WINUSERAPI BOOL          WINAPI   CheckRadioButton(HWND,int,int,int);
WINUSERAPI HWND          WINAPI   ChildWindowFromPoint(HWND,POINT);
WINUSERAPI HWND          WINAPI   ChildWindowFromPointEx(HWND,POINT,UINT);
WINUSERAPI BOOL          WINAPI   ClientToScreen(HWND,LPPOINT);
WINUSERAPI BOOL          WINAPI   ClipCursor(LPCRECT);
WINUSERAPI BOOL          WINAPI   CloseClipboard(void);
WINUSERAPI BOOL          WINAPI   CloseDesktop(HDESK);
WINUSERAPI BOOL          WINAPI   CloseWindow(HWND);
WINUSERAPI BOOL          WINAPI   CloseWindowStation(HWINSTA);
WINUSERAPI int           WINAPI   CopyAcceleratorTableA(HACCEL,LPACCEL,int);
WINUSERAPI int           WINAPI   CopyAcceleratorTableW(HACCEL,LPACCEL,int);
WINUSERAPI HICON         WINAPI   CopyIcon(HICON);
WINUSERAPI HANDLE        WINAPI   CopyImage(HANDLE,UINT,int,int,UINT);
WINUSERAPI BOOL          WINAPI   CopyRect(LPRECT,LPCRECT);
WINUSERAPI int           WINAPI   CountClipboardFormats(void);
WINUSERAPI HACCEL        WINAPI   CreateAcceleratorTableA(LPACCEL,int);
WINUSERAPI HACCEL        WINAPI   CreateAcceleratorTableW(LPACCEL,int);
WINUSERAPI BOOL          WINAPI   CreateCaret(HWND,HBITMAP,int,int);
WINUSERAPI HCURSOR       WINAPI   CreateCursor(HINSTANCE,int,int,int,int,PCVOID,PCVOID);
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#ifndef NOGDI
WINUSERAPI HDESK         WINAPI   CreateDesktopA(LPCSTR,LPCSTR,LPDEVMODEA,DWORD,ACCESS_MASK,LPSECURITY_ATTRIBUTES);
WINUSERAPI HDESK         WINAPI   CreateDesktopW(LPCWSTR,LPCWSTR,LPDEVMODEW,DWORD,ACCESS_MASK,LPSECURITY_ATTRIBUTES);
#endif
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
WINUSERAPI HWND          WINAPI   CreateDialogIndirectParamA(HINSTANCE,LPCDLGTEMPLATE,HWND,DLGPROC,LPARAM);
WINUSERAPI HWND          WINAPI   CreateDialogIndirectParamW(HINSTANCE,LPCDLGTEMPLATE,HWND,DLGPROC,LPARAM);
WINUSERAPI HWND          WINAPI   CreateDialogParamA(HINSTANCE,LPCSTR,HWND,DLGPROC,LPARAM);
WINUSERAPI HWND          WINAPI   CreateDialogParamW(HINSTANCE,LPCWSTR,HWND,DLGPROC,LPARAM);
WINUSERAPI HICON         WINAPI   CreateIcon(HINSTANCE,int,int,BYTE,BYTE,const BYTE*,const BYTE*);
WINUSERAPI HICON         WINAPI   CreateIconFromResource(PBYTE,DWORD,BOOL,DWORD);
WINUSERAPI HICON         WINAPI   CreateIconFromResourceEx(PBYTE,DWORD,BOOL,DWORD,int,int,UINT);
WINUSERAPI HICON         WINAPI   CreateIconIndirect(PICONINFO);
WINUSERAPI HWND          WINAPI   CreateMDIWindowA(LPCSTR,LPCSTR,DWORD,int,int,int,int,HWND,HINSTANCE,LPARAM);
WINUSERAPI HWND          WINAPI   CreateMDIWindowW(LPCWSTR,LPCWSTR,DWORD,int,int,int,int,HWND,HINSTANCE,LPARAM);
WINUSERAPI HMENU         WINAPI   CreateMenu(void);
WINUSERAPI HMENU         WINAPI   CreatePopupMenu(void);
WINUSERAPI HWND          WINAPI   CreateWindowExA(DWORD,LPCSTR,LPCSTR,DWORD,int,int,int,int,HWND,HMENU,HINSTANCE,LPVOID);
WINUSERAPI HWND          WINAPI   CreateWindowExW(DWORD,LPCWSTR,LPCWSTR,DWORD,int,int,int,int,HWND,HMENU,HINSTANCE,LPVOID);
WINUSERAPI HWINSTA       WINAPI   CreateWindowStationA(LPCSTR,DWORD,DWORD,LPSECURITY_ATTRIBUTES);
WINUSERAPI HWINSTA       WINAPI   CreateWindowStationW(LPCWSTR,DWORD,DWORD,LPSECURITY_ATTRIBUTES);
WINUSERAPI LRESULT       WINAPI   DefDlgProcA(HWND,UINT,WPARAM,LPARAM);
WINUSERAPI LRESULT       WINAPI   DefDlgProcW(HWND,UINT,WPARAM,LPARAM);
WINUSERAPI HDWP          WINAPI   DeferWindowPos(HDWP,HWND,HWND,int,int,int,int,UINT);
WINUSERAPI LRESULT       WINAPI   DefFrameProcA(HWND,HWND,UINT,WPARAM,LPARAM);
WINUSERAPI LRESULT       WINAPI   DefFrameProcW(HWND,HWND,UINT,WPARAM,LPARAM);
WINUSERAPI LRESULT       WINAPI   DefMDIChildProcA(HWND,UINT,WPARAM,LPARAM);
WINUSERAPI LRESULT       WINAPI   DefMDIChildProcW(HWND,UINT,WPARAM,LPARAM);
WINUSERAPI LRESULT       WINAPI   DefRawInputProc(PRAWINPUT*,INT,UINT);
WINUSERAPI LRESULT       WINAPI   DefWindowProcA(HWND,UINT,WPARAM,LPARAM);
WINUSERAPI LRESULT       WINAPI   DefWindowProcW(HWND,UINT,WPARAM,LPARAM);
WINUSERAPI BOOL          WINAPI   DeleteMenu(HMENU,UINT,UINT);
WINUSERAPI BOOL          WINAPI   DeregisterShellHookWindow(HWND);
WINUSERAPI BOOL          WINAPI   DestroyAcceleratorTable(HACCEL);
WINUSERAPI BOOL          WINAPI   DestroyCaret(void);
WINUSERAPI BOOL          WINAPI   DestroyCursor(HCURSOR);
WINUSERAPI BOOL          WINAPI   DestroyIcon(HICON);
WINUSERAPI BOOL          WINAPI   DestroyMenu(HMENU);
WINUSERAPI BOOL          WINAPI   DestroyWindow(HWND);
WINUSERAPI int           WINAPI   DialogBoxIndirectParamA(HINSTANCE,LPCDLGTEMPLATE,HWND,DLGPROC,LPARAM);
WINUSERAPI int           WINAPI   DialogBoxIndirectParamW(HINSTANCE,LPCDLGTEMPLATE,HWND,DLGPROC,LPARAM);
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#ifdef _WIN32_WCE
extern     int                  DialogBoxParamA(HINSTANCE,LPCSTR,HWND,DLGPROC,LPARAM);
extern     int                  DialogBoxParamW(HINSTANCE,LPCWSTR,HWND,DLGPROC,LPARAM);
#else
WINUSERAPI int           WINAPI   DialogBoxParamA(HINSTANCE,LPCSTR,HWND,DLGPROC,LPARAM);
WINUSERAPI int           WINAPI   DialogBoxParamW(HINSTANCE,LPCWSTR,HWND,DLGPROC,LPARAM);
#endif
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
WINUSERAPI LONG          WINAPI   DispatchMessageA(const MSG*);
WINUSERAPI LONG          WINAPI   DispatchMessageW(const MSG*);
WINUSERAPI int           WINAPI   DlgDirListA(HWND,LPSTR,int,int,UINT);
WINUSERAPI int           WINAPI   DlgDirListW(HWND,LPWSTR,int,int,UINT);
WINUSERAPI int           WINAPI   DlgDirListComboBoxA(HWND,LPSTR,int,int,UINT);
WINUSERAPI int           WINAPI   DlgDirListComboBoxW(HWND,LPWSTR,int,int,UINT);
WINUSERAPI BOOL          WINAPI   DlgDirSelectComboBoxExA(HWND,LPSTR,int,int);
WINUSERAPI BOOL          WINAPI   DlgDirSelectComboBoxExW(HWND,LPWSTR,int,int);
WINUSERAPI BOOL          WINAPI   DlgDirSelectExA(HWND,LPSTR,int,int);
WINUSERAPI BOOL          WINAPI   DlgDirSelectExW(HWND,LPWSTR,int,int);
WINUSERAPI BOOL          WINAPI   DragDetect(HWND,POINT);
WINUSERAPI DWORD         WINAPI   DragObject(HWND,HWND,UINT,DWORD,HCURSOR);
WINUSERAPI BOOL          WINAPI   DrawAnimatedRects(HWND,int,LPCRECT,LPCRECT);
WINUSERAPI BOOL          WINAPI   DrawCaption(HWND,HDC,LPCRECT,UINT);
WINUSERAPI BOOL          WINAPI   DrawEdge(HDC,LPRECT,UINT,UINT);
WINUSERAPI BOOL          WINAPI   DrawFocusRect(HDC,LPCRECT);
WINUSERAPI BOOL          WINAPI   DrawFrameControl(HDC,LPRECT,UINT,UINT);
WINUSERAPI BOOL          WINAPI   DrawIcon(HDC,int,int,HICON);
WINUSERAPI BOOL          WINAPI   DrawIconEx(HDC,int,int,HICON,int,int,UINT,HBRUSH,UINT);
WINUSERAPI BOOL          WINAPI   DrawMenuBar(HWND);
WINUSERAPI BOOL          WINAPI   DrawStateA(HDC,HBRUSH,DRAWSTATEPROC,LPARAM,WPARAM,int,int,int,int,UINT);
WINUSERAPI BOOL          WINAPI   DrawStateW(HDC,HBRUSH,DRAWSTATEPROC,LPARAM,WPARAM,int,int,int,int,UINT);
WINUSERAPI int           WINAPI   DrawTextA(HDC,LPCSTR,int,LPRECT,UINT);
WINUSERAPI int           WINAPI   DrawTextW(HDC,LPCWSTR,int,LPRECT,UINT);
WINUSERAPI int           WINAPI   DrawTextExA(HDC,LPSTR,int,LPRECT,UINT,LPDRAWTEXTPARAMS);
WINUSERAPI int           WINAPI   DrawTextExW(HDC,LPWSTR,int,LPRECT,UINT,LPDRAWTEXTPARAMS);
WINUSERAPI BOOL          WINAPI   EmptyClipboard(void);
WINUSERAPI BOOL          WINAPI   EnableMenuItem(HMENU,UINT,UINT);
WINUSERAPI BOOL          WINAPI   EnableScrollBar(HWND,UINT,UINT);
WINUSERAPI BOOL          WINAPI   EnableWindow(HWND,BOOL);
WINUSERAPI BOOL          WINAPI   EndDeferWindowPos(HDWP);
WINUSERAPI BOOL          WINAPI   EndDialog(HWND,int);
WINUSERAPI BOOL          WINAPI   EndMenu(void);
WINUSERAPI BOOL          WINAPI   EndPaint(HWND,const PAINTSTRUCT*);
WINUSERAPI BOOL          WINAPI   EndTask(HWND,BOOL,BOOL);
WINUSERAPI BOOL          WINAPI   EnumChildWindows(HWND,ENUMWINDOWSPROC,LPARAM);
WINUSERAPI UINT          WINAPI   EnumClipboardFormats(UINT);
WINUSERAPI BOOL          WINAPI   EnumDesktopsA(HWINSTA,DESKTOPENUMPROCA,LPARAM);
WINUSERAPI BOOL          WINAPI   EnumDesktopsW(HWINSTA,DESKTOPENUMPROCW,LPARAM);
WINUSERAPI BOOL          WINAPI   EnumDesktopWindows(HDESK,ENUMWINDOWSPROC,LPARAM);
WINUSERAPI BOOL          WINAPI   EnumDisplayMonitors(HDC,LPCRECT,MONITORENUMPROC,LPARAM);
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#ifndef NOGDI
WINUSERAPI BOOL          WINAPI   EnumDisplaySettingsA(LPCSTR,DWORD,PDEVMODEA);
WINUSERAPI BOOL          WINAPI   EnumDisplaySettingsW(LPCWSTR,DWORD,PDEVMODEW);
WINUSERAPI BOOL          WINAPI   EnumDisplaySettingsExA(LPCSTR,DWORD,LPDEVMODEA,DWORD);
WINUSERAPI BOOL          WINAPI   EnumDisplaySettingsExW(LPCWSTR,DWORD,LPDEVMODEW,DWORD);
WINUSERAPI BOOL          WINAPI   EnumDisplayDevicesA(LPCSTR,DWORD,PDISPLAY_DEVICEA,DWORD);
WINUSERAPI BOOL          WINAPI   EnumDisplayDevicesW(LPCWSTR,DWORD,PDISPLAY_DEVICEW,DWORD);
#endif
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
WINUSERAPI int           WINAPI   EnumPropsA(HWND,PROPENUMPROCA);
WINUSERAPI int           WINAPI   EnumPropsW(HWND,PROPENUMPROCW);
WINUSERAPI int           WINAPI   EnumPropsExA(HWND,PROPENUMPROCEXA,LPARAM);
WINUSERAPI int           WINAPI   EnumPropsExW(HWND,PROPENUMPROCEXW,LPARAM);
WINUSERAPI BOOL          WINAPI   EnumThreadWindows(DWORD,WNDENUMPROC,LPARAM);
WINUSERAPI BOOL          WINAPI   EnumWindows(WNDENUMPROC,LPARAM);
WINUSERAPI BOOL          WINAPI   EnumWindowStationsA(WINSTAENUMPROCA,LPARAM);
WINUSERAPI BOOL          WINAPI   EnumWindowStationsW(WINSTAENUMPROCW,LPARAM);
WINUSERAPI BOOL          WINAPI   EqualRect(LPCRECT,LPCRECT);
WINUSERAPI BOOL          WINAPI   ExitWindowsEx(UINT,DWORD);
WINUSERAPI HWND          WINAPI   FindWindowA(LPCSTR,LPCSTR);
WINUSERAPI HWND          WINAPI   FindWindowExA(HWND,HWND,LPCSTR,LPCSTR);
WINUSERAPI HWND          WINAPI   FindWindowExW(HWND,HWND,LPCWSTR,LPCWSTR);
WINUSERAPI HWND          WINAPI   FindWindowW(LPCWSTR,LPCWSTR);
WINUSERAPI BOOL          WINAPI   FlashWindow(HWND,BOOL);
WINUSERAPI BOOL          WINAPI   FlashWindowEx(PFLASHWINFO);
           int           WINAPI   FrameRect(HDC,LPCRECT,HBRUSH);
WINUSERAPI BOOL          WINAPI   FrameRgn(HDC,HRGN,HBRUSH,int,int);
WINUSERAPI HWND          WINAPI   GetActiveWindow(void);
WINUSERAPI HWND          WINAPI   GetAncestor(HWND,UINT);
WINUSERAPI SHORT         WINAPI   GetAsyncKeyState(int);
WINUSERAPI HWND          WINAPI   GetCapture(void);
WINUSERAPI UINT          WINAPI   GetCaretBlinkTime(void);
WINUSERAPI BOOL          WINAPI   GetCaretPos(LPPOINT);
WINUSERAPI BOOL          WINAPI   GetClassInfoA(HINSTANCE,LPCSTR,LPWNDCLASSA);
WINUSERAPI BOOL          WINAPI   GetClassInfoExA(HINSTANCE,LPCSTR,LPWNDCLASSEXA);
WINUSERAPI BOOL          WINAPI   GetClassInfoW(HINSTANCE,LPCWSTR,LPWNDCLASSW);
WINUSERAPI BOOL          WINAPI   GetClassInfoExW(HINSTANCE,LPCWSTR,LPWNDCLASSEXW);
WINUSERAPI DWORD         WINAPI   GetClassLongA(HWND,int);
WINUSERAPI DWORD         WINAPI   GetClassLongW(HWND,int);
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#ifdef _WIN64
WINUSERAPI ULONG_PTR     WINAPI   GetClassLongPtrA(HWND,int);
WINUSERAPI ULONG_PTR     WINAPI   GetClassLongPtrW(HWND,int);
#else
#define GetClassLongPtrA GetClassLongA
#define GetClassLongPtrW GetClassLongW
#endif
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
WINUSERAPI int           WINAPI   GetClassNameA(HWND,LPSTR,int);
WINUSERAPI int           WINAPI   GetClassNameW(HWND,LPWSTR,int);
WINUSERAPI WORD          WINAPI   GetClassWord(HWND,int);
WINUSERAPI BOOL          WINAPI   GetClientRect(HWND,LPRECT);
WINUSERAPI HANDLE        WINAPI   GetClipboardData(UINT);
WINUSERAPI int           WINAPI   GetClipboardFormatNameA(UINT,LPSTR,int);
WINUSERAPI int           WINAPI   GetClipboardFormatNameW(UINT,LPWSTR,int);
WINUSERAPI HWND          WINAPI   GetClipboardOwner(void);
WINUSERAPI DWORD         WINAPI   GetClipboardSequenceNumber(void);
           HWND          WINAPI   GetClipboardViewer(void);
WINUSERAPI BOOL          WINAPI   GetClipCursor(LPRECT);
WINUSERAPI BOOL          WINAPI   GetCursorPos(LPPOINT);
WINUSERAPI HDC           WINAPI   GetDC(HWND);
WINUSERAPI HDC           WINAPI   GetDCEx(HWND,HRGN,DWORD);
WINUSERAPI HWND          WINAPI   GetDesktopWindow(void);
WINUSERAPI long          WINAPI   GetDialogBaseUnits(void);
WINUSERAPI int           WINAPI   GetDlgCtrlID(HWND);
WINUSERAPI HWND          WINAPI   GetDlgItem(HWND,int);
WINUSERAPI UINT          WINAPI   GetDlgItemInt(HWND,int,PBOOL,BOOL);
WINUSERAPI UINT          WINAPI   GetDlgItemTextA(HWND,int,LPSTR,int);
WINUSERAPI UINT          WINAPI   GetDlgItemTextW(HWND,int,LPWSTR,int);
WINUSERAPI UINT          WINAPI   GetDoubleClickTime(void);
WINUSERAPI HWND          WINAPI   GetFocus(void);
WINUSERAPI HWND          WINAPI   GetForegroundWindow(void);
WINUSERAPI DWORD         WINAPI   GetGuiResources(HANDLE,DWORD);
WINUSERAPI BOOL          WINAPI   GetIconInfo(HICON,PICONINFO);
WINUSERAPI BOOL          WINAPI   GetInputState(void);
WINUSERAPI UINT          WINAPI   GetKBCodePage(void);
WINUSERAPI HKL           WINAPI   GetKeyboardLayout(DWORD);
WINUSERAPI UINT          WINAPI   GetKeyboardLayoutList(int,HKL*);
WINUSERAPI BOOL          WINAPI   GetKeyboardLayoutNameA(LPSTR);
WINUSERAPI BOOL          WINAPI   GetKeyboardLayoutNameW(LPWSTR);
WINUSERAPI BOOL          WINAPI   GetKeyboardState(PBYTE);
WINUSERAPI int           WINAPI   GetKeyboardType(int);
WINUSERAPI int           WINAPI   GetKeyNameTextA(LONG,LPSTR,int);
WINUSERAPI int           WINAPI   GetKeyNameTextW(LONG,LPWSTR,int);
WINUSERAPI SHORT         WINAPI   GetKeyState(int);
WINUSERAPI HWND          WINAPI   GetLastActivePopup(HWND);
WINUSERAPI HMENU         WINAPI   GetMenu(HWND);
WINUSERAPI LONG          WINAPI   GetMenuCheckMarkDimensions(void);
WINUSERAPI DWORD         WINAPI   GetMenuContextHelpId(HMENU);
WINUSERAPI UINT          WINAPI   GetMenuDefaultItem(HMENU,UINT,UINT);
WINUSERAPI int           WINAPI   GetMenuItemCount(HMENU);
WINUSERAPI UINT          WINAPI   GetMenuItemID(HMENU,int);
WINUSERAPI BOOL          WINAPI   GetMenuItemInfoA(HMENU,UINT,BOOL,LPMENUITEMINFOA);
WINUSERAPI BOOL          WINAPI   GetMenuItemInfoW(HMENU,UINT,BOOL,LPMENUITEMINFOW);
WINUSERAPI BOOL          WINAPI   GetMenuItemRect(HWND,HMENU,UINT,LPRECT);
WINUSERAPI UINT          WINAPI   GetMenuState(HMENU,UINT,UINT);
WINUSERAPI int           WINAPI   GetMenuStringA(HMENU,UINT,LPSTR,int,UINT);
WINUSERAPI int           WINAPI   GetMenuStringW(HMENU,UINT,LPWSTR,int,UINT);
WINUSERAPI BOOL          WINAPI   GetMessageA(LPMSG,HWND,UINT,UINT);
WINUSERAPI BOOL          WINAPI   GetMessageW(LPMSG,HWND,UINT,UINT);
WINUSERAPI LONG          WINAPI   GetMessageExtraInfo(void);
WINUSERAPI DWORD         WINAPI   GetMessagePos(void);
WINUSERAPI LONG          WINAPI   GetMessageTime(void);
WINUSERAPI int           WINAPI   GetMouseMovePointsEx(UINT,LPMOUSEMOVEPOINT,LPMOUSEMOVEPOINT,int,DWORD);
WINUSERAPI HWND          WINAPI   GetNextDlgGroupItem(HWND,HWND,BOOL);
WINUSERAPI HWND          WINAPI   GetNextDlgTabItem(HWND,HWND,BOOL);
WINUSERAPI HWND          WINAPI   GetOpenClipboardWindow(void);
WINUSERAPI HWND          WINAPI   GetParent(HWND);
WINUSERAPI int           WINAPI   GetPriorityClipboardFormat(UINT*,int);
WINUSERAPI HANDLE        WINAPI   GetPropA(HWND,LPCSTR);
WINUSERAPI HANDLE        WINAPI   GetPropW(HWND,LPCWSTR);
WINUSERAPI UINT          WINAPI   GetRawInputBuffer(PRAWINPUT,PUINT,UINT);
WINUSERAPI UINT          WINAPI   GetRawInputData(HRAWINPUT,UINT,LPVOID,PUINT,UINT);
WINUSERAPI UINT          WINAPI   GetRawInputDeviceInfoA(HANDLE,UINT,LPVOID,PUINT);
WINUSERAPI UINT          WINAPI   GetRawInputDeviceInfoW(HANDLE,UINT,LPVOID,PUINT);
WINUSERAPI UINT          WINAPI   GetRawInputDeviceList(PRAWINPUTDEVICELIST,PUINT,UINT);
WINUSERAPI UINT          WINAPI   GetRegisteredRawInputDevices(PRAWINPUTDEVICE,PUINT,UINT);
WINUSERAPI DWORD         WINAPI   GetQueueStatus(UINT);
WINUSERAPI BOOL          WINAPI   GetScrollInfo(HWND,int,LPSCROLLINFO);
WINUSERAPI int           WINAPI   GetScrollPos(HWND,int);
WINUSERAPI BOOL          WINAPI   GetScrollRange(HWND,int,LPINT,LPINT);
WINUSERAPI HWND          WINAPI   GetShellWindow(void);
WINUSERAPI HMENU         WINAPI   GetSubMenu(HMENU,int);
WINUSERAPI DWORD         WINAPI   GetSysColor(int);
WINUSERAPI HBRUSH        WINAPI   GetSysColorBrush(int);
WINUSERAPI HMENU         WINAPI   GetSystemMenu(HWND,BOOL);
WINUSERAPI int           WINAPI   GetSystemMetrics(int);
WINUSERAPI DWORD         WINAPI   GetTabbedTextExtentA(HDC,LPCSTR,int,int,LPINT);
WINUSERAPI DWORD         WINAPI   GetTabbedTextExtentW(HDC,LPCWSTR,int,int,LPINT);
WINUSERAPI LONG          WINAPI   GetWindowLongA(HWND,int);
WINUSERAPI LONG          WINAPI   GetWindowLongW(HWND,int);
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#ifdef _WIN64
WINUSERAPI LONG_PTR      WINAPI   GetWindowLongPtrA(HWND,int);
WINUSERAPI LONG_PTR      WINAPI   GetWindowLongPtrW(HWND,int);
#else
#define GetWindowLongPtrA GetWindowLongA
#define GetWindowLongPtrW GetWindowLongW
#endif
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
WINUSERAPI HDESK         WINAPI   GetThreadDesktop(DWORD);
WINUSERAPI HWND          WINAPI   GetTopWindow(HWND);
WINUSERAPI BOOL          WINAPI   GetUpdateRect(HWND,LPRECT,BOOL);
WINUSERAPI int           WINAPI   GetUpdateRgn(HWND,HRGN,BOOL);
WINUSERAPI BOOL          WINAPI   GetUserObjectInformationA(HANDLE,int,PVOID,DWORD,PDWORD);
WINUSERAPI BOOL          WINAPI   GetUserObjectInformationW(HANDLE,int,PVOID,DWORD,PDWORD);
WINUSERAPI BOOL          WINAPI   GetUserObjectSecurity(HANDLE,PSECURITY_INFORMATION,PSECURITY_DESCRIPTOR,DWORD,PDWORD);
WINUSERAPI HWND          WINAPI   GetWindow(HWND,UINT);
WINUSERAPI DWORD         WINAPI   GetWindowContextHelpId(HWND);
WINUSERAPI HDC           WINAPI   GetWindowDC(HWND);
WINUSERAPI BOOL          WINAPI   GetWindowPlacement(HWND,WINDOWPLACEMENT*);
WINUSERAPI BOOL          WINAPI   GetWindowRect(HWND,LPRECT);
WINUSERAPI int           WINAPI   GetWindowRgn(HWND,HRGN);
WINUSERAPI int           WINAPI   GetWindowTextA(HWND,LPSTR,int);
WINUSERAPI int           WINAPI   GetWindowTextLengthA(HWND);
WINUSERAPI int           WINAPI   GetWindowTextLengthW(HWND);
WINUSERAPI int           WINAPI   GetWindowTextW(HWND,LPWSTR,int);
WINUSERAPI WORD          WINAPI   GetWindowWord(HWND,int);
WINUSERAPI BOOL          WINAPI   GetAltTabInfoA(HWND,int,PALTTABINFO,LPSTR,UINT);
WINUSERAPI BOOL          WINAPI   GetAltTabInfoW(HWND,int,PALTTABINFO,LPWSTR,UINT);
WINUSERAPI BOOL          WINAPI   GetComboBoxInfo(HWND,PCOMBOBOXINFO);
WINUSERAPI BOOL          WINAPI   GetCursorInfo(PCURSORINFO);
WINUSERAPI BOOL          WINAPI   GetGUIThreadInfo(DWORD,LPGUITHREADINFO);
WINUSERAPI BOOL          WINAPI   GetLastInputInfo(PLASTINPUTINFO);
WINUSERAPI DWORD         WINAPI   GetListBoxInfo(HWND);
WINUSERAPI BOOL          WINAPI   GetMenuBarInfo(HWND,LONG,LONG,PMENUBARINFO);
WINUSERAPI BOOL          WINAPI   GetMenuInfo(HMENU,LPMENUINFO);
WINUSERAPI BOOL          WINAPI   GetProcessDefaultLayout(DWORD*);
WINUSERAPI BOOL          WINAPI   GetScrollBarInfo(HWND,LONG,PSCROLLBARINFO);
WINUSERAPI BOOL          WINAPI   GetTitleBarInfo(HWND,PTITLEBARINFO);
WINUSERAPI BOOL          WINAPI   GetWindowInfo(HWND,PWINDOWINFO);
WINUSERAPI BOOL          WINAPI   GetMonitorInfoA(HMONITOR,LPMONITORINFO);
WINUSERAPI BOOL          WINAPI   GetMonitorInfoW(HMONITOR,LPMONITORINFO);
WINUSERAPI UINT          WINAPI   GetWindowModuleFileNameA(HWND,LPSTR,UINT);
WINUSERAPI UINT          WINAPI   GetWindowModuleFileNameW(HWND,LPWSTR,UINT);
WINUSERAPI BOOL          WINAPI   GrayStringA(HDC,HBRUSH,GRAYSTRINGPROC,LPARAM,int,int,int,int,int);
WINUSERAPI BOOL          WINAPI   GrayStringW(HDC,HBRUSH,GRAYSTRINGPROC,LPARAM,int,int,int,int,int);
WINUSERAPI BOOL          WINAPI   HideCaret(HWND);
WINUSERAPI BOOL          WINAPI   HiliteMenuItem(HWND,HMENU,UINT,UINT);
WINUSERAPI BOOL          WINAPI   InflateRect(LPRECT,int,int);
WINUSERAPI BOOL          WINAPI   InSendMessage(void);
WINUSERAPI DWORD         WINAPI   InSendMessageEx(LPVOID);
WINUSERAPI BOOL          WINAPI   InsertMenuA(HMENU,UINT,UINT,UINT,LPCSTR);
WINUSERAPI BOOL          WINAPI   InsertMenuW(HMENU,UINT,UINT,UINT,LPCWSTR);
WINUSERAPI BOOL          WINAPI   InsertMenuItemA(HMENU,UINT,BOOL,LPCMENUITEMINFOA);
WINUSERAPI BOOL          WINAPI   InsertMenuItemW(HMENU,UINT,BOOL,LPCMENUITEMINFOW);
WINUSERAPI INT           WINAPI   InternalGetWindowText(HWND,LPWSTR,INT);
WINUSERAPI BOOL          WINAPI   IntersectRect(LPRECT,LPCRECT,LPCRECT);
WINUSERAPI BOOL          WINAPI   InvalidateRect(HWND,LPCRECT,BOOL);
WINUSERAPI BOOL          WINAPI   InvalidateRgn(HWND,HRGN,BOOL);
WINUSERAPI BOOL          WINAPI   InvertRect(HDC,LPCRECT);
WINUSERAPI BOOL          WINAPI   IsCharAlphaA(CHAR ch);
WINUSERAPI BOOL          WINAPI   IsCharAlphaNumericA(CHAR);
WINUSERAPI BOOL          WINAPI   IsCharAlphaNumericW(WCHAR);
WINUSERAPI BOOL          WINAPI   IsCharAlphaW(WCHAR);
WINUSERAPI BOOL          WINAPI   IsCharLowerA(CHAR);
WINUSERAPI BOOL          WINAPI   IsCharLowerW(WCHAR);
WINUSERAPI BOOL          WINAPI   IsCharUpperA(CHAR);
WINUSERAPI BOOL          WINAPI   IsCharUpperW(WCHAR);
WINUSERAPI BOOL          WINAPI   IsChild(HWND,HWND);
WINUSERAPI BOOL          WINAPI   IsClipboardFormatAvailable(UINT);
WINUSERAPI BOOL          WINAPI   IsDialogMessageA(HWND,LPMSG);
WINUSERAPI BOOL          WINAPI   IsDialogMessageW(HWND,LPMSG);
WINUSERAPI UINT          WINAPI   IsDlgButtonChecked(HWND,int);
WINUSERAPI BOOL          WINAPI   IsGUIThread(BOOL);
WINUSERAPI BOOL          WINAPI   IsHungAppWindow(HWND);
WINUSERAPI BOOL          WINAPI   IsIconic(HWND);
WINUSERAPI BOOL          WINAPI   IsMenu(HMENU);
WINUSERAPI BOOL          WINAPI   IsRectEmpty(LPCRECT);
WINUSERAPI BOOL          WINAPI   IsWindow(HWND);
WINUSERAPI BOOL          WINAPI   IsWindowEnabled(HWND);
WINUSERAPI BOOL          WINAPI   IsWindowUnicode(HWND);
WINUSERAPI BOOL          WINAPI   IsWindowVisible(HWND);
WINUSERAPI BOOL          WINAPI   IsWinEventHookInstalled(DWORD);
WINUSERAPI BOOL          WINAPI   IsZoomed(HWND);
WINUSERAPI VOID          WINAPI   keybd_event(BYTE,BYTE,DWORD,DWORD);
WINUSERAPI BOOL          WINAPI   KillTimer(HWND,UINT);
WINUSERAPI HACCEL        WINAPI   LoadAcceleratorsA(HINSTANCE,LPCSTR);
WINUSERAPI HACCEL        WINAPI   LoadAcceleratorsW(HINSTANCE,LPCWSTR);
WINUSERAPI HBITMAP       WINAPI   LoadBitmapA(HINSTANCE,LPCSTR);
WINUSERAPI HBITMAP       WINAPI   LoadBitmapW(HINSTANCE,LPCWSTR);
WINUSERAPI HCURSOR       WINAPI   LoadCursorA(HINSTANCE,LPCSTR);
WINUSERAPI HCURSOR       WINAPI   LoadCursorFromFileA(LPCSTR);
WINUSERAPI HCURSOR       WINAPI   LoadCursorFromFileW(LPCWSTR);
WINUSERAPI HCURSOR       WINAPI   LoadCursorW(HINSTANCE,LPCWSTR);
WINUSERAPI HICON         WINAPI   LoadIconA(HINSTANCE,LPCSTR);
WINUSERAPI HICON         WINAPI   LoadIconW(HINSTANCE,LPCWSTR);
WINUSERAPI HANDLE        WINAPI   LoadImageA(HINSTANCE,LPCSTR,UINT,int,int,UINT);
WINUSERAPI HANDLE        WINAPI   LoadImageW(HINSTANCE,LPCWSTR,UINT,int,int,UINT);
WINUSERAPI HKL           WINAPI   LoadKeyboardLayoutA(LPCSTR,UINT);
WINUSERAPI HKL           WINAPI   LoadKeyboardLayoutW(LPCWSTR,UINT);
WINUSERAPI HMENU         WINAPI   LoadMenuA(HINSTANCE,LPCSTR);
WINUSERAPI HMENU         WINAPI   LoadMenuIndirectA(const MENUTEMPLATE*);
WINUSERAPI HMENU         WINAPI   LoadMenuIndirectW(const MENUTEMPLATE*);
WINUSERAPI HMENU         WINAPI   LoadMenuW(HINSTANCE,LPCWSTR);
WINUSERAPI int           WINAPI   LoadStringA(HINSTANCE,UINT,LPSTR,int);
WINUSERAPI int           WINAPI   LoadStringW(HINSTANCE,UINT,LPWSTR,int);
WINUSERAPI BOOL          WINAPI   LockWindowUpdate(HWND);
WINUSERAPI BOOL          WINAPI   LockWorkStation(void);
WINUSERAPI int           WINAPI   LookupIconIdFromDirectory(PBYTE,BOOL);
WINUSERAPI int           WINAPI   LookupIconIdFromDirectoryEx(PBYTE,BOOL,int,int,UINT);
WINUSERAPI BOOL          WINAPI   MapDialogRect(HWND,LPRECT);
WINUSERAPI UINT          WINAPI   MapVirtualKeyA(UINT,UINT);
WINUSERAPI UINT          WINAPI   MapVirtualKeyExA(UINT,UINT,HKL);
WINUSERAPI UINT          WINAPI   MapVirtualKeyExW(UINT,UINT,HKL);
WINUSERAPI UINT          WINAPI   MapVirtualKeyW(UINT,UINT);
WINUSERAPI int           WINAPI   MapWindowPoints(HWND,HWND,LPPOINT,UINT);
WINUSERAPI int           WINAPI   MenuItemFromPoint(HWND,HMENU,POINT);
WINUSERAPI BOOL          WINAPI   MessageBeep(UINT);
WINUSERAPI int           WINAPI   MessageBoxA(HWND,LPCSTR,LPCSTR,UINT);
WINUSERAPI int           WINAPI   MessageBoxW(HWND,LPCWSTR,LPCWSTR,UINT);
WINUSERAPI int           WINAPI   MessageBoxExA(HWND,LPCSTR,LPCSTR,UINT,WORD);
WINUSERAPI int           WINAPI   MessageBoxExW(HWND,LPCWSTR,LPCWSTR,UINT,WORD);
WINUSERAPI int           WINAPI   MessageBoxIndirectA(CONST MSGBOXPARAMSA*);
WINUSERAPI int           WINAPI   MessageBoxIndirectW(CONST MSGBOXPARAMSW*);
WINUSERAPI BOOL          WINAPI   ModifyMenuA(HMENU,UINT,UINT,UINT,LPCSTR);
WINUSERAPI BOOL          WINAPI   ModifyMenuW(HMENU,UINT,UINT,UINT,LPCWSTR);
WINUSERAPI HMONITOR      WINAPI   MonitorFromPoint(POINT,DWORD);
WINUSERAPI HMONITOR      WINAPI   MonitorFromRect(LPCRECT,DWORD);
WINUSERAPI HMONITOR      WINAPI   MonitorFromWindow(HWND,DWORD);
WINUSERAPI void          WINAPI   mouse_event(DWORD,DWORD,DWORD,DWORD,ULONG_PTR);
WINUSERAPI BOOL          WINAPI   MoveWindow(HWND,int,int,int,int,BOOL);
WINUSERAPI DWORD         WINAPI   MsgWaitForMultipleObjects(DWORD,CONST HANDLE*,BOOL,DWORD,DWORD);
WINUSERAPI DWORD         WINAPI   MsgWaitForMultipleObjectsEx(DWORD,CONST HANDLE*,DWORD,DWORD,DWORD);
WINUSERAPI void          WINAPI   NotifyWinEvent(DWORD,HWND,LONG,LONG);
WINUSERAPI DWORD         WINAPI   OemKeyScan(WORD);
WINUSERAPI BOOL          WINAPI   OemToCharA(LPCSTR,LPSTR);
WINUSERAPI BOOL          WINAPI   OemToCharBuffA(LPCSTR,LPSTR,DWORD);
WINUSERAPI BOOL          WINAPI   OemToCharBuffW(LPCSTR,LPWSTR,DWORD);
WINUSERAPI BOOL          WINAPI   OemToCharW(LPCSTR,LPWSTR);
WINUSERAPI BOOL          WINAPI   OffsetRect(LPRECT,int,int);
WINUSERAPI BOOL          WINAPI   OpenClipboard(HWND);
WINUSERAPI HDESK         WINAPI   OpenDesktopA(LPSTR,DWORD,BOOL,DWORD);
WINUSERAPI HDESK         WINAPI   OpenDesktopW(LPWSTR,DWORD,BOOL,DWORD);
WINUSERAPI BOOL          WINAPI   OpenIcon(HWND);
WINUSERAPI HDESK         WINAPI   OpenInputDesktop(DWORD,BOOL,DWORD);
WINUSERAPI HWINSTA       WINAPI   OpenWindowStationA(LPSTR,BOOL,DWORD);
WINUSERAPI HWINSTA       WINAPI   OpenWindowStationW(LPWSTR,BOOL,DWORD);
WINUSERAPI BOOL          WINAPI   PaintDesktop(HDC);
WINUSERAPI BOOL          WINAPI   PeekMessageA(LPMSG,HWND,UINT,UINT,UINT);
WINUSERAPI BOOL          WINAPI   PeekMessageW(LPMSG,HWND,UINT,UINT,UINT);
WINUSERAPI BOOL          WINAPI   PostMessageA(HWND,UINT,WPARAM,LPARAM);
WINUSERAPI BOOL          WINAPI   PostMessageW(HWND,UINT,WPARAM,LPARAM);
WINUSERAPI void          WINAPI   PostQuitMessage(int);
WINUSERAPI BOOL          WINAPI   PostThreadMessageA(DWORD,UINT,WPARAM,LPARAM);
WINUSERAPI BOOL          WINAPI   PostThreadMessageW(DWORD,UINT,WPARAM,LPARAM);
WINUSERAPI BOOL          WINAPI   PrintWindow(HWND,HDC,UINT);
WINUSERAPI BOOL          WINAPI   PtInRect(LPCRECT,POINT);
WINUSERAPI HWND          WINAPI   RealChildWindowFromPoint(HWND,POINT);
WINUSERAPI UINT          WINAPI   RealGetWindowClassA(HWND,LPSTR,UINT);
WINUSERAPI UINT          WINAPI   RealGetWindowClassW(HWND,LPWSTR,UINT);
WINUSERAPI BOOL          WINAPI   RedrawWindow(HWND,LPCRECT,HRGN,UINT);
WINUSERAPI ATOM          WINAPI   RegisterClassA(CONST WNDCLASSA*);
WINUSERAPI ATOM          WINAPI   RegisterClassW(CONST WNDCLASSW*);
WINUSERAPI ATOM          WINAPI   RegisterClassExA(CONST WNDCLASSEXA*);
WINUSERAPI ATOM          WINAPI   RegisterClassExW(CONST WNDCLASSEXW*);
WINUSERAPI UINT          WINAPI   RegisterClipboardFormatA(LPCSTR);
WINUSERAPI UINT          WINAPI   RegisterClipboardFormatW(LPCWSTR);
WINUSERAPI HDEVNOTIFY    WINAPI   RegisterDeviceNotificationA(HANDLE,LPVOID,DWORD);
WINUSERAPI HDEVNOTIFY    WINAPI   RegisterDeviceNotificationW(HANDLE,LPVOID,DWORD);
WINUSERAPI HPOWERNOTIFY  WINAPI   RegisterPowerSettingNotification(HANDLE,LPCGUID,DWORD);
WINUSERAPI BOOL          WINAPI   RegisterHotKey(HWND,int,UINT,UINT);
WINUSERAPI BOOL          WINAPI   RegisterRawInputDevices(PCRAWINPUTDEVICE,UINT,UINT);
WINUSERAPI UINT          WINAPI   RegisterWindowMessageA(LPCSTR);
WINUSERAPI UINT          WINAPI   RegisterWindowMessageW(LPCWSTR);
WINUSERAPI BOOL          WINAPI   ReleaseCapture(void);
WINUSERAPI int           WINAPI   ReleaseDC(HWND,HDC);
WINUSERAPI BOOL          WINAPI   RemoveMenu(HMENU,UINT,UINT);
WINUSERAPI HANDLE        WINAPI   RemovePropA(HWND,LPCSTR);
WINUSERAPI HANDLE        WINAPI   RemovePropW(HWND,LPCWSTR);
WINUSERAPI BOOL          WINAPI   ReplyMessage(LRESULT);
WINUSERAPI BOOL          WINAPI   ScreenToClient(HWND,LPPOINT);
WINUSERAPI BOOL          WINAPI   ScrollDC(HDC,int,int,LPCRECT,LPCRECT,HRGN,LPRECT);
WINUSERAPI BOOL          WINAPI   ScrollWindow(HWND,int,int,LPCRECT,LPCRECT);
WINUSERAPI int           WINAPI   ScrollWindowEx(HWND,int,int,LPCRECT,LPCRECT,HRGN,LPRECT,UINT);
WINUSERAPI LONG          WINAPI   SendDlgItemMessageA(HWND,int,UINT,WPARAM,LPARAM);
WINUSERAPI LONG          WINAPI   SendDlgItemMessageW(HWND,int,UINT,WPARAM,LPARAM);
WINUSERAPI UINT          WINAPI   SendInput(UINT,LPINPUT,int);
WINUSERAPI LRESULT       WINAPI   SendMessageA(HWND,UINT,WPARAM,LPARAM);
WINUSERAPI BOOL          WINAPI   SendMessageCallbackA(HWND,UINT,WPARAM,LPARAM,SENDASYNCPROC,DWORD);
WINUSERAPI BOOL          WINAPI   SendMessageCallbackW(HWND,UINT,WPARAM,LPARAM,SENDASYNCPROC,DWORD);
WINUSERAPI LRESULT       WINAPI   SendMessageTimeoutA(HWND,UINT,WPARAM,LPARAM,UINT,UINT,PDWORD);
WINUSERAPI LRESULT       WINAPI   SendMessageTimeoutW(HWND,UINT,WPARAM,LPARAM,UINT,UINT,PDWORD);
WINUSERAPI LRESULT       WINAPI   SendMessageW(HWND,UINT,WPARAM,LPARAM);
WINUSERAPI BOOL          WINAPI   SendNotifyMessageA(HWND,UINT,WPARAM,LPARAM);
WINUSERAPI BOOL          WINAPI   SendNotifyMessageW(HWND,UINT,WPARAM,LPARAM);
WINUSERAPI HWND          WINAPI   SetActiveWindow(HWND);
WINUSERAPI HWND          WINAPI   SetCapture(HWND hWnd);
WINUSERAPI BOOL          WINAPI   SetCaretBlinkTime(UINT);
WINUSERAPI BOOL          WINAPI   SetCaretPos(int,int);
WINUSERAPI DWORD         WINAPI   SetClassLongA(HWND,int,LONG);
WINUSERAPI DWORD         WINAPI   SetClassLongW(HWND,int,LONG);
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#ifdef _WIN64
WINUSERAPI ULONG_PTR     WINAPI   SetClassLongPtrA(HWND,int,LONG_PTR);
WINUSERAPI ULONG_PTR     WINAPI   SetClassLongPtrW(HWND,int,LONG_PTR);
#else
#define SetClassLongPtrA SetClassLongA
#define SetClassLongPtrW SetClassLongW
#endif
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
WINUSERAPI WORD          WINAPI   SetClassWord(HWND,int,WORD);
WINUSERAPI HANDLE        WINAPI   SetClipboardData(UINT,HANDLE);
WINUSERAPI HWND          WINAPI   SetClipboardViewer(HWND);
WINUSERAPI HCURSOR       WINAPI   SetCursor(HCURSOR);
WINUSERAPI BOOL          WINAPI   SetCursorPos(int,int);
WINUSERAPI VOID          WINAPI   SetDebugErrorLevel(DWORD);
WINUSERAPI BOOL          WINAPI   SetDlgItemInt(HWND,int,UINT,BOOL);
WINUSERAPI BOOL          WINAPI   SetDlgItemTextA(HWND,int,LPCSTR);
WINUSERAPI BOOL          WINAPI   SetDlgItemTextW(HWND,int,LPCWSTR);
WINUSERAPI BOOL          WINAPI   SetDoubleClickTime(UINT);
WINUSERAPI HWND          WINAPI   SetFocus(HWND);
WINUSERAPI BOOL          WINAPI   SetForegroundWindow(HWND);
WINUSERAPI BOOL          WINAPI   SetKeyboardState(PBYTE);
WINUSERAPI BOOL          WINAPI   SetMenu(HWND,HMENU);
WINUSERAPI BOOL          WINAPI   SetMenuContextHelpId(HMENU,DWORD);
WINUSERAPI BOOL          WINAPI   SetMenuDefaultItem(HMENU,UINT,UINT);
WINUSERAPI BOOL          WINAPI   SetMenuInfo(HMENU,LPCMENUINFO);
WINUSERAPI BOOL          WINAPI   SetMenuItemBitmaps(HMENU,UINT,UINT,HBITMAP,HBITMAP);
WINUSERAPI BOOL          WINAPI   SetMenuItemInfoA(HMENU,UINT,BOOL,LPCMENUITEMINFOA);
WINUSERAPI BOOL          WINAPI   SetMenuItemInfoW( HMENU,UINT,BOOL,LPCMENUITEMINFOW);
WINUSERAPI LPARAM        WINAPI   SetMessageExtraInfo(LPARAM);
WINUSERAPI BOOL          WINAPI   SetMessageQueue(int);
WINUSERAPI HWND          WINAPI   SetParent(HWND,HWND);
WINUSERAPI BOOL          WINAPI   SetProcessDefaultLayout(DWORD);
WINUSERAPI BOOL          WINAPI   SetProcessWindowStation(HWINSTA);
WINUSERAPI BOOL          WINAPI   SetPropA(HWND,LPCSTR,HANDLE);
WINUSERAPI BOOL          WINAPI   SetPropW(HWND,LPCWSTR,HANDLE);
WINUSERAPI BOOL          WINAPI   SetRect(LPRECT,int,int,int,int);
WINUSERAPI BOOL          WINAPI   SetRectEmpty(LPRECT);
WINUSERAPI int           WINAPI   SetScrollInfo(HWND,int,LPCSCROLLINFO,BOOL);
WINUSERAPI int           WINAPI   SetScrollPos(HWND,int,int,BOOL);
WINUSERAPI BOOL          WINAPI   SetScrollRange(HWND,int,int,int,BOOL);
WINUSERAPI BOOL          WINAPI   SetSysColors(int,const INT *,const COLORREF *);
WINUSERAPI BOOL          WINAPI   SetSystemCursor(HCURSOR,DWORD);
WINUSERAPI BOOL          WINAPI   SetThreadDesktop(HDESK);
WINUSERAPI UINT          WINAPI   SetTimer(HWND,UINT,UINT,TIMERPROC);
WINUSERAPI BOOL          WINAPI   SetUserObjectInformationA(HANDLE,int,PVOID,DWORD);
WINUSERAPI BOOL          WINAPI   SetUserObjectInformationW(HANDLE,int,PVOID,DWORD);
WINUSERAPI BOOL          WINAPI   SetUserObjectSecurity(HANDLE,PSECURITY_INFORMATION,PSECURITY_DESCRIPTOR);
WINUSERAPI HWINEVENTHOOK WINAPI   SetWinEventHook(UINT,UINT,HMODULE,WINEVENTPROC,DWORD,DWORD,UINT);
WINUSERAPI BOOL          WINAPI   SetWindowContextHelpId(HWND,DWORD);
WINUSERAPI LONG          WINAPI   SetWindowLongA(HWND,int,LONG);
WINUSERAPI LONG          WINAPI   SetWindowLongW(HWND,int,LONG);
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#ifdef _WIN64
WINUSERAPI LONG_PTR      WINAPI   SetWindowLongPtrA(HWND,int,LONG_PTR);
WINUSERAPI LONG_PTR      WINAPI   SetWindowLongPtrW(HWND,int,LONG_PTR);
#else
#define SetWindowLongPtrA SetWindowLongA
#define SetWindowLongPtrW SetWindowLongW
#endif
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
WINUSERAPI BOOL          WINAPI   SetWindowPlacement(HWND hWnd,const WINDOWPLACEMENT*);
WINUSERAPI BOOL          WINAPI   SetWindowPos(HWND,HWND,int,int,int,int,UINT);
WINUSERAPI int           WINAPI   SetWindowRgn(HWND,HRGN,BOOL);
WINUSERAPI HHOOK         WINAPI   SetWindowsHookA(int,HOOKPROC);
WINUSERAPI HHOOK         WINAPI   SetWindowsHookW(int,HOOKPROC);
WINUSERAPI HHOOK         WINAPI   SetWindowsHookExA(int,HOOKPROC,HINSTANCE,DWORD);
WINUSERAPI HHOOK         WINAPI   SetWindowsHookExW(int,HOOKPROC,HINSTANCE,DWORD);
WINUSERAPI BOOL          WINAPI   SetWindowTextA(HWND,LPCSTR);
WINUSERAPI BOOL          WINAPI   SetWindowTextW(HWND,LPCWSTR);
WINUSERAPI WORD          WINAPI   SetWindowWord(HWND,int,WORD);
WINUSERAPI BOOL          WINAPI   ShowCaret(HWND);
WINUSERAPI int           WINAPI   ShowCursor(BOOL);
WINUSERAPI BOOL          WINAPI   ShowOwnedPopups(HWND,BOOL);
WINUSERAPI BOOL          WINAPI   ShowScrollBar(HWND,int,BOOL);
WINUSERAPI BOOL          WINAPI   ShowWindow(HWND,int);
WINUSERAPI BOOL          WINAPI   ShowWindowAsync(HWND,int);
WINUSERAPI BOOL          WINAPI   SubtractRect(LPRECT,LPCRECT,LPCRECT);
WINUSERAPI BOOL          WINAPI   SwapMouseButton(BOOL);
WINUSERAPI BOOL          WINAPI   SwitchDesktop(HDESK);
WINUSERAPI VOID          WINAPI   SwitchToThisWindow(HWND,BOOL);
WINUSERAPI BOOL          WINAPI   SystemParametersInfoA(UINT,UINT,PVOID,UINT);
WINUSERAPI BOOL          WINAPI   SystemParametersInfoW(UINT,UINT,PVOID,UINT);
WINUSERAPI LONG          WINAPI   TabbedTextOutA(HDC,int,int,LPCSTR,int,int,LPINT,int);
WINUSERAPI LONG          WINAPI   TabbedTextOutW(HDC,int,int,LPCWSTR,int,int,LPINT,int);
WINUSERAPI WORD          WINAPI   TileWindows(HWND,UINT,LPCRECT,UINT,const HWND *);
WINUSERAPI int           WINAPI   ToAscii(UINT,UINT,PBYTE,LPWORD,UINT);
WINUSERAPI int           WINAPI   ToAsciiEx(UINT,UINT,PBYTE,LPWORD,UINT,HKL);
WINUSERAPI int           WINAPI   ToUnicode(UINT,UINT,PBYTE,LPWSTR,int,UINT);
WINUSERAPI int           WINAPI   ToUnicodeEx(UINT,UINT,PBYTE,LPWSTR,int,UINT,HKL);
WINUSERAPI BOOL          WINAPI   TrackMouseEvent(LPTRACKMOUSEEVENT);
WINUSERAPI BOOL          WINAPI   TrackPopupMenu(HMENU,UINT,int,int,int,HWND,LPCRECT);
WINUSERAPI BOOL          WINAPI   TrackPopupMenuEx(HMENU,UINT,int,int,HWND,LPTPMPARAMS);
WINUSERAPI int           WINAPI   TranslateAcceleratorA(HWND,HACCEL,LPMSG);
WINUSERAPI int           WINAPI   TranslateAcceleratorW(HWND,HACCEL,LPMSG);
WINUSERAPI BOOL          WINAPI   TranslateMDISysAccel(HWND,LPMSG);
WINUSERAPI BOOL          WINAPI   TranslateMessage(const MSG*);
WINUSERAPI BOOL          WINAPI   UnhookWindowsHook(int,HOOKPROC);
WINUSERAPI BOOL          WINAPI   UnhookWindowsHookEx(HHOOK);
WINUSERAPI BOOL          WINAPI   UnhookWinEvent(HWINEVENTHOOK);
WINUSERAPI BOOL          WINAPI   UnionRect(LPRECT,LPCRECT,LPCRECT);
WINUSERAPI BOOL          WINAPI   UnloadKeyboardLayout(HKL);
WINUSERAPI BOOL          WINAPI   UnregisterClassA(LPCSTR,HINSTANCE);
WINUSERAPI BOOL          WINAPI   UnregisterClassW(LPCWSTR,HINSTANCE);
WINUSERAPI BOOL          WINAPI   UnregisterDeviceNotification(HANDLE);
WINUSERAPI BOOL          WINAPI   UnregisterPowerSettingNotification(HPOWERNOTIFY);
WINUSERAPI BOOL          WINAPI   UnregisterHotKey(HWND,int);
WINUSERAPI BOOL          WINAPI   UpdateWindow(HWND);
WINUSERAPI BOOL          WINAPI   UserHandleGrantAccess(HANDLE,HANDLE,BOOL);
WINUSERAPI BOOL          WINAPI   ValidateRect(HWND,LPCRECT);
WINUSERAPI BOOL          WINAPI   ValidateRgn(HWND,HRGN);
WINUSERAPI SHORT         WINAPI   VkKeyScanA(CHAR);
WINUSERAPI SHORT         WINAPI   VkKeyScanExA(CHAR,HKL);
WINUSERAPI SHORT         WINAPI   VkKeyScanExW(WCHAR,HKL);
WINUSERAPI SHORT         WINAPI   VkKeyScanW(WCHAR);
WINUSERAPI DWORD         WINAPI   WaitForInputIdle(HANDLE,DWORD);
WINUSERAPI BOOL          WINAPI   WaitMessage(void);
WINUSERAPI HWND          WINAPI   WindowFromDC(HDC hDC);
WINUSERAPI HWND          WINAPI   WindowFromPoint(POINT);
WINUSERAPI UINT          WINAPI   WinExec(LPCSTR,UINT);
WINUSERAPI BOOL          WINAPI   WinHelpA(HWND,LPCSTR,UINT,DWORD);
WINUSERAPI BOOL          WINAPI   WinHelpW(HWND,LPCWSTR,UINT,DWORD);
WINUSERAPI int           WINAPIV  wsprintfA(LPSTR,LPCSTR,...);
WINUSERAPI int           WINAPIV  wsprintfW(LPWSTR,LPCWSTR,...);
WINUSERAPI int           WINAPI   wvsprintfA(LPSTR,LPCSTR,va_list arglist);
WINUSERAPI int           WINAPI   wvsprintfW(LPWSTR,LPCWSTR,va_list arglist);
WINUSERAPI BOOL          WINAPI   AllowSetForegroundWindow(DWORD);
WINUSERAPI BOOL          WINAPI   LockSetForegroundWindow(UINT);
WINUSERAPI BOOL          WINAPI   SetLayeredWindowAttributes(HWND,COLORREF,BYTE,DWORD);
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#ifndef NOGDI
WINUSERAPI BOOL          WINAPI   UpdateLayeredWindow(HWND,HDC,POINT*,SIZE*,HDC,POINT*,COLORREF,BLENDFUNCTION*,DWORD);
WINUSERAPI BOOL          WINAPI   GetLayeredWindowAttributes(HWND,COLORREF*,BYTE*,DWORD*);
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#ifdef UNICODE
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define EDITWORDBREAKPROC EDITWORDBREAKPROCW
#define PROPENUMPROC PROPENUMPROCW
#define PROPENUMPROCEX PROPENUMPROCEXW
#define DEKSTOPENUMPROC DEKSTOPENUMPROCW
#define WINSTAENUMPROC WINSTAENUMPROCW
#define PROPENUMPROC PROPENUMPROCW
#define PROPENUMPROCEX PROPENUMPROCEXW
#define MAKEINTRESOURCE MAKEINTRESOURCEW
typedef WNDCLASSW WNDCLASS,*LPWNDCLASS,*PWNDCLASS;
typedef WNDCLASSEXW WNDCLASSEX,*LPWNDCLASSEX,*PWNDCLASSEX;
typedef MENUITEMINFOW MENUITEMINFO,*LPMENUITEMINFO;
typedef LPCMENUITEMINFOW LPCMENUITEMINFO;
typedef MSGBOXPARAMSW MSGBOXPARAMS,*PMSGBOXPARAMS,*LPMSGBOXPARAMS;
typedef HIGHCONTRASTW HIGHCONTRAST,*LPHIGHCONTRAST;
typedef SERIALKEYSW SERIALKEYS,*LPSERIALKEYS;
typedef SOUNDSENTRYW SOUNDSENTRY,*LPSOUNDSENTRY;
typedef CREATESTRUCTW CREATESTRUCT, *LPCREATESTRUCT;
typedef CBT_CREATEWNDW CBT_CREATEWND, *LPCBT_CREATEWND;
typedef MDICREATESTRUCTW MDICREATESTRUCT,*LPMDICREATESTRUCT;
typedef MULTIKEYHELPW MULTIKEYHELP,*PMULTIKEYHELP,*LPMULTIKEYHELP;
typedef MONITORINFOEXW MONITORINFOEX, *LPMONITORINFOEX;
#define AppendMenu AppendMenuW
#define BroadcastSystemMessage BroadcastSystemMessageW
#define BroadcastSystemMessageEx BroadcastSystemMessageExW
#define CallMsgFilter CallMsgFilterW
#define CallWindowProc CallWindowProcW
#define ChangeMenu ChangeMenuW
#define CharLower CharLowerW
#define CharLowerBuff CharLowerBuffW
#define CharNext CharNextW
#define CharPrev CharPrevW
#define CharToOem CharToOemW
#define CharToOemBuff CharToOemBuffW
#define CharUpper CharUpperW
#define CharUpperBuff CharUpperBuffW
#define CopyAcceleratorTable CopyAcceleratorTableW
#define CreateAcceleratorTable CreateAcceleratorTableW
#define CreateDialog CreateDialogW
#define CreateDialogIndirect CreateDialogIndirectW
#define CreateDialogIndirectParam CreateDialogIndirectParamW
#define CreateDialogParam CreateDialogParamW
#define CreateMDIWindow CreateMDIWindowW
#define CreateWindow CreateWindowW
#define CreateWindowEx CreateWindowExW
#define CreateWindowStation CreateWindowStationW
#define DefDlgProc DefDlgProcW
#define DefFrameProc DefFrameProcW
#define DefMDIChildProc DefMDIChildProcW
#define DefWindowProc DefWindowProcW
#define DialogBox DialogBoxW
#define DialogBoxIndirect DialogBoxIndirectW
#define DialogBoxIndirectParam DialogBoxIndirectParamW
#define DialogBoxParam DialogBoxParamW
#define DispatchMessage DispatchMessageW
#define DlgDirList DlgDirListW
#define DlgDirListComboBox DlgDirListComboBoxW
#define DlgDirSelectComboBoxEx DlgDirSelectComboBoxExW
#define DlgDirSelectEx DlgDirSelectExW
#define DrawState DrawStateW
#define DrawText DrawTextW
#define DrawTextEx DrawTextExW
#define EnumDesktops EnumDesktopsW
#define EnumProps EnumPropsW
#define EnumPropsEx EnumPropsExW
#define EnumWindowStations EnumWindowStationsW
#define FindWindow FindWindowW
#define FindWindowEx FindWindowExW
#define GetClassInfo GetClassInfoW
#define GetClassInfoEx GetClassInfoExW
#define GetClassLong GetClassLongW
#define GetClassLongPtr GetClassLongPtrW
#define GetClassName GetClassNameW
#define GetClipboardFormatName GetClipboardFormatNameW
#define GetDlgItemText GetDlgItemTextW
#define GetKeyboardLayoutName GetKeyboardLayoutNameW
#define GetKeyNameText GetKeyNameTextW
#define GetMenuItemInfo GetMenuItemInfoW
#define GetMenuString GetMenuStringW
#define GetMessage GetMessageW
#define GetMonitorInfo GetMonitorInfoW
#define GetProp GetPropW
#define GetRawInputDeviceInfo GetRawInputDeviceInfoW
#define GetTabbedTextExtent GetTabbedTextExtentW
#define GetUserObjectInformation GetUserObjectInformationW
#define GetWindowLong GetWindowLongW
#define GetWindowLongPtr GetWindowLongPtrW
#define GetWindowText GetWindowTextW
#define GetWindowTextLength GetWindowTextLengthW
#define GetAltTabInfo GetAltTabInfoW
#define GetWindowModuleFileName GetWindowModuleFileNameW
#define GrayString GrayStringW
#define InsertMenu InsertMenuW
#define InsertMenuItem InsertMenuItemW
#define IsCharAlpha IsCharAlphaW
#define IsCharAlphaNumeric IsCharAlphaNumericW
#define IsCharLower IsCharLowerW
#define IsCharUpper IsCharUpperW
#define IsDialogMessage IsDialogMessageW
#define LoadAccelerators LoadAcceleratorsW
#define LoadBitmap LoadBitmapW
#define LoadCursor LoadCursorW
#define LoadCursorFromFile LoadCursorFromFileW
#define LoadIcon LoadIconW
#define LoadImage LoadImageW
#define LoadKeyboardLayout LoadKeyboardLayoutW
#define LoadMenu LoadMenuW
#define LoadMenuIndirect LoadMenuIndirectW
#define LoadString LoadStringW
#define MapVirtualKey MapVirtualKeyW
#define MapVirtualKeyEx MapVirtualKeyExW
#define MessageBox MessageBoxW
#define MessageBoxEx MessageBoxExW
#define MessageBoxIndirect MessageBoxIndirectW
#define ModifyMenu ModifyMenuW
#define OemToChar OemToCharW
#define OemToCharBuff OemToCharBuffW
#define OpenDesktop OpenDesktopW
#define OpenWindowStation OpenWindowStationW
#define PeekMessage PeekMessageW
#define PostAppMessage PostAppMessageW
#define PostMessage PostMessageW
#define PostThreadMessage PostThreadMessageW
#define RealGetWindowClass RealGetWindowClassW
#define RegisterClass RegisterClassW
#define RegisterClassEx RegisterClassExW
#define RegisterClipboardFormat RegisterClipboardFormatW
#define RegisterDeviceNotification RegisterDeviceNotificationW
#define RegisterWindowMessage RegisterWindowMessageW
#define RemoveProp RemovePropW
#define SendDlgItemMessage SendDlgItemMessageW
#define SendMessage SendMessageW
#define SendMessageCallback SendMessageCallbackW
#define SendMessageTimeout SendMessageTimeoutW
#define SendNotifyMessage SendNotifyMessageW
#define SetClassLong SetClassLongW
#define SetClassLongPtr SetClassLongPtrW
#define SetDlgItemText SetDlgItemTextW
#define SetMenuItemInfo SetMenuItemInfoW
#define SetProp SetPropW
#define SetUserObjectInformation SetUserObjectInformationW
#define SetWindowLong SetWindowLongW
#define SetWindowLongPtr SetWindowLongPtrW
#define SetWindowsHook SetWindowsHookW
#define SetWindowsHookEx SetWindowsHookExW
#define SetWindowText SetWindowTextW
#define SystemParametersInfo SystemParametersInfoW
#define TabbedTextOut TabbedTextOutW
#define TranslateAccelerator TranslateAcceleratorW
#define UnregisterClass UnregisterClassW
#define VkKeyScan VkKeyScanW
#define VkKeyScanEx VkKeyScanExW
#define WinHelp WinHelpW
#define wsprintf wsprintfW
#define wvsprintf wvsprintfW
#ifndef NOGDI
typedef ICONMETRICSW ICONMETRICS,*LPICONMETRICS;
typedef NONCLIENTMETRICSW NONCLIENTMETRICS,*LPNONCLIENTMETRICS;
#define ChangeDisplaySettings ChangeDisplaySettingsW
#define ChangeDisplaySettingsEx ChangeDisplaySettingsExW
#define CreateDesktop CreateDesktopW
#define EnumDisplaySettings EnumDisplaySettingsW
#define EnumDisplaySettingsEx EnumDisplaySettingsExW
#define EnumDisplayDevices EnumDisplayDevicesW
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#else /* UNICODE */
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define EDITWORDBREAKPROC EDITWORDBREAKPROCA
#define PROPENUMPROC PROPENUMPROCA
#define PROPENUMPROCEX PROPENUMPROCEXA
#define DEKSTOPENUMPROC DEKSTOPENUMPROCA
#define WINSTAENUMPROC WINSTAENUMPROCA
#define PROPENUMPROC PROPENUMPROCA
#define PROPENUMPROCEX PROPENUMPROCEXA
#define MAKEINTRESOURCE MAKEINTRESOURCEA
typedef WNDCLASSA WNDCLASS,*LPWNDCLASS,*PWNDCLASS;
typedef WNDCLASSEXA WNDCLASSEX,*LPWNDCLASSEX,*PWNDCLASSEX;
typedef MENUITEMINFOA MENUITEMINFO,*LPMENUITEMINFO;
typedef LPCMENUITEMINFOA LPCMENUITEMINFO;
typedef MSGBOXPARAMSA MSGBOXPARAMS,*PMSGBOXPARAMS,*LPMSGBOXPARAMS;
typedef HIGHCONTRASTA HIGHCONTRAST,*LPHIGHCONTRAST;
typedef SERIALKEYSA SERIALKEYS,*LPSERIALKEYS;
typedef SOUNDSENTRYA SOUNDSENTRY,*LPSOUNDSENTRY;
typedef CREATESTRUCTA CREATESTRUCT, *LPCREATESTRUCT;
typedef CBT_CREATEWNDA CBT_CREATEWND, *LPCBT_CREATEWND;
typedef MDICREATESTRUCTA MDICREATESTRUCT,*LPMDICREATESTRUCT;
typedef MULTIKEYHELPA MULTIKEYHELP,*PMULTIKEYHELP,*LPMULTIKEYHELP;
typedef MONITORINFOEXA MONITORINFOEX, *LPMONITORINFOEX;
#define AppendMenu AppendMenuA
#define BroadcastSystemMessage BroadcastSystemMessageA
#define BroadcastSystemMessageEx BroadcastSystemMessageExA
#define CallMsgFilter CallMsgFilterA
#define CallWindowProc CallWindowProcA
#define ChangeMenu ChangeMenuA
#define CharLower CharLowerA
#define CharLowerBuff CharLowerBuffA
#define CharNext CharNextA
#define CharPrev CharPrevA
#define CharToOem CharToOemA
#define CharToOemBuff CharToOemBuffA
#define CharUpper CharUpperA
#define CharUpperBuff CharUpperBuffA
#define CopyAcceleratorTable CopyAcceleratorTableA
#define CreateAcceleratorTable CreateAcceleratorTableA
#define CreateDialog CreateDialogA
#define CreateDialogIndirect CreateDialogIndirectA
#define CreateDialogIndirectParam CreateDialogIndirectParamA
#define CreateDialogParam CreateDialogParamA
#define CreateMDIWindow CreateMDIWindowA
#define CreateWindow CreateWindowA
#define CreateWindowEx CreateWindowExA
#define CreateWindowStation CreateWindowStationA
#define DefDlgProc DefDlgProcA
#define DefFrameProc DefFrameProcA
#define DefMDIChildProc DefMDIChildProcA
#define DefWindowProc DefWindowProcA
#define DialogBox DialogBoxA
#define DialogBoxIndirect DialogBoxIndirectA
#define DialogBoxIndirectParam DialogBoxIndirectParamA
#define DialogBoxParam DialogBoxParamA
#define DispatchMessage DispatchMessageA
#define DlgDirList DlgDirListA
#define DlgDirListComboBox DlgDirListComboBoxA
#define DlgDirSelectComboBoxEx DlgDirSelectComboBoxExA
#define DlgDirSelectEx DlgDirSelectExA
#define DrawState DrawStateA
#define DrawText DrawTextA
#define DrawTextEx DrawTextExA
#define EnumDesktops EnumDesktopsA
#define EnumProps EnumPropsA
#define EnumPropsEx EnumPropsExA
#define EnumWindowStations EnumWindowStationsA
#define FindWindow FindWindowA
#define FindWindowEx FindWindowExA
#define GetClassInfo GetClassInfoA
#define GetClassInfoEx GetClassInfoExA
#define GetClassLong GetClassLongA
#define GetClassLongPtr GetClassLongPtrA
#define GetClassName GetClassNameA
#define GetClipboardFormatName GetClipboardFormatNameA
#define GetDlgItemText GetDlgItemTextA
#define GetKeyboardLayoutName GetKeyboardLayoutNameA
#define GetKeyNameText GetKeyNameTextA
#define GetMenuItemInfo GetMenuItemInfoA
#define GetMenuString GetMenuStringA
#define GetMessage GetMessageA
#define GetMonitorInfo GetMonitorInfoA
#define GetProp GetPropA
#define GetRawInputDeviceInfo GetRawInputDeviceInfoA
#define GetTabbedTextExtent GetTabbedTextExtentA
#define GetUserObjectInformation GetUserObjectInformationA
#define GetWindowLong GetWindowLongA
#define GetWindowLongPtr GetWindowLongPtrA
#define GetWindowText GetWindowTextA
#define GetWindowTextLength GetWindowTextLengthA
#define GetAltTabInfo GetAltTabInfoA
#define GetWindowModuleFileName GetWindowModuleFileNameA
#define GrayString GrayStringA
#define InsertMenu InsertMenuA
#define InsertMenuItem InsertMenuItemA
#define IsCharAlpha IsCharAlphaA
#define IsCharAlphaNumeric IsCharAlphaNumericA
#define IsCharLower IsCharLowerA
#define IsCharUpper IsCharUpperA
#define IsDialogMessage IsDialogMessageA
#define LoadAccelerators LoadAcceleratorsA
#define LoadBitmap LoadBitmapA
#define LoadCursor LoadCursorA
#define LoadIcon LoadIconA
#define LoadCursorFromFile LoadCursorFromFileA
#define LoadImage LoadImageA
#define LoadKeyboardLayout LoadKeyboardLayoutA
#define LoadMenu LoadMenuA
#define LoadMenuIndirect LoadMenuIndirectA
#define LoadString LoadStringA
#define MapVirtualKey MapVirtualKeyA
#define MapVirtualKeyEx MapVirtualKeyExA
#define MessageBox MessageBoxA
#define MessageBoxEx MessageBoxExA
#define MessageBoxIndirect MessageBoxIndirectA
#define ModifyMenu ModifyMenuA
#define OemToChar OemToCharA
#define OemToCharBuff OemToCharBuffA
#define OpenDesktop OpenDesktopA
#define OpenWindowStation OpenWindowStationA
#define PeekMessage PeekMessageA
#define PostAppMessage PostAppMessageA
#define PostMessage PostMessageA
#define PostThreadMessage PostThreadMessageA
#define RealGetWindowClass RealGetWindowClassA
#define RegisterClass RegisterClassA
#define RegisterClassEx RegisterClassExA
#define RegisterClipboardFormat RegisterClipboardFormatA
#define RegisterDeviceNotification RegisterDeviceNotificationA
#define RegisterWindowMessage RegisterWindowMessageA
#define RemoveProp RemovePropA
#define SendDlgItemMessage SendDlgItemMessageA
#define SendMessage SendMessageA
#define SendMessageCallback SendMessageCallbackA
#define SendMessageTimeout SendMessageTimeoutA
#define SendNotifyMessage SendNotifyMessageA
#define SetClassLong SetClassLongA
#define SetClassLongPtr SetClassLongPtrA
#define SetDlgItemText SetDlgItemTextA
#define SetMenuItemInfo SetMenuItemInfoA
#define SetProp SetPropA
#define SetUserObjectInformation SetUserObjectInformationA
#define SetWindowLong SetWindowLongA
#define SetWindowLongPtr SetWindowLongPtrA
#define SetWindowsHook SetWindowsHookA
#define SetWindowsHookEx SetWindowsHookExA
#define SetWindowText SetWindowTextA
#define SystemParametersInfo SystemParametersInfoA
#define TabbedTextOut TabbedTextOutA
#define TranslateAccelerator TranslateAcceleratorA
#define UnregisterClass UnregisterClassA
#define VkKeyScan VkKeyScanA
#define VkKeyScanEx VkKeyScanExA
#define WinHelp WinHelpA
#define wsprintf wsprintfA
#define wvsprintf wvsprintfA
#ifndef NOGDI
typedef ICONMETRICSA ICONMETRICS,*LPICONMETRICS;
typedef NONCLIENTMETRICSA NONCLIENTMETRICS,*LPNONCLIENTMETRICS;
#define ChangeDisplaySettings ChangeDisplaySettingsA
#define ChangeDisplaySettingsEx ChangeDisplaySettingsExA
#define CreateDesktop CreateDesktopA
#define EnumDisplaySettings EnumDisplaySettingsA
#define EnumDisplaySettingsEx EnumDisplaySettingsExA
#define EnumDisplayDevices EnumDisplayDevicesA
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
