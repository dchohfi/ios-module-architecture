public struct User {
    public let email: String
    public let password: String
    public let name: String

    public init(email: String, password: String, name: String) {
        
        self.email = email
        self.password = password
        self.name = name
    }

    public static var vini: User {
        return User(email: "vinicius.a.ro@gmail.com", password: "123321", name: "Vini")
    }
}
