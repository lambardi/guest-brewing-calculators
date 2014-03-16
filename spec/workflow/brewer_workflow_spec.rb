require 'spec_helper'

describe 'using various calculators', type: :feature do
  it 'should visit the abv page, fill out the form, and get an abv' do
    visit abv_calculator_path
    expect(page).to have_content 'ABV Calculator'
    expect(page).to have_content 'OG:'
    expect(page).to have_content 'FG:'
    fill_in 'abv_og', with: '1.05'
    fill_in 'abv_fg', with: '1.01'
    click_on 'Calculate ABV'
    expect(page).to have_content '5.339411100495098'
    expect(page).to have_content 'Original Gravity:'
    expect(page).to have_content 'Final Gravity:'
  end
end
