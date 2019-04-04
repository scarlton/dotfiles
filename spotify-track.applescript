#!/usr/bin/osascript

tell application "Spotify"
	set currentStatus to player state as string
	if currentStatus is "playing" then
		set currentTrack to name of current track as string
		set currentArtist to artist of current track as string
		set nowPlaying to currentArtist & " - " & currentTrack
		return nowPlaying
	end if
end tell
