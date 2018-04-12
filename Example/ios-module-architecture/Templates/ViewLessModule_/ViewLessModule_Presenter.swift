import ModuleArchitecture

protocol ViewLessModule_PresenterDelegate: AnyObject {
    
}

final class ViewLessModule_Presenter: ViewLessModule_PresenterType {
    
    weak var delegate: ViewLessModule_PresenterDelegate?
    weak var router: ViewLessModule_RouterType?
    
    func start() {
        
    }
}
