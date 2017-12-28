on run {input, parameters}
	set StatusRx to item 1 in input

	if (StatusRx is equal to "Sleep") then

		set theURL to "https://maker.ifttt.com/trigger/MacActions/with/key/bEK1kpyeCDV28ntU5LZ72l?value1=Sleep"
		do shell script "curl " & quoted form of theURL

		say "Going to Sleep... Good Night!"

		tell application "Finder"
			sleep
		end tell

	else if (StatusRx is equal to "WakeUp") then

		set theURL to "https://maker.ifttt.com/trigger/MacActions/with/key/bEK1kpyeCDV28ntU5LZ72l?value1=Your%20Mac%20isON"
		do shell script "curl " & quoted form of theURL

		say "Wake up...!"
		say "I'm alive and well in case you were wondering..."

		tell application "Finder"
			activate
		end tell

	else if (StatusRx is equal to "ScreenSaver") then
		set theURL to "https://maker.ifttt.com/trigger/MacActions/with/key/bEK1kpyeCDV28ntU5LZ72l?value1=ScreenSaver"
		do shell script "curl " & quoted form of theURL

		say "Saumil...Starting Screen Saver!"

		tell application "System Events"
			start current screen saver
		end tell

	else if (StatusRx is equal to "ShutDown") then
		set theURL to "https://maker.ifttt.com/trigger/MacActions/with/key/bEK1kpyeCDV28ntU5LZ72l?value1=ShutDown"
		do shell script "curl " & quoted form of theURL

		say "Saumil...Shutting your Mac down..."

		tell application "Finder"
			shut down
		end tell

	else if (StatusRx is equal to "ReStart") then

		set theURL to "https://maker.ifttt.com/trigger/MacActions/with/key/bEK1kpyeCDV28ntU5LZ72l?value1=ReStart"
		do shell script "curl " & quoted form of theURL

		say "Saumil...Behold! Restarting your Mac."

		tell application "Finder"
			restart
		end tell

	else if (StatusRx is equal to "LockScreen") then

		set theURL to "https://maker.ifttt.com/trigger/MacActions/with/key/bEK1kpyeCDV28ntU5LZ72l?value1=LockScreen"
		do shell script "curl " & quoted form of theURL

		say "Don't worry... Security measures are being applied to your Mac."

		tell application "System Events"
			keystroke "q" using {command down, control down}
		end tell

	else
		set theURL to "https://maker.ifttt.com/trigger/MacActions/with/key/bEK1kpyeCDV28ntU5LZ72l?value1=Unknown"
		do shell script "curl " & quoted form of theURL

		say "Hang in there, it's not what you asked for!"
		say StatusRx
		return "Hang in there, it's not what you asked for!"

	end if

	return input

end run
