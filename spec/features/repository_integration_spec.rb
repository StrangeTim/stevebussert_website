require 'rails_helper'

describe 'the add repository path' do
  it 'adds a repository to the index' do
    visit categories_path
    click_on 'Add a New Category'
    fill_in 'Name', :with => "Ruby"
    click_on "Create Category"
    click_on 'Ruby'
    click_on 'Add Repository'
    fill_in 'Repo name', :with => "Scrabble"
    fill_in 'Repo url', :with => "http://www.github.com.strangetim/scrabble"
    fill_in 'Description', :with => "Scrabble board game"
    click_on 'Create Repository'
    expect(page).to have_content 'Scrabble'
    expect(page).to have_content 'Ruby'
  end

  it "gives error when no name is entered" do
    visit categories_path
    click_on 'Add a New Category'
    fill_in 'Name', :with => "Ruby"
    click_on "Create Category"
    click_on 'Ruby'
    click_on 'Add Repository'
    click_on 'Create Repository'
    expect(page).to have_content 'errors'
  end
end
