Lossless asset reduction for js, css, jpg, png, gif 

Install
=======
    install ruby + rubygems
    sudo gem install reduce

Usage
=====
    # from command line
    reduce -o files/xxx.jpg # overwrite the existing file with reduced version
    reduce files/input.js > files/input.min.js

    # from Ruby
    Reduce.reduce('files/bla.js','files/bla.min.js')
    OR
    reduced_data = Reduce.reduce('files/bla.js')

How does it work?
=================
 - uses web-based lossless image reduction service [Smush.it](http://smush.it) / [PunyPng](http://www.gracepointafterfive.com/punypng)
 - uses YUI compressor to minify css/js

Author
======
Michael Grosser  
grosser.michael@gmail.com  
Hereby placed under public domain, do what you want, just do not hold me accountable...  