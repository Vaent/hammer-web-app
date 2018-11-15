feature "use the name provided" do
  scenario "display a message with the name" do
    enter_name
    click_button "Hammertime"
    expect(page).to have_content "My name"
  end

  scenario "use default text if nothing entered" do
    visit '/'
    click_button "Go"
    click_button "Hammertime"
    expect(page).to have_content "Nails"
  end

  scenario "include an animated gif" do
    enter_name
    click_button "Hammertime"
    gif_ref = "//img[contains(@src, 'animated-hammer-image-0014.gif')]"
    expect(page).to have_xpath gif_ref
  end
end
