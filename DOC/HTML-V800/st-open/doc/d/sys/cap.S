          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       09 � GetMsg   GetMessage()                      넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> PAR1   EA   MSG                          넴
          �   PAR2   DQ   HWND                         넴
          �   PAR3   DQ   filter min                   넴
          �   PAR4   DQ          max                   넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- RAX    0000 0000 0000 0000   WM_QUIT     넴
          �          xxxx xxxx xxxx xxxx   WM_???      넴
          �          FFFF FFFF FFFF FFFF   error       넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          � CAUTION: Retrieves all messages for thread 넴
          �          and its children. Don't call this 넴
          �          if you need specific messages for 넴
          �          a specific window.                넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       0A � PeekMsg  PeekMessage()                     넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> PAR1   EA   MSG                          넴
          �   PAR2   DQ   HWND                         넴
          �   PAR3   DQ   filter min                   넴
          �   PAR4   DQ          max                   넴
          �   PAR5   DQ   remove flags                 넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- RAX    0000 0000 0000 0000   WM_QUIT     넴
          �          xxxx xxxx xxxx xxxx   WM_???      넴
          �          FFFF FFFF FFFF FFFF   error       넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       0B � TrnsMsg  TranslateMessage()                넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> PAR1   EA MSG                            넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- RAX    ???? ???? ???? ????   RC          넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       0C � DispMsg  DispatchMessage()                 넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> PAR1   EA MSG                            넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- RAX    ???? ???? ???? ????   RC          넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       0D � DefWP    DefWindowProc()                   넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> PAR1   DQ   HWND                         넴
          �   PAR2   DQ   message                      넴
          �   PAR3   DQ   WPARAM                       넴
          �   PAR4   DQ   LPARAM                       넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- RAX    ???? ???? ???? ????   RC          넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       0E � DefDP    DefDlgProc()                      넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> PAR1   DQ   HWND                         넴
          �   PAR2   DQ   message                      넴
          �   PAR3   DQ   WPARAM                       넴
          �   PAR4   DQ   LPARAM                       넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- RAX    ???? ???? ???? ????   MRESULT     넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       0F � SendM    SendMessage()                     넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> PAR1   DQ   HWND                         넴
          �   PAR2   DQ   message                      넴
          �   PAR3   DQ   WPARAM                       넴
          �   PAR4   DQ   LPARAM                       넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- RAX    ???? ???? ???? ????   MRESULT     넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       10 � PostM    PostMessage()                     넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> PAR1   DQ   HWND                         넴
          �   PAR2   DQ   message                      넴
          �   PAR3   DQ   WPARAM                       넴
          �   PAR4   DQ   LPARAM                       넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- RAX    ???? ???? ???? ????   MRESULT     넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       11 � SnDIM    SendDlgItemMessage()              넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> PAR1   DQ   HWND dialog                  넴
          �   PAR2   DQ   resource ID                  넴
          �   PAR3   DQ   message                      넴
          �   PAR4   DQ   WPARAM                       넴
          �   PAR5   DQ   LPARAM                       넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- RAX    ???? ???? ???? ????   MRESULT     넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       12 � Pquit    PostQuitMessage()                 넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> PAR1   DQ   exit code                    넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- RAX    ???? ???? ???? ????   MRESULT     넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       13 � WinId    GetDlgItem()                      넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> PAR1   DQ   HWND parent                  넴
          �   PAR2   DQ   resource ID                  넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- RAX    ???? ???? ???? ????   HWND contr. 넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       14 � WinQW    GetWindow()                       넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> PAR1   DQ   HWND                         넴
          �   PAR2   DQ   relationship (GW_*)          넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- RAX    ???? ???? ???? ????   HWND window 넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       15 � WnPos    SetWindowPlacement()              넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> PAR1   DQ   HWND to position             넴
          �   PAR2   VOID* EA WINDOWPLACEMENT struct   넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- RAX    ???? ???? ???? ????   RC          넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       16 � GtPos    GetWindowPlacement()              넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> PAR1   DQ    HWND                        넴
          �   PAR2   VOID* EA WINDOWPLACEMENT struct   넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- RAX    ???? ???? ???? ????   RC          넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       17 � WinMov   MoveWindow()                      넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> PAR1   DQ    HWND                        넴
          �   PAR2   DQ    x                           넴
          �   PAR3   DQ    y                           넴
          �   PAR4   DQ    w                           넴
          �   PAR5   DQ    h                           넴
          �   PAR6   DQ    0 no repaint, else repaint  넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- RAX    ???? ???? ???? ????   RC          넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       18 � InvRect  InvalidateRect()                  넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> PAR1   DQ    HWND                        넴
          �   PAR2   VOID* address RECTL structure     넴
          �   PAR3   DQ    include background (0 or 1) 넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- RAX    ???? ???? ???? ????   RC          넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       19 � WinSh    ShowWindow()                      넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> PAR1   DQ   HWND                         넴
          �   PAR2   DQ   flag (SW_*)                  넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- RAX    ???? ???? ???? ????   RC          넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       1A � WinEn    EnableWindow()                    넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> PAR1   DQ   HWND                         넴
          �   PAR2   DQ   FALSE   disable              넴
          �               TRUE    enable               넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- RAX    ???? ???? ???? ????   RC          넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       1B � WnEWU    LockWindowUpdate()                넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> PAR1   DQ   HWND                         넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- RAX    ???? ???? ???? ????   RC          넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          � Call WnEWU(HWND) to lock window HWND. Call 넴
          � WnEWU(NULL) to unlock it.                  넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       1C � WnAct    SetActiveWindow()                 넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> PAR1   DQ   HWND                         넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- RAX    ???? ???? ???? ????   RC          넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       1D � WnFoc    SetFocus()                        넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> PAR1   DQ   HWND                         넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- RAX    ???? ???? ???? ????   RC          넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       1E � WnUpd    UpdateWindow()                    넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> PAR1   DQ   HWND                         넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- RAX    ???? ???? ???? ????   RC          넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       1F � CtlSh    ShowWindow() from ID              넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> PAR1   DQ   HWND                         넴
          �   PAR2   DQ   resource ID                  넴
          �   PAR3   DQ   flag (SW_*)                  넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- RAX    ???? ???? ???? ????   RC          넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       20 � CtlEn    EnableWindow() from ID            넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> PAR1   DQ   HWND                         넴
          �   PAR2   DQ   resource ID                  넴
          �   PAR3   DQ   FALSE   disable              넴
          �               TRUE    enable               넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- RAX    ???? ???? ???? ????   prev. state 넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       21 � WnSTx()  SetWindowText()                   넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> PAR1   DQ    HWND                        넴
          �   PAR2   VOID* address string              넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- RAX    ???? ???? ???? ????   RC          넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       22 � WnQTx()   WinQueryWindowText               넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> PAR1   DQ    HWND                        넴
          �   PAR3   VOID* buffer address              넴
          �   PAR2   DQ           size                 넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- RAX    ???? ???? ???? ????   EA buffer   넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       23 � WnSDT    SetDlgItemText()                  넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> PAR1   DQ    HWND                        넴
          �   PAR2   DQ    resource ID                 넴
          �   PAR3   VOID* address buffer              넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- RAX    ???? ???? ???? ????   RC          넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       24 � QEf      query entryfield text             넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> PAR1   DQ    HWND                        넴
          �   PAR2   DQ    resource ID                 넴
          �   PAR3   VOID*        address              넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- RAX    ???? ???? ???? ????   RC          넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          � QEf() does the same as WnQDT, but the size 넴
          � of the output string is fixed to 32 byte.  넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       25 � WnQDT    GetDlgItemText()                  넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> PAR1   DQ    HWND                        넴
          �   PAR2   DQ    resource ID                 넴
          �   PAR3   VOID*        address              넴
          �   PAR4   DQ    buffer size                 넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- RAX    ???? ???? ???? ????   RC          넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       26 � WnGWL    GetWindowLongA()                  넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> PAR1   DQ    HWND                        넴
          �   PAR2   DQ    index                       넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- RAX    0000 0000 0000 0000   error       넴
          �          ???? ???? ???? ????   req. value  넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       27 � WnSWL    SetWindowLongA()                  넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> PAR1   DQ    HWND                        넴
          �   PAR2   DQ    index                       넴
          �   PAR3   DQ    new value                   넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- RAX    0000 0000 0000 0000   error       넴
          �          ???? ???? ???? ????   prev. value 넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       28 � CrUpDn   CreateUpDownControl()             넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> PAR1   DQ    style                       넴
          �   PAR2   DQ    x                           넴
          �   PAR3   DQ    y                           넴
          �   PAR4   DQ    cx                          넴
          �   PAR5   DQ    cy                          넴
          �   PAR6   DQ    HWND parent                 넴
          �   PAR7   DQ    ID Up-Down                  넴
          �   PAR8   DQ    HINST application           넴
          �   PAR9   DQ    HWND buddy                  넴
          �   PAR10  DQ    upper limit (value range)   넴
          �   PAR11  DQ    lower limit (value range)   넴
          �   PAR12  DQ    position                    넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- RAX    0000 0000 0000 0000   error       넴
          �          ???? ???? ???? ????   prev. value 넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       29 � ThrdCrea CreateThread()                    넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> PAR1   DQ    thread attributes           넴
          �   PAR2   DQ    stack size                  넴
          �   PAR3   DQ    EA thread function          넴
          �   PAR4   DQ    EA of a DQ with info 4 thrd 넴
          �   PAR5   DQ    creation flags              넴
          �   PAR6   DQ    EA of DQ getting threadID   넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- RAX    0000 0000 0000 0000   error       넴
          �          ???? ???? ???? ????   thrd handle 넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       2A � ThrdSusp SuspendThread()                   넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> PAR1   DQ    thread handle               넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- RAX    0000 0000 0000 0000   error       넴
          �          ???? ???? ???? ????   thrd handle 넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       2B � ThrdResu ResumeThread()                    넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> PAR1   DQ    thread handle               넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- RAX    0000 0000 0000 0000   error       넴
          �          ???? ???? ???? ????   thrd handle 넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       2C � ThrdSwi2 SwitchToThread()                  넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> -      VOID  nothing                     넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- RAX    0000 0000 0000 0000   not swtched 넴
          �          ???? ???? ???? ????   switched    넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       2D � ThrdExit ExitThread()                      넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> PAR1   DQ    exit code                   넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- RAX    ???? ???? ???? ????   undefined   넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       2E � ThrdTerm TerminateThread()                 넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> PAR1   DQ    thread handle               넴
          �   PAR2   DQ    exit code                   넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- RAX    0000 0000 0000 0000   error       넴
          �          ???? ???? ???? ????   success     넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       2F � .        placeholder                       넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> PAR1   .     .                           넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- RAX    0000 0000 0000 0000               넴
          �          ???? ???? ???? ????               넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       30 � AloMem   VirtualAlloc()                    넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> PAR1   DQ   requested size in byte       넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- RAX    0000 0000 0000 0000   error       넴
          �          ???? ???? ???? ????   EA block    넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       31 � FreMem   VirtualFree()                     넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> PAR1   VOID* EA of block to free         넴
          �   PAR2   DQ    block size (as allocated)   넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- EAX    0000 0000   error                 넴
          �          xxxx xxxx   okay                  넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       32 � WaitTm   Sleep()                           넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> PAR1   DQ   sleep time in milliseconds   넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- EAX    garbage                           넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       33 � WaitTx   SleepEx()                         넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> PAR1   DQ   sleep time in milliseconds   넴
          �   PAR2   DQ   exception flags              넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- EAX    garbage                           넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
          旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
       34 � GetRes   get screen resolution             넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �-> -      -    nothing                      넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          �<- EAX    always zero                       넴
          쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑�
          � GetRes() queries screen width & height and 넴
          � saves them as STV_SCREEN_W / STV_SCREEN_H. 넴
          � GetRes() is called by the Loader at system 넴
          � initialisation time. There is no reason to 넴
          � call GetRes() after executing LDinit() nor 넴
          � can it be called if LDinit() fails (System 넴
          � Numerics are not available in this case).  넴
          읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
            栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢栢�
