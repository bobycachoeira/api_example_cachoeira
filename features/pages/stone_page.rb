class Stone
    include HTTParty
    
    debug_output $stdout

    base_uri ENVIRONMENT

    headers 'Content-Type' => 'application/json',
            'Accept' => 'application/json'
            
    def initialize(body)
        @body = {:body => body}
        @emptyBody = {}
    end
    
    def postProducts
        self.class.post('/products', @body)
    end
    
    def postProductSchema()
        return loadSchema("post_product_schema.json")
    end

    def getProducts
        self.class.get('/products', @emptyBody)
    end

    def getProductSchema()
        return loadSchema("get_products_schema.json")
    end

    def putProducts
        self.class.put("/products/#{$id}", @body)
    end

    def patchProducts
        self.class.patch("/products/#{$id}/inactivate", @emptyBody)
    end

    def postSales
        self.class.post('/sales', @body)
    end
    
    def postSalesSchema()
        return loadSchema("post_sales_schema.json")
    end

    def getSales
        self.class.get("/sales/#{$id}", @emptyBody)
    end

    def getSalesSchema()
        return loadSchema("get_sales_schema.json")
    end

    def getSummary
        self.class.get("/sales/summary?startDate=#{$startDate}&endDate=#{$endDate}&serialNumber=#{$serialNumber}", @emptyBody)
    end
    
    def getSummarySchema()
        return loadSchema("get_summary_schema.json")
    end
    
    def errorSchema()
        return loadSchema("error_schema.json")
    end
    
end
