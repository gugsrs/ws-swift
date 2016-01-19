import Core

import Router
import HTTP
import Sideburns

let router = Router { router in
	router.get("/users") { request in
		return try Response(status: .OK, templatePath:"Resources/template.html", templateData:"")
	}

	router.get("/users/:id") { request in
		let id = request.parameters["id"]
		return Response(status: .OK, json: JSON.from(id!))
	}
}
