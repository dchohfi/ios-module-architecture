import ModuleArchitecture

protocol ___VARIABLE_productName___ModuleType: Module {
    func createCoordinator() -> ___VARIABLE_productName___CoordinatorType
}

protocol ___VARIABLE_productName___CoordinatorType: Coordinator {
    var viewController: ___VARIABLE_productName___ViewControllerType { get }
}

protocol ___VARIABLE_productName___PresenterType: Presenter, ___VARIABLE_productName___ViewControllerDelegate {

}

protocol ___VARIABLE_productName___ViewControllerDelegate: AnyObject {
    
}

protocol ___VARIABLE_productName___ViewControllerType: ViewControllerType {
    var delegate: ___VARIABLE_productName___ViewControllerDelegate? { get set }
}

protocol ___VARIABLE_productName___View: AnyObject {
    
    // This is the entry point for communication between view controllers and presenters
    // You can change the name for something more contextual if needed.
    func render(configuration: ___VARIABLE_productName___Configuration)
}
