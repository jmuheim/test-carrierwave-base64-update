require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :name => "MyString",
      :file_upload => "MyString",
      :string_upload => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_name[name=?]", "user[name]"

      assert_select "input#user_file_upload[name=?]", "user[file_upload]"

      assert_select "input#user_string_upload[name=?]", "user[string_upload]"
    end
  end
end
