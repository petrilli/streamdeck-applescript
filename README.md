# Applescripts for Stream Deck

Random Applescript that may be useful if you're using a [Stream Deck](https://www.elgato.com/en/gaming/stream-deck) on macOS. 
This won't be much help if you're interested in Twitch and other things, and instead is focused on more traditional productivity.

## Scripts

### Chrome Library.scpt

A library to help deal with Google Chrome. Right now, it just worries about finding and activating tabs.

## Linking to Stream Deck

One of the most annoying things for me to figure out was how to cause an Applescript to called by a button press. 
Initially, I was using Keyboard Maestro as an intermediary. I would have Stream Deck open a custom URL, and then Keyboard Maestro would handle that URL by executing an Applescript. 
After a bit, I realized 1) that was silly, and 2) I could just have Stream Deck do it directly.
To accomplish that, you save the scripts as `.scpt` files in some well-known location (I personally use `$HOME/Scripts`), and use the System->Open action.
Because of how macOS treats the `.scpt` file, it will execute the script when it opens.

## Tools

There's a few tools you might find interesting if you write much Applescript:

* [Script Debugger](https://latenightsw.com/) - Advanced authoring environment with extensive debugging capabilities.
* [Keyboard Maestro](https://www.keyboardmaestro.com/main/) - Automation tool that can do more than just handle keyboard issues.
