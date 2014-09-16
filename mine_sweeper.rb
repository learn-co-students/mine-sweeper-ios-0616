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
  attr_accessor :field, :mines_coor

  def initialize(field)
    self.field = field
    self.mines_coor = []
  end

  def find_mines
    field.each_with_index do |row, row_i|
      row.each_with_index do |col, col_i|
        mines_coor << [row_i, col_i] if col == "*"
      end
    end
  end

  def increment_tiles
    mines_coor.each do |coor|
      [-1, 0, 1].each do |row_num|
        [-1, 0, 1].each do |col_num|
          row = coor[0] + row_num if coor[0] + row_num != -1
          col = coor[1] + col_num if coor[1] + col_num != -1

          if row && col && field[row] && field[row][col] && field[row][col] != "*"
            field[row][col] += 1
          end
          
        end
      end
    end
  end

  def sweep_field
    find_mines
    increment_tiles
    field
  end
end

