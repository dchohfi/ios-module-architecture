public protocol Router: AnyObject {
    var currentChild: Router? { get }
    func start()
}
