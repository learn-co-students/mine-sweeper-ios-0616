require_relative "spec_helper"

describe MineSweeper do
  let(:unsweeped_field){
    [
      [0, 0, 0, 0, '*'],
      [0, 0, '*', 0, 0],
      [0, 0, 0, 0, 0],
      [0, '*', '*', 0, 0],
      [0, 0, 0, 0, '*']
    ]
  }
  let(:sweeped_field) { 
    [
      [0,  1,   1,  2, '*'],
      [0,  1,  '*', 2,  1],
      [1,  3,   3,  2,  0],
      [1, '*', '*', 2,  1],
      [1,  2,   2,  2, '*']
    ] 
  }
  let(:mine_sweeper_instance) { MineSweeper.new(unsweeped_field) }

  it "should increment the spaces" do
    expect(mine_sweeper_instance.sweep_field).to eq(sweeped_field)
  end

end


