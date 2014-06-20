---
tags: Recursion
languages: Ruby
resources: 0
level: Intermediate
---

## Mine Sweeper
Arel accidenlty placed mines around the campus.  What can we say? Mistakes were made.  Luckily he mapped out the spots where he placed them in a two dimensional array.

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

Before we can begin defusing the mines we need to figure out the most dangerou spots.  What we need you to do is to come up with a way to increment every tile that is one move away from each mine.  So there at most 8 tiles affected by each mine.

This is going to mean moving through each row on the map until you find a mine and then incrementing all the surrounding tiles by one.  Keep in mind that this is going to need to happen one row at a time, and a row isn't finished until every affected tile is incremented.