feature "homepage" do
  scenario "ask the user to provide their name" do
    visit '/'
    expect(page).to have_content "What is your name?"
  end

  scenario "provide a text input box" do
    visit '/'
    expect(page).to have_css "input[type='text']"
  end

  scenario "provide a button to submit the text" do
    visit '/'
    expect(page).to have_css "input[type='submit']"
  end
end
