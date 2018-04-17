import ModuleArchitecture

// Builder object that configures the module and returns a coordinator.
// A module should always be instantiated via the createCoordinator method.
protocol ___VARIABLE_productName___ModuleType: Module {
    func createCoordinator() -> ___VARIABLE_productName___CoordinatorType
}

protocol ___VARIABLE_productName___CoordinatorType: Coordinator {
    
}

protocol ___VARIABLE_productName___PresenterType: Presenter {
    var delegate: ___VARIABLE_productName___PresenterDelegate? { get set }
}
