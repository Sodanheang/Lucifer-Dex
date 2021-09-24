class HomePageController < ApplicationController
  def index
    ceres_scrapper
  end

  private
  
  def ceres_scrapper
    url = "https://tools.cerestoken.io/#/tokens"
    browser = Watir::Browser.new :chrome, headless: true
    browser.goto(url)
    parsed_page = Nokogiri::HTML.parse(browser.html)
    binding.pry
  end
end
