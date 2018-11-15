def enter_name
  visit '/'
  fill_in 'name', with: "My name"
  click_button "Go"
end
