require 'spec_helper'

describe User do

  before do
    @user = User.new(name: "Jake", email: "jake@jakebladt.com", login: "jake", role: "superuser ") 
  end
  
  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:role) }
  it { should respond_to(:login) }
end
