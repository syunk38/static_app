require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "'Static App'が表示されているかを確認するテスト" do
      visit '/static_pages/home'
      expect(page).to have_content('Static App')
    end

    it "悟空が挨拶してるか確認するテスト" do
      visit '/static_pages/home'
      expect(page).to have_content('オッス！オラ悟空！')
    end

    it "正しいタイトルを表示しているか確認するテスト" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Static App | Home")
    end
  end

  describe "Help page" do

    it "'Help'が表示されているかを確認するテスト" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
  end

  describe "About page" do
    it "'About us'が表示されているかを確認するテスト"do
      visit '/static_pages/about'
      expect(page).to have_content('About us')
    end
  end

end
