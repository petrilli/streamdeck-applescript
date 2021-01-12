--  Chrome automation library

use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions


-- Find a tab in Chrome that has a matching URL prefix
on findMatchingTab(urlPrefix)
	set AppleScript's text item delimiters to return
	
	-- Get all the tabs in Google Chrome
	set _win to false
	tell application "Google Chrome"
		set {idList, urlList} to {id, URL} of every tab of every window
	end tell
	
	-- If there's a tab that matches, iterate through and find which window and tab it is
	if (urlList as text) contains urlPrefix = true then
		set theWin to 1
		repeat with i in urlList
			set theTab to 1
			repeat with n in i
				if n starts with urlPrefix then
					set {_win, _tab} to {theWin, theTab}
					-- Assume we only have one and exit
					exit repeat
				end if
				set theTab to theTab + 1
			end repeat
			set theWin to theWin + 1
		end repeat
	end if
	return {_win, _tab}
end findMatchingTab

-- Given a link to the window and tab, raise it to the front and make it active
on activateMatchingTab(targetWindow, targetTab)
	activate application "Google Chrome"
	tell application "System Events"
		if quit delay ≠ 0 then set quit delay to 0
		tell process "Google Chrome"
			perform action "AXRaise" of window targetWindow
		end tell
	end tell
	tell application "Google Chrome"
		tell front window to set active tab index to targetTab
	end tell
end activateMatchingTab
