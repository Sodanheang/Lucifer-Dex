namespace :scrap_token do
  desc 'Whenever rake task test'
  task scrap: :environment do
    # url = "https://tools.cerestoken.io/#/tokens"
    # browser = Watir::Browser.new :chrome, headless: true
    # browser.goto(url)
    # Watir::Wait.until { browser.text.include? '(PSWAP)' }
    # tokens = []
    # tokens_html = browser.html.split('token-item-wrapper')

    # if tokens_html.count > 1
    #   # Remove Non-Use HTML tag before token part
    #   tokens_html.slice!(0)
    #   tokens_html.each do |token_html|
    #     wrapper = Nokogiri::HTML.parse(token_html)
    #     price = wrapper.css('span').first.children.first.text.strip
    #     name = wrapper.text.split("(").last.split(")").first
    #     image_url = wrapper.css('img').first.attributes["src"].text
    #     token = Token.new(name: name, price: price, icon: "#{image_url}")
    #     token.save!
    #   end
    # end
  end
end