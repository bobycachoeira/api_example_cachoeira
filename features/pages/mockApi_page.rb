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
    
end
