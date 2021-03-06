import Vapor

let drop = Droplet()

drop.get { req in
    return try drop.view.make("welcome", [
    	"message": drop.localization[req.lang, "welcome", "title"]
    ])
}

drop.get("ciao", String.self) { req, name in
    
    return "Hi \(name)!"
    
}

drop.resource("posts", PostController())

drop.run()
