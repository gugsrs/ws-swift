import Core

import Router
import HTTP
import Sideburns

let router = Router { route in
	route.get("/users") { request in
		return try Response(status: .OK, templatePath:"Resources/templates/index.html", templateData:"")
	}

	route.get("/users/:id") { request in
		let id = request.parameters["id"]
		return Response(status: .OK, json: JSON.from(id!))
	}

    let staticFiles = FileResponder(basePath: "Resources/static/")
    route.fallback(staticFiles)
}
