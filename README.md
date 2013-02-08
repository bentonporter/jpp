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
    Usage: jsonpp [options] file
        -s, --sort                       Sort json alphabetically by key
        -v, --version                    Show version


Install
-------

You currently have to clone the repo and build/install the gem. 

    git clone git@github.com:bentonporter/jpp.git
    gem build jpp.gemspec && gem install jpp-0.1.gem


Todos
-----
- Push gem to RubyGems



