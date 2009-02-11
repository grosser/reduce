Problem
=======
 - javascript / stylesheets minification is complicated
 - lossless image reduction requires endless libaries

Solution
========
 - ALL IN ONE reduction simple as pie!

Install
=======
    install ruby + rubygems + curl
    sudo gem install grosser-smusher grosser-reduce -s http://gems.github.com/

Usage
=====
    #with JS + CSS + JPG + PNG + GIF
    #in ruby
    Reduce.reduce('files/bla.js','files/bla.min.js')

    #from command line
    reduce files/input.js > files/input.min.js

Author
======
Michael Grosser  
grosser.michael@gmail.com  
Hereby placed under public domain, do what you want, just do not hold me accountable...  