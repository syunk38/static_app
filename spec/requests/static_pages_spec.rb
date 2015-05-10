require 'spec_helper'

describe "Static pages" do

  let(:base_title) {"Ruby on Rails Tutorial Static App |"}

  describe "Home page" do
    let(:title) {"Home"}
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
      expect(page).to have_title("#{base_title} #{title}")
    end
  end

  describe "Help page" do
    let(:title) {"Help"}
    it "'Help'が表示されているかを確認するテスト" do
      visit '/static_pages/help'
      expect(page).to have_content("#{title}")
    end

    it "正しいタイトルを表示しているか確認するテスト" do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} #{title}")
    end
  end

  describe "About page" do
    let(:title) {"About us"}
    it "'About us'が表示されているかを確認するテスト"do
      visit '/static_pages/about'
      expect(page).to have_content("#{title}")
    end

    it "正しいタイトルを表示しているか確認するテスト" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} #{title}")
    end
  end

  describe "Contact page" do
    let(:title) {"Contact"}
    it "Contactが表示されているかを確認するテスト"do
    visit '/static_pages/contact'
    expect(page).to have_content("#{title}")
    end

    it "正しいタイトルを表示しているか確認するテスト" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} #{title}")
    end
  end

end
