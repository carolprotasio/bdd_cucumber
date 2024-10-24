#CENARIO 1
Quando('acesso a página principal da Starbugs') do
    @home.open 
end

Então('eu devo ver uma lista de cafés disponíveis') do    
    expect(@home.coffee_list.size).to be > 0
end
#CENARIO 2
Dado('que estou na página principal da Starbugs') do
    @home.open
end

Dado('que desejo comprar o seguinte produto:') do |table|
    # @product_name = table.rows_hash[:product]
    # @product_price = table.rows_hash[:price]
    # @delivery_price = table.rows_hash[:delivery]
    @product = table.rows_hash
end

Quando('inicio a compra desse item') do
    @home.buy(@product[:name])    
end

Então('devo ver a página de Checkout com os detalhes do produto') do
   @checkout.assert_produts_details(@product)
end

Então('o valor total da compra deve ser de {string}') do |total_price|
    @checkout.assert_total_price(total_price)
end
#CENARIO 3

Então('devo ver um popup informando que o produto está indisponível') do
    text = 'Produto indisponível'
    @popup.have_text(text)
end