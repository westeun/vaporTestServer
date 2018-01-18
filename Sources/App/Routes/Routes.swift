import Vapor

extension Droplet {
    func setupRoutes() throws {
        get("hello") { req in
            var json = JSON()
            try json.set("hello", "world")
            return json
        }

        get("plaintext") { req in
            return "Hello, world!"
        }
        
        get("creator") { req in
            return "My name is Wesley Teunissen"
        }
        
        get("swift") { req in
            return "Swift is amazing!"
        }

        get("mitch") { req in
            return "Borbatov is een wijze man"
        }
        
        get("bae") { req in
            return "Patricia is my Bae <3 Forever and always <3"
        }
        
        // response to requests to /info domain
        // with a description of the request
        get("info") { req in
            return req.description
        }

        get("description") { req in return req.description }
        
        try resource("posts", PostController.self)
    }
}
