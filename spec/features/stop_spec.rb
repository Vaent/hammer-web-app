feature "stop" do
  scenario "it displays a 'stop' message" do
    enter_name
    expect(page).to have_content "Stop!"
  end
end
