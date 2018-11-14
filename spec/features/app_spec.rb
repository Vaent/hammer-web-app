feature "homepage" do
  scenario "ask the user to provide their name" do
    visit '/'
    expect(page).to have_content "What is your name?"
  end
end
