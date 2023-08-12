import NIOSSL
import Fluent
import FluentMySQLDriver
import Vapor

public func configure(_ app: Application) async throws {
    
    // MARK: - Configure Database
    
    configureLocalDatabase(using: app)
    
    // MARK: - Register Routes
    
    try CompositionRoute.routes(using: app)
    
}

private func configureLocalDatabase(using app: Application) {
    var tls = TLSConfiguration.makeClientConfiguration()
    tls.certificateVerification = .none
    let databaseConfig = DatabaseConfigurationFactory.mysql(
        hostname: "localhost",
        username: "root",
        password: "",
        database: "sprinter",
        tlsConfiguration: tls
    )
    app.databases.use(databaseConfig, as: .mysql)
}

