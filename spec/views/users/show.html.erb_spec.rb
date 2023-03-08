require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    assign(:user, User.create!(
      first_name: "First Name",
      last_name: "Last Name"
    ))
    assign(:book, Book.create!(
      title: 'Some Book'
    ))
  end

  it "renders attributes in <p>" do
    puts "user #{@user.to_json}"
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
  end

end
