import Darwin.C

import Router
import HTTP
import Epoch
import CHTTPParser
import CLibvenice

let server = Server(port: 8080, responder: router)
server.start()
