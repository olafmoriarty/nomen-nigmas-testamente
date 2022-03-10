# WORK IN PROGRESS - DO NOT USE!

The purpose of this project is to create a wrapper component for [inkjs](https://github.com/y-lohse/inkjs) to easier make visual-novel-like games using Inky and React.

## Features
This component
* Adds a splash title screen to your game, displaying its title and links to your credits/options (**NOT FINISHED**)
* Displays the text of your story one line at a time, letting you tap/click anywhere to continue
* Lets you style the lines of your story, for example by displaying narrative text and spoken text differently
* When displaying spoken text, lets you display a character portrait and character name
* Displays different background images depending on where you are in the story (**NOT FINISHED**)
* Adds a story log that the player can open at any time
* Adds text inputs that lets you set variables in your Ink file
* Lets you add credits to your game (**NOT FINISHED**)
* Lets your player load and save their game state (**NOT FINISHED**)

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

