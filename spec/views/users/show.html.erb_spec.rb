require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :name => "Name",
      :file_upload => "File Upload",
      :string_upload => "String Upload"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/File Upload/)
    expect(rendered).to match(/String Upload/)
  end
end
