${SegmentFile}

Var GTKBookmarks
Var ExistsXBEL
Var ExistsFileChooser

${SegmentInit}
	${ReadUserConfig} $0 OpenGL
	${IfNot} $0 == ""
		StrCpy $1 "" 
		StrCmp $0 "" +4 0
		${GetRoot} $EXEDIR $1
		${StrReplace} '$1' '@Drive' '$1' '$0'
		WriteINIStr $EXEDIR\App\AppInfo\Launcher\$AppID.ini Environment PATH "%PAL:AppDir%\Geany\bin;%PAL:AppDir%\Geany;$0;%PATH%"
	${EndIf}
!macroend

${SegmentPrePrimary}
	IfFileExists "$USERPROFILE\.recently-used.xbel" 0 +2 
		StrCpy $ExistsXBEL "true"
	IfFileExists "$USERPROFILE\.gtk-bookmarks" 0 +2
		StrCpy $GTKBookmarks "true"
	IfFileExists "$APPDATA\gtk-2.0\gtkfilechooser.ini" 0 +2
		StrCpy $ExistsFileChooser "true"
	Delete "$EXEDIR\DataDir\settings\geany.conf.old"
	Delete "$EXEDIR\DataDir\settings\plugins\spellcheck\spellcheck.conf.old"
!macroend

${SegmentPost}
	StrCmp $ExistsXBEL "true" +2
		Delete "$USERPROFILE\.recently-used.xbel"
	StrCmp $GTKBookmarks "true" +2
		Delete "$USERPROFILE\.gtk-bookmarks"
	StrCmp $ExistsFileChooser "true" +2
		Delete "$APPDATA\gtk-2.0\gtkfilechooser.ini"
!macroend