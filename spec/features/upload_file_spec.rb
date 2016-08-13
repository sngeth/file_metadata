require "rails_helper"

RSpec.feature "Widget management", :type => :feature do
  scenario "User uploads a new file" do
    visit "/"

    attach_file("file", Rails.root + "spec/fixtures/file.pdf")
    click_button "Submit"
  end
end
