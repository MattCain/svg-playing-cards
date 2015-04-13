# SVG-Playing-Cards
SVG playing cards for the web.

## How to use

All you need is the playing-cards.min.css file, all of the SVG's are included in the file as data-uri's. The SVG's are optimised with SVGO (via grunt-svgmin) before being compiled into the css.

Then to show a card:

    <!-- Ace of Spades -->
    <span class="pcard-as"></span>

    <!-- Jack of Clubs -->
    <span class="pcard-jc"></span>

    <!-- 3 of Diamonds -->
    <span class="pcard-3d"></span>

    <!-- 10 of hearts -->
    <span class="pcard-10h"></span>

## Building

Clone the repo and run `npm install` to install the dependencies.

`grunt` will do a build and `grunt watch` will monitor the LESS file for changes and do a build when changes are made.

## Attribution

The cards come from [this pack](https://code.google.com/p/vector-playing-cards/) by Byron Knoll.

I swapped out the Jack, Queen and King images as they made the filesize too huge, and used the ones from [here](https://code.google.com/p/vectorized-playing-cards/) by Chris Aguilar.