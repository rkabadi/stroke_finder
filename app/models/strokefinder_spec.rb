require './player.rb'

describe Player do
  before do
    @p = Player.new
  end

  it 'is empty when created' do
    @p.all.should == {}
  end

end
