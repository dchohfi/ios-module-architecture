import ModuleArchitecture

// Builder object that configures the module and returns a coordinator.
// A module should always be instantiated via the createCoordinator method.
protocol ___VARIABLE_productName___ModuleType: ModuleType {

    func createCoordinator() -> ___VARIABLE_productName___CoordinatorType
}

protocol ___VARIABLE_productName___CoordinatorType: CoordinatorType {

    var viewController: ___VARIABLE_productName___ViewControllerType { get }
}

protocol ___VARIABLE_productName___PresenterType: PresenterType, ___VARIABLE_productName___ViewControllerDelegate {

    var delegate: ___VARIABLE_productName___PresenterDelegate? { get set }
}

protocol ___VARIABLE_productName___ViewControllerType: ViewControllerType {

    var delegate: ___VARIABLE_productName___ViewControllerDelegate? { get set }
}

protocol ___VARIABLE_productName___PresenterView: AnyObject {
    
    // This is the communication point from presenter to view controller.
    // You can change the name for something more contextual if needed.
    func render(configuration: ___VARIABLE_productName___Configuration)
}
