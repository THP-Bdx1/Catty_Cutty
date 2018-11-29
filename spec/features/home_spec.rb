require 'rails_helper'

RSpec.feature "Homes", type: :feature do
context 'view page' do
    scenario 'should be logged' do
    visit '/'
      click_button "Connexion"
      within('.modal2 form') do
      fill_in 'Email', with: 'thpbordeaux@gmail.com'
      fill_in 'Password', with: '123456'
      end
      click_button "Log in"
    end

    scenario 'class nav exist' do
      visit '/'
      find('.amado-nav')
  end
    scenario 'instagram icon should exist' do
      visit '/'
      find('.fa-instagram')
    end
end

    scenario 'should add to cart' do
    visit '/'
      click_button "Connexion"
      within('.modal2 form') do
      fill_in 'Email', with: 'thpbordeaux@gmail.com'
      fill_in 'Password', with: '123456'
      end
      click_button "Log in"
      visit '/'
      # find("#iciman .single-products-catagory:nth-child(1)")
    end


end
