require "rails_helper"

RSpec.feature "Widget management", :type => :feature do
  scenario "User uploads a new file" do
    visit "/"

    click_button "Choose File"
    attach_file("Upload Your File", Rails.root + "spec/fixtures/file.pdf")
    click_button "Submit"

    expect(page).to have_content(file_size)
  end
end
