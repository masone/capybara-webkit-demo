Given /^I click the login button$/ do
  visit root_path
end

When /^I sign in via Facebook$/ do
  click_link 'Login'

  within_window(page.driver.window_handles.last) do
    # ensure the popup has loaded
    page.current_url
  end

  within_window('Log In | Facebook') do
    fill_in 'Email', :with => 'test_xmefjnz_user@tfbnw.net'
    fill_in 'Password', :with => '1292562059'
    click_button 'Log In'
  end
end

Then /^I should see my name$/ do
  find('#me').should have_content('Test User')
end

When /^I post to my wall/ do
  click_link 'Post'
end

When /^I send a request/ do
  click_link 'Request'
end

Then /^I should not get an error$/ do
  within_window(page.driver.window_handles.last) do
    # ensure the popup has loaded
    page.current_url

    page.should_not have_content('An error occurred')
  end
end