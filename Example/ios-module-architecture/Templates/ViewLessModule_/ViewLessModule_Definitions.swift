import ModuleArchitecture

protocol ViewLessModule_ModuleType: Module {
    func build() -> ViewLessModule_RouterType
}

protocol ViewLessModule_RouterType: Router {
    
}

protocol ViewLessModule_PresenterType: Presenter {
    weak var listener: ViewLessModule_Listenter? { get set }
}
