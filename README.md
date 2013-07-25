This Compass extension will allow you to create retina ready sprites from the scratch. Juast drop your images on the right folders, type some Compass mumble jumble and you are ready to go!

##
  Installation

    gem installl compass-retina-sprites

Now do a require in your Compass <kbd>config.rb</kbd>

  require 'compass-retina-sprites'

## How to use it?

Fisrt thing to do is drop your images on the right folders. In this case I have set two folders <kbd>icons</kbd> and <kbd>icons-sprites</kbd> inside my image folder.

Next, we need to tell Compass where those image are. Add this line to <kbd>variables.saas</kbd> or somewhere else

  $sprites:        sprite-map("icons/*.png")
    $sprites_retina: sprite-map("icons-sprites/*.png")


Now we need to init awesomeness, add this line to your project:

  @import "compass-retina-sprites"

## Using the extension

You can pass several parameters to obtain the right result, some valid options are:

  // This will import plain.png
    .plain
      +sprite(plain)

    // This will import boat.png, boat_hover.png and boat_active.png
    .boat
      +sprite(boat, $hover_state: true, $active_state: true)

    // This will import console.png plus 40px of padding on the sides
    .console
      +sprite(console, $spacing: 40px)

    // This will import people.png and it will not set any dimension on this elemments
    .people
      +sprite(people, $dimensions: False)

## Commmons Issues

### The sprite position is wrong

Please make you sure that your icons scale proportionally. If the non-retina icons are **16x16** your retina icons must be **32x32** and not **30x32** and definitely not **45x34**

### I'm getting a _compass can't convert nil into string_ error

You propabbly are running a rails app. This is a wierd issue with compass-rails. For some reason compass-rails does not create the sprites on demand and do not understand the `sprite-map`.

One walkaround is to tell to Compass to re-declare your sprites assets, so add this line at the top of your variables:

  @import "icons/*.png"
    @import "icons-sprites/*.png"

### The smart layout doesn't seems to work properly

Unfortunately Compass doesn't support extra options with this layout. Try to use the default layout or the horizontal layout.

### When I add some _spacing_ to my sprite the sprite position is not right

Please keept in mind that if you are adding extra padding around the sprite item you will also need to tell Compass to add some extra space on every sprite item. Just past the varible `$spacing: XXpx`

  $sprites:        sprite-map("icons/*.png", $spacing: 10px)
    $sprites_retina: sprite-map("icons-sprites/*.png", $spacing: 20px)

## Licence

Copyright (c) 2013 Restorando

MIT License

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
