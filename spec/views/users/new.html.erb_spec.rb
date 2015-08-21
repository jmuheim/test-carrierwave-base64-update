require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :name => "MyString",
      :file_upload => "MyString",
      :string_upload => "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_name[name=?]", "user[name]"

      assert_select "input#user_file_upload[name=?]", "user[file_upload]"

      assert_select "input#user_string_upload[name=?]", "user[string_upload]"
    end
  end
end
