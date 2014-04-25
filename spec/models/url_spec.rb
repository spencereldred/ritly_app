require 'spec_helper'

describe Url do
  before(:each) do   
    @url = Url.create(link: 'http://www.sfgate.com')
  end
  
  it "should have a link" do  
    expect(@url.link).to eq('http://www.sfgate.com')
  end

  it "should have a non empty hash_code" do
    expect(@url.hash_code).not_to eq("")  
  end

  it "should validate presence of link" do  
    expect(@new_url = Url.new).not_to be_valid
  end

  it "should validate minimum length for link" do 
    expect(Url.create(link: 'ww')).not_to be_valid
  end

  it "should validate minimum length for link" do
    expect(Url.create(link: 'w' * 55)).not_to be_valid
  end

  it "takes two parameters and returns a Shelter object" do
    expect(@url).to be_an_instance_of(Url)
  end

  
end
