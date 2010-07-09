require File.expand_path(File.dirname(__FILE__) + "/../../spec_helper")

describe Searchlogic::NamedScopes::OrConditions do
  it "should define a scope by the exact same name as requested by the code" do
    u = User.create(:username => 'Test')
    User.name_or_username_like('Test').count.should.eql? 1
  end

  it "should define a scope by the exact same name as requested by the code" do
    User.create(:username => 'Pepe')
    User.name_or_username_like('Test').count.should.eql? 0
  end
end