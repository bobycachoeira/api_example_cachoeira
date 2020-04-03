Quando("eu executar o get product") do
    @request = Stone.new(@body).getProducts
end

Então("um body contendo os dados dos produto") do
    @request.each do |item|
        puts item.to_json
    end

    @schema = Stone.new(@body).getProductSchema

    begin
        res = JSON::Validator.validate!(JSON.parse(@schema), @request.body)
    rescue JSON::Schema::ValidationError => e
        fail(e.message)
    end
end

Dado("que eu tenha cities cadastradas") do
    
end
  
Quando("eu executar o get all cities") do
    @request = Stone.new(@body).getCities
end
  
Quando("eu executar a requisição get cit by id {string}") do |idCity|
    @request = Stone.new(@body).getCityByID(idCity)
end