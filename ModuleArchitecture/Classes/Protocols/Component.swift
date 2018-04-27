public protocol Component: AnyObject {
    
    associatedtype Configuration
    func render(configuration: Configuration)
}
