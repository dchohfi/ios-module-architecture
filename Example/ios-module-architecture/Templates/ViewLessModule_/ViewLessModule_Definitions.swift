import ModuleArchitecture

protocol ViewLessModule_ModuleType: Module {
    func createRouter() -> ViewLessModule_RouterType
}

protocol ViewLessModule_RouterType: Router {
    
}

protocol ViewLessModule_PresenterType: Presenter {
    var delegate: ViewLessModule_PresenterDelegate? { get set }
}
