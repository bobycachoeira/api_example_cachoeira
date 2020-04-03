Então("eu devo receber o status code {int}") do |statusCode|
    expect(@request.code).to eq(statusCode)
end