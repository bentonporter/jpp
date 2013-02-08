jpp
===

**A command-line JSON pretty printer.**

Usage
-----

Pretty-print responses from web services:

    curl https://api.github.com/users/octocat | jpp

Or pretty-print JSON from a file:

    jpp file.json
    
More usage:

    >> jpp -h                                                                                                                                    benton.porter@bhollis-mbpro
    Usage: jpp [options] file
        -s, --sort                       Sort json alphabetically by key
        -v, --version                    Show version


Install
-------

    gem install jpp
    
    
Contribute
----------

To build and run locally:

    git clone git@github.com:bentonporter/jpp.git
    cd jpp
    gem build jpp.gemspec && gem install jpp-1.1.0.gem
