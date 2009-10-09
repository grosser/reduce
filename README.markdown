Lossless reduction for js, css, jpg, png, gif 

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
 - uses YUI compressor to minify css/js

Author
======
Michael Grosser  
grosser.michael@gmail.com  
Hereby placed under public domain, do what you want, just do not hold me accountable...  