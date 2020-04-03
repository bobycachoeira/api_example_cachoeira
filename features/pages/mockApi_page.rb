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
    
    def getUsers
        self.class.get('/users', @emptyBody)
    end

    def getUsersByID(idUser)
        self.class.get('/users/'+idUser, @emptyBody)
    end

    def getCities
        self.class.get('/city', @emptyBody)
    end

    def getCityByID(idCity)
        self.class.get('/city/'+idCity, @emptyBody)
    end
    
end
