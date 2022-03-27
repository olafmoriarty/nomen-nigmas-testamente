# WORK IN PROGRESS - DO NOT USE!

The purpose of this project is to create a wrapper component for [inkjs](https://github.com/y-lohse/inkjs) to easier make visual-novel-like games using Inky and React.

## Features
This component
* Adds a splash title screen to your game, displaying its title
* Displays the text of your story one line at a time, letting you tap/click anywhere to continue
* Lets you style the lines of your story, for example by displaying narrative text and spoken text differently
* When displaying spoken text, lets you display a character portrait and character name
* Displays different background images depending on where you are in the story
* Adds a story log that the player can open at any time
* Adds text inputs that lets you set variables in your Ink file
* Lets you add credits to your game
* Lets you add interactive minigames to your game
* Lets your player load and save their game state
* Adds keyboard navigation to the game

## Writing your story in Inky
This component is based on the [Ink](https://www.inklestudios.com/ink/) narrative scripting language, developed by Inkle Studios.

* [Download Inky](https://github.com/inkle/inky/releases/tag/0.12.0)
* [Ink Writer's Manual](https://github.com/inkle/ink/blob/master/Documentation/WritingWithInk.md)

Write your story in Inky, export it to JSON, and 

## How to use
*It is my intention to, as a part of this project, figure out how one publishes projects to npm so that you can use a simple `npm install` to get the script, but I'm not there yet. Until then, consider this README a draft.*

The component is used in the following way:

    <Game
        json={json}
        characters={characters}
        title="The title of the game!"
        credits={credits}
        minigames={minigames}
    />

At the time of writing this, all attributes are mandatory. At the time of publishing, the `json` attribute will be mandatory and the others will be optional.

### `json`
*(Note to self: Okay, I have to rename that parameter. Perhaps to `story`.) Yeah, that sounds better.*

The `json` is the json file exported from *Inky* that contains your story. `require` or `fetch` it into your script, and pass it into the json attribute.

### `title`
The title of the game. Should be a string.

### `characters`
A javascript object containing information about the characters appearing in the game, in the following format:

    {
        john: {
            name: "John Doe",
            portrait: "/images/john.png",
            color: "#ff0000",
        },
        chris: {
            name: "Christina Plonkston",
            portrait: "/images/chris.png",
        },
    }

If a character referenced in the Ink file (as described below) is found in this object, that character's name and portrait (if given) are displayed on the screen during that person's dialogue. So if our Ink story contains this line:

    Sounds good to me! #style:dialog #person:john

... John's name and portrait will be displayed on screen.

### `minigames`
A javascript object containing all the minigames you wish to include in the game, in the following format:

    {
        cardGame: <CardGame />,
        jigsawPuzzle: <Jigsaw />,
    }

## Ink file setup
The component uses the tags provided in your ink script for formatting and stuff.

Say, for example, your ink file without any tags looks like this:

    I walked up to the counter.
    "Hi, can I help you?" the receptionist asked.
    "Hi," I said. "My name is ..."
    + [John]
    + [Kate]
    + [Flarn the Destroyer]
    - "I have an appointment with the prime minister."
    The receptionist gave me a strange look.
    "The prime minister has been dead for ten years," she said.
    "Also, this is a Starbucks."

### `style:[style-name]`
Use the `style` tag to set a CSS style. By default two styles are available:

* `style:dialog` (default) displays text in a box at the bottom of the screen, labeled with the speaker's name (if available).
* `style:narrative` displays a semitransparent black overlay on the screen with the text in the center of the screen.

You can set a different style if you want, but in that case you'll have to add the CSS yourself. If you, for example, use `style:innerMonologue`, no formatting will be set by default, but the container holding the text will get the CSS class `style-innerMonologue`.

### `person:[person-name]`
Use the `person` tag to tell the script who's talking. This person is looked up in the `characters` object, and their name and portrait will be displayed on screen. If you tag `#person:john` and there is no `john` in the character object, `john` will be displayed as the person's name.

Implementing the `style` and `person` tags into our ink script gives us something like this:

    I walked up to the counter. #style:narrative
    Hi, can I help you? #style:dialog #person:receptionist
    Hi. My name is ... #person:me
    + [John]
    + [Kate]
    + [Flarn the Destroyer]
    - I have an appointment with the prime minister.
    The receptionist gave me a strange look. #style:narrative
    The prime minister has been dead for ten years. #style:dialog person:receptionist
    Also, this is a Starbucks.

Note that most set tags persist until they're changed, so when we set the `#style:dialog` tag on line two, we don't have to set it again on line three, and if the receptionist says two lines in a row it is enough to tag her on the first one.

### `input:true` and `var:[variable-name]`
Use the `input` tag to let the player enter text in an input field and save this text to a variable in the Ink story. For example, if you want to ask the player their name instead of letting them choose from a list, you can do this:

    VAR player = ""
    
    I walked up to the counter. #style:narrative
    Hi, can I help you? #style:dialog #person:receptionist
    What is your name? #input:true #var:player
    Hi. My name is {player}. I have an appointment with the prime minister. #person:me
    The receptionist gave me a strange look. #style:narrative
    The prime minister has been dead for ten years. #style:dialog person:receptionist
    Also, this is a Starbucks.

### `minigame:[minigame-name]`
In this context, a "minigame" is any chunk of gameplay that's not made in Ink, that you wish to include in your game that your player has to finish *) before the ink story continues. Basically every time you want your player to do something that it's easier for you to code in a React component than it is to create in Ink. From your minigame you can then alter Ink variables or just tell the game to continue.

In the example below, imagine I have set up a minigame containing a small racing game, and that inside this minigame I have a function that sets the Ink variable `arcadeGameScore` to the score you get:

    VAR arcadeGameScore = 0
    
    I walked up to the arcade cabinet. The title screen, "CAIRO KART", flashed towards me, luring me in.
    + [Play game!]
        MINIGAME #minigame:racing
        I got {arcadeGameScore} points.
    + [Nah, don't do it.]
        I decided against it. It looked like a lot of fun, though.
    - Then, I sat back down.

Note that as long as a `minigame` tag is present, the text itself will not be displayed to the player, so you can write anything you want on that line. (In the example above, I've written "MINIGAME".)

*) Since the minigame is made by you, "Finish" can mean whatever you want, including clicking "I give up". If so, adding a conditional right after the minigame to check whether the player completed the goal or not is a good idea.

For coding the minigame itself, see "Anatomy of a minigame" below.

### Tags without text
Ink requires there to be a line of text for you to register tags. As this component stores tags for future use, you may want to set a tag without outputting any text, for example if you wish to alter the tags before displaying a list of options. As a workaround, you can use the text BLANK to set the tags and then progress in the story without pausing to display text, like this:

    // The following example changes the CSS style from dialog to narrative and clear the person portrait before displaying the beverage options.
    And what would you like to drink? #style:dialog #person:waitress
    BLANK #style:narrative #person:
    + Coffee.
    + Tea.
    + Lemonade.

(This is not very useful at the moment, but as the plan is to expand the component to also let you change backgrounds and soundtracks using tags, something like this could come in very handy.)

## Anatomy of a minigame
*(To be written later.)*

## Keyboard controls
* **Space/Enter** - progress story, or pick selected value in option list
* **Arrow up/down** - previous/next option in option list
* **1-9** - select a value from an option list
* **L** - open/close story log
* **S** - open/close load/save window
* **O** - open/close options window
* **C** - open/close credits
* **Escape** - close story log / load/save window / options / credits

All of these options are also available through the touchscreen.