require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :name => "Name",
        :file_upload => "File Upload",
        :string_upload => "String Upload"
      ),
      User.create!(
        :name => "Name",
        :file_upload => "File Upload",
        :string_upload => "String Upload"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "File Upload".to_s, :count => 2
    assert_select "tr>td", :text => "String Upload".to_s, :count => 2
  end
end
