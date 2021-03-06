# -*- coding: utf-8 -*-
require 'spec_helper'

describe "Static pages" do
  
  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('カミトバ。') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end
  
  describe "About page" do
    before { visit about_path }
    
    it { should have_content('About Us') }
    it { should have_title(full_title('About Us')) }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }
  end
end
