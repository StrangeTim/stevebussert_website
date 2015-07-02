require 'rails_helper'

describe 'the add category path' do
  it 'adds a category to the index' do
    visit categories_path
    click_on 'Add a New Category'
    fill_in 'Name', :with => "Ruby"
    click_on "Create Category"
    expect(page).to have_content 'Ruby'
  end

  it "gives error when no name is entered" do
    visit new_category_path
    click_on 'Create Category'
    expect(page).to have_content 'errors'
  end
end

describe 'the show category path' do
  it 'displays the category on the show page' do
    visit categories_path
    click_on 'Add a New Category'
    fill_in 'Name', :with => "Ruby"
    click_on "Create Category"
    click_on "Ruby"
    expect(page).to have_content 'Ruby Related Code'
  end

  it 'edits the name of a category' do
    visit categories_path
    click_on 'Add a New Category'
    fill_in 'Name', :with => "Ruby"
    click_on "Create Category"
    click_on "Ruby"
    click_on "Edit Ruby"
    fill_in 'Name', :with => "FUN"
    click_on 'Update Category'
    click_on "FUN"
    expect(page).to have_content 'FUN Related Code'
  end

  it 'deletes the name of a Category' do
    visit categories_path
    click_on 'Add a New Category'
    fill_in 'Name', :with => "Ruby"
    click_on "Create Category"
    click_on "Ruby"
    click_on "Delete"
    # click_on "OK"
    expect(page).to have_content 'Index of Code Categories'
  end
end
