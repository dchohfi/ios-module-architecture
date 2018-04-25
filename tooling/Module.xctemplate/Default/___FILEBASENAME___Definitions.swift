import ModuleArchitecture

// Builder object that configures the module and returns a coordinator.
// A module should always be instantiated via the createCoordinator method.
protocol ___VARIABLE_productName___ModuleType: ModuleType {

    func createCoordinator() -> ___VARIABLE_productName___CoordinatorType
}

protocol ___VARIABLE_productName___CoordinatorType: CoordinatorType {
    
}

protocol ___VARIABLE_productName___PresenterType: PresenterType {
    
    var delegate: ___VARIABLE_productName___PresenterDelegate? { get set }
}
