describe "mine_sweeper" do
  
  let(:unsweeped_fieled){
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
      [0, 1, 1, 1, '*'],
      [0, 1, '*', 1, 1],
      [1, 3, 3, 2, 0],
      [1, '*', '*', 2, 1],
      [1, 2, 2, 2, '*']
    ] 
  }

  it "should increment the spaces" do
    expect(mine_sweeper(unsweeped_fieled)).to eql(sweeped_field)
  end

end


