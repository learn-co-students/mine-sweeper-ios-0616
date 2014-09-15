---
tags: recursion, todo
languages: ruby
resources: 2
level: intermediate
---

# Mine Sweeper

## Background

Arel accidently placed mines around the campus.  What can we say? Mistakes were made. Luckily he mapped out the spots where he placed them in a two dimensional array.

Arel's Map
```ruby
[
  [0,  0,   0,  0, '*'],
  [0,  0,  '*', 0,  0 ],
  [0,  0,   0,  0,  0 ],
  [0, '*', '*', 0,  0 ],
  [0,  0,   0,  0, '*']
]
```

## Instructions

Before we can begin defusing the mines we need to figure out the most dangerous spots.  What we need you to do is to come up with a way to increment every tile that is one move away from each mine. So there at most 8 tiles affected by each mine.

This is going to mean moving through each row on the map until you find a mine and then incrementing all the surrounding tiles by one.  Keep in mind (or should we say "mine"???) (I'm sorry for that) that this is going to need to happen one row at a time, and a row isn't finished until every affected tile is incremented.

## Resources
* [Odin Project](http://www.theodinproject.com/) - [Recusion](http://www.theodinproject.com/ruby-programming/recursive-methods)
* [Joshua Creek's Ruby Kickstart](http://vimeo.com/user3374111/videos) - [Introduction to Recusion](http://vimeo.com/24716767)
