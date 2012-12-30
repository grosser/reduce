Lossless reduction for js, css, html, xml, jpg, png, gif

Install
=======
    install ruby + rubygems
    sudo gem install reduce

Usage
=====
    reduce -o public/image.gif
    reduce public/javascripts/application.js > public/javascripts/application.min.js

Options
=======
    -o, --overwrite                  overwrite file
    -v, --version                    Show Version
    -h, --help                       Show this.

Ruby
====
    reduced_data = Reduce.reduce('files/bla.js')

How does it work?
=================
 - uses web-based lossless image reduction service [Smush.it](http://smush.it) / [PunyPng](http://www.gracepointafterfive.com/punypng) through [smusher](http://github.com/grosser/smusher)
 - uses [YUI compressor](https://developer.yahoo.com/yui/compressor/) to minify css/js
 - uses [htmlcompressor](https://code.google.com/p/htmlcompressor/) to minify html/xml

Author
======
Michael Grosser<br/>
grosser.michael@gmail.com<br/>
License: MIT
