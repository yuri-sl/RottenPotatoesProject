Given /I am on the index page/ do
  visit('/movies')
end
When /I click the add Movie button/ do
  click_link('Add Movie')
end

Then /I should be redirected to new movie page/ do
  expect(current_path).to eq('/movies/new')
end

And /I should input data into the form fields/ do
  fill_in 'Title',        with: 'The Godfather'
  select 'R — Restricted',from: 'Rating'
  fill_in 'Release date', with: '1972-03-24'
  fill_in 'Description',  with: 'An organized crime dynasty'
end

And /I should press the Create Movie button/ do
  click_button 'Create Movie'
end

And /I should be redirected to index page/ do
  visit('/movies')
end