import NIOSSL
import Fluent
import FluentMySQLDriver
import Leaf
import Vapor

// configures your application
public func configure(_ app: Application) async throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))

    var tls = TLSConfiguration.makeClientConfiguration()
    tls.certificateVerification = .none

    app.databases.use(.mysql(
        hostname: "localhost",
        username: "vapor",
        password: "vapor",
        database: "vapor",
        tlsConfiguration: tls
    ), as: .mysql)

    app.views.use(.leaf)

    
    // register routes
    try CompositionRoute.routes(using: app)
    
}

