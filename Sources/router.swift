import Router
import HTTP
import Sideburns

let router = Router { router in
	router.get("/users") { request in
		return try Response(status: .OK, templatePath:"Resources/template.html", templateData:"")
	}

	router.get("/users/:id") { request in
		let id = request.parameters["id"]
		print(id)
		return Response(status: .OK)
	}
}
