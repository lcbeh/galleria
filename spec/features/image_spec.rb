require 'rails_helper'

RSpec.feature "Image" do
  scenario "user can upload a new image" do
    visit new_image_path
    fill_in "image_title", with: "By the sea"
    fill_in "image_category", with: "Places"
    fill_in "image_description", with: "Cool and isolated place to chill"
    attach_file "image_avatar", "./spec/fixtures/files/fantasy.jpg"
    click_button "Create Image"
    expect(page).to have_content("Image uploaded successfully")
    expect(page).to have_content("Places")
  end
end
