feature "homepage" do
  scenario "it displays a message" do
    visit '/'
    expect(page).to have_content "Hello app"
  end
end
