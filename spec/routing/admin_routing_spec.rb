require "rspec"

describe "AdminController" do
  describe "routing" do
    it " routes to admin" do
      assert_generates '/admin', :controller => 'admin', :action => 'default'
    end
    end
end