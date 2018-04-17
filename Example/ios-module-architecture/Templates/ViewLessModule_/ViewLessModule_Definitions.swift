import ModuleArchitecture

protocol ViewLessModule_ModuleType: Module {
    func createCoordinator() -> ViewLessModule_CoordinatorType
}

protocol ViewLessModule_CoordinatorType: Coordinator {
    
}

protocol ViewLessModule_PresenterType: Presenter {
    
}
