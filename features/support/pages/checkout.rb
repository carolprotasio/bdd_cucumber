require 'rspec'

class CheckoutPage
  include Capybara::DSL
  include RSpec::Matchers

  def assert_produts_details(product)
    product_title = find('.item-details h1')
    expect(product_title.text).to eql product[:name]

    product_price = find('.sub-price')
    expect(product_price.text).to eql product[:price]

    delivery_price = find('.delivery-price')     
    expect(delivery_price.text).to eql product[:delivery]

  end

  def assert_total_price(total_price)
    price = find('.total-price')
    expect(price.text).to eql(total_price)
  end



end