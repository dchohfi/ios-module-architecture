import ModuleArchitecture

protocol ViewLessModule_Listenter: class {
    
}

final class ViewLessModule_Presenter: ViewLessModule_PresenterType {
    weak var listener: ViewLessModule_Listenter?
    weak var router: ViewLessModule_RouterType?
    
    func start() {
        
    }
    
    func stop() {
        
    }
}
