feature 'DB Server' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Hello Server!'
  end
end
