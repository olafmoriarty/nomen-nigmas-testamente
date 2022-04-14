# Nomen Nigmas testamente

**Nomen Nigmas testamente** is an interactive fiction puzzle game written in React, using the narrative scripting language [Ink](https://www.inklestudios.com/ink/) . It can be played [on my itch.io page](https://olafmoriarty.itch.io/nomen-nigmas-testamente/) (Norwegian only).

All code of the game is available here. I hope to eventually publish parts of this on npm in case anyone's interested in using it to create their own interactive stories, and hopefully I'll add a license file to this repo eventually. For now, all of this code is written by one very inexperienced person in under two months, so if you're interested in any of it, **use it at your own risk**.

## Game script
The uncompiled Ink files for the game are available in the `/inky/` folder. Obviously, if you haven't played the game and you wish to do so in the future, those files contain **major spoilers** as the entire game is in there.

This readme file has no intention of describing how Ink works, for that I recommend the [Ink Writer's Manual](https://github.com/inkle/ink/blob/master/Documentation/WritingWithInk.md). The story is written in [Inky](https://github.com/inkle/inky/releases/tag/0.12.0).

The JSON file exported from Inky is located in `/src/story.json`.

## Wrapper component
This repository contains the wrapper component I've written for Ink/inkjs to create a visual novel-style browser game. The main functionality of the component lies in the `<Game />` component, available in `/src/Game.js`, which is called like this:

    <Game
        json={json} 
        title={title} 
        characters={characters}
        locations={locations}
        credits={credits}
        minigames={minigames}
    />

where

* `json` is the story.json file exported from Inky.
* `title` is a string containing the title of the game.
* `characters` is an object of objects containing information about the characters in the game. For example, `characters.wenche` contains the object `{"name": "Wenche Krankelfnaas", "portrait": "./images/characters/wenche.png"}`, telling the script which name and portrait should be displayed on screen when a line in the Ink file is tagged `#person:wenche`.
* Likewise, `locations` is an object of objects containing information about the locations in the game. For example, when `locations.hagen` is set to `{"name": "Hagen", "image": "./images/backgrounds/hagen.jpg"}`, that tells the script which background picture should be displayed for lines tagged `#location:hagen`, and also what the name of that location is (which is displayed in savedata).
* `credits` is an array of JSX components, each a page of the game's credits, in order.
* `minigames` is an object of JSX components, each a separate puzzle or minigame to be included in the game. For example, if a line in the story is tagged `#minigame:puzzle1`, then that line will be replaced by the component stored in `minigames.puzzle1`. Functions to progress the story or set variables in the Ink script will be set as props in the component.

## Known issues
Eventually I hope to make the `<Game />` component available on npm so that it can be used by anyone to make any game in this style. *Mostly,* `Game.js` already contains all the general stuff while the other files imported or required in `App.js` are the *Nomen Nigmas testamente*-specific ones, but with two exceptions:

* All CSS styling is currently centralized in one single SCSS file. I hope to eventually separate out all colors, fonts and other *Nomen Nigmas testamente*-specific styles to a separate CSS file so that the template CSS will be a bit more neutral than this one is.
* While most text in the game comes from the Ink files, a little is hardcoded into the .js files - and in those cases that text is in Norwegian (so, the Save button is marked "Lagre"). I'll eventually fix this so that GUI language can be set with an attribute and that English language will be the default.

## Features
* A splash screen is displayed, showing the game's title
* The story text is displayed on the screen, one line at a time
* New text is displayed on the screen one letter at a time, unless the player chooses to turn it off. Player can change the text speed
* A line can be tagged with different text styles, like spoken text or narrative text
* When a line is tagged with a character name, the character's name and portrait picture will be displayed on screen
* When a line is tagged with a location, the background picture will be set to the correct location data
* The player can open the story log at any time
* Lets you add text inputs to the story so that the player can type text in an input field to set an Ink variable
* Lets you add credits to your game
* Lets you add interactive minigames to your game so that when a minigame is called, the story pauses until the player has completed or closed the minigame. The minigame can also set Ink variables
* The player's game is autosaved, and they can load/save files in a separate dialog
* In addition to touch/mouse controls, the player can also use keyboard shortcuts to play the game:
    * **Space/Enter** - progress story, or pick selected value in option list
    * **Arrow up/down** - previous/next option in option list
    * **1-9** - select a value from an option list
    * **L** - open/close story log
    * **S** - open/close load/save window
    * **O** - open/close options window
    * **C** - open/close credits
    * **Escape** - close current overlay
