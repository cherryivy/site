require 'spec_helper'

describe User do

  before do
    @user = User.new(name: "Jake", email: "jake@jakebladt.com", login: "jake") 
  end
  
  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:type) }
  it { should respond_to(:login) }
  it { should be_valid }

  describe "when name is not present" do
    before { @user.name = " " }
    it { should_not be_valid }
  end

end
