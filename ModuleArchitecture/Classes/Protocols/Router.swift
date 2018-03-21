public protocol Router: class {
    var children: [Router] { get }
    func start()
    func stop()
}
