import ModuleArchitecture

// Builder object that configures the module and returns a coordinator.
// A module should always be instantiated via the createCoordinator method.
protocol ViewLessModule_ModuleType: ModuleType {

    func createCoordinator() -> ViewLessModule_CoordinatorType
}

protocol ViewLessModule_CoordinatorType: CoordinatorType {
    
}

protocol ViewLessModule_PresenterType: PresenterType {
    
    var delegate: ViewLessModule_PresenterDelegate? { get set }
}
