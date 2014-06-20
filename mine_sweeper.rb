# The coordinates for the mine.
# row_num, col_num # where the mine is

# How I look for diagonals
# row_num - 1, col_num - 1 # left most tile
# row_num + 1, col_num + 1 # right most tile

# How I increment each tile in a row once a mine is found.
# row - 1
#   col - 1
#   col
#   col + 1
# row
#   col - 1
#   col
#   col + 1
# row + 1
#   col - 1
#   col
#   col + 1

class MineSweeper
  attr_accessor :field

  def initialize(field)
    self.field = field
  end

  def increment_tile(row_num, col_num)
    field[row_num][col_num] += 1 if field[row_num][col_num] != "*"
  end

  def move_across_col(row_num, col_num)
    row = field[row_num]
    increment_tile(row_num, (col_num - 1)) if row[(col_num - 1)] && col_num > 0
    increment_tile(row_num, col_num) if row[col_num]
    increment_tile(row_num, (col_num + 1)) if row[(col_num + 1)]
  end

  def move_down_row(row_num, col_num)
    move_across_col((row_num - 1), col_num) if field[(row_num - 1)] && row_num > 0
    move_across_col(row_num, col_num) if field[row_num]
    move_across_col((row_num + 1), col_num) if field[(row_num + 1)]
  end
  

  def sweep_field
    field.each_with_index do |row, row_num|
      row.each_with_index do |tile, col_num|
        move_down_row(row_num, col_num) if tile == "*"
      end
    end
    field
  end
end 

