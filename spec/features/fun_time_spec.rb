feature "use the name provided" do
  scenario "display a message with the name" do
    visit '/'
    fill_in 'name', with: "My name"
    click_button "Go!"
    expect(page).to have_content "Hello My name"
  end
end
