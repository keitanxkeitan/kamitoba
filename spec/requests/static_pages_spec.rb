# -*- coding: utf-8 -*-
require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'カミトバ。'" do
      visit '/static_pages/home'
      expect(page).to have_content('カミトバ。')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("カミトバ。 | Home")
    end
  end
  
  describe "About page" do

    it "should have the content 'About Us'" do 
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("カミトバ。 | About Us")
    end
  end
end
