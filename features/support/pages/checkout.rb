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

  def find_zipcode(zipcode)
    find('input[name=cep]').set(zipcode)
    click_on 'Buscar CEP'
  end

  def fill_address(address)
    find('input[name=number]').set(address[:number])
    find('input[name=complement]').set(address[:details])

  end

  def choice_payment(payment_type)
    find('label div', text: payment_type.upcase).click
  end

  def submit
    click_on 'Confirmar pedido'  
  end

end