# -*- coding: utf-8 -*-
require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "カミトバ。" }

  describe "Home page" do

    it "should have the content 'カミトバ。'" do
      visit '/static_pages/home'
      expect(page).to have_content('カミトバ。')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title}")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end
  
  describe "About page" do

    it "should have the content 'About Us'" do 
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} | About Us")
    end
  end
end
