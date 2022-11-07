SetTimer Check, 250
isSlack := 0
Check()
{
    If (WinActive("ahk_exe slack.exe")){
        If (isSlack !== 1){
            Run 'SetDefaultBrowser.exe HKCU "<your work browser>"',,"Hide"
            global isSlack := 1
        }
    }Else{
        If (isSlack !== 0){
            Run 'SetDefaultBrowser.exe HKCU "<your private browser>"',,"Hide"
            global isSlack := 0
        }
    }
}