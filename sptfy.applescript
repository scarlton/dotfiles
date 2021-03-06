#!/usr/bin/osascript

on run argv

	if not argv = {} then
		set activity to item 1 of argv

		tell application "Spotify"
			if activity is contained by {"current", "artist", "track"} then
				set currentStatus to player state as string
				if currentStatus is "playing" then
					set currentTrack to name of current track as string
					set currentArtist to artist of current track as string

					if activity is "current" then
					    return currentArtist & " - " & currentTrack
					else if activity is "artist" then
					    return currentArtist
					else if activity is "track" then
					    return currentTrack
					end if
				end if
			else if activity is "previous" then
				previous track
			else if activity is "next" then
				next track
			else if activity is "play" then
				play
			else if activity is "stop" then
				pause
			end if

		end tell
	end if
end run
