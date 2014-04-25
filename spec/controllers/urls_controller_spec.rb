require 'spec_helper'

describe UrlsController do

  describe "GET the pages" do

    it "should allow access to root page" do 
      get :index
      response.should be_ok 
    end
    
  end

end
