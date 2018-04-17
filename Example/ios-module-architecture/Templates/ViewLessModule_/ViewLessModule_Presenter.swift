import ModuleArchitecture

protocol ViewLessModule_PresenterDelegate: AnyObject {
    
}

final class ViewLessModule_Presenter: ViewLessModule_PresenterType {
    
    weak var delegate: ViewLessModule_PresenterDelegate?
    
    func start() {
        
    }
}
