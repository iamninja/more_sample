require 'spec_helper'

describe "Static pages" do
  subject { page }

  describe "Home page" do
    before {visit root_path}

    it { should have_content('Yada App') }
    it { should have_title('Yada App') }
    it { should_not have_title('- Home') }
  end

  describe "Help page" do
    before {visit help_path}

    it { should have_content('Help') }
    it { should have_title('Yada App - Help') }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('About Us') }
    it { should have_title('Yada App - About') }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title('Yada App - Contact') }
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_title('Yada App - About')
    click_link "Help"
    expect(page).to have_content('Help')
    click_link "Contact"
    expect(page).to have_content('Contact')
    click_link "Home"
    click_link "Sign up"
    expect(page).to have_content('Sign up')
    click_link "sample app"
    expect(page).to have_content('Yada')
  end
end
