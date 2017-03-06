feature 'DB Server' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page.status_code).to eq(200)
    expect(page).to have_content 'Hello Server!'
  end

  scenario 'Can visit the set request' do
    visit('/set?somekey=1')
    expect(page.status_code).to eq(200)
    expect(page).to have_content 'Hello again!'
  end

  scenario 'Can visit the get request' do
    visit('/get')
    expect(page.status_code).to eq(200)
    expect(page).to have_content 'We really need to stop meeting like this'
  end
end
