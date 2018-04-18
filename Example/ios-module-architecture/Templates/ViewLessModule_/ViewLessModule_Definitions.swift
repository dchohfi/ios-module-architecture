import ModuleArchitecture

// Builder object that configures the module and returns a coordinator.
// A module should always be instantiated via the createCoordinator method.
protocol ViewLessModule_ModuleType: Module {

    func createCoordinator() -> ViewLessModule_CoordinatorType
}

protocol ViewLessModule_CoordinatorType: Coordinator {
    
}

protocol ViewLessModule_PresenterType: Presenter {
    
    var delegate: ViewLessModule_PresenterDelegate? { get set }
}
