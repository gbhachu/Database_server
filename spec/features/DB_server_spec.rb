feature 'DB Server' do
  scenario 'Can run app and check page content' do
    visit '/'
    expect(page.status_code).to be(200)
  end

  context ' database initialized' do
      before do
        visit '/'
      end

  scenario 'Can accept query string on the /set path and store it in memory' do
    visit '/set?somekey=somevalue'
      expect(page).to have_content('You saved: {"somekey"=>"somevalue"}')
  end

  scenario 'Can visit the get request' do
      visit '/get'
      expect(page.status_code).to be(200)
    end

    it "returns the value stored in the key for a request on '/get?key=somekey' path" do
      visit '/set?somekey=somevalue'
      visit '/get?key=somekey'
      expect(page).to have_content("somevalue")
    end
  end
end
