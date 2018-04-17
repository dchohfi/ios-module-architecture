public protocol Coordinator: AnyObject {
    var currentChild: Coordinator? { get }
    func start()
}
