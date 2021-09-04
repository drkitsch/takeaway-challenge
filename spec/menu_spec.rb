require './lib/menu.rb'

describe Menu do 

subject(:menu) { described_class.new(dishes) }

  let(:dishes) do 
    {
      steak: 3.99,
      lamb: 4.99
    }
  end 
  
  it "has a list of dishes with prices" do 
    expect(menu.dishes).to eq(dishes)
  end 

  it "prints a list of dishes with prices" do
    printed_menu = "Steak £3.99, Lamb £4.99"
    expect(menu.print).to eq(printed_menu)
  end 


end 
