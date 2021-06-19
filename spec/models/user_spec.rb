require 'rails_helper'

RSpec.describe "Users", type: :model do
  describe "Teste Model" do
	it 'have_attributes' do
		user = User.new
		user.nickname = "Chronos"
		user.kind="wizard"
    user.level=18
	expect(user).to have_attributes(nickname: 'Chronos', kind: "wizard", level: ((be>0)and(be<100)))
	end
  it "returns the correct hero title" do
    user = User.new
		user.nickname = "Chronos"
		user.kind="wizard"
    user.level=1
	  expect(user.title).to eq('wizard Chronos #1') 
  end
  end
end
