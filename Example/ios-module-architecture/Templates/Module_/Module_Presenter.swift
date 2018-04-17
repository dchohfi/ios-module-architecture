import ModuleArchitecture

final class Module_Presenter: Module_PresenterType {
    
    weak var viewController: Module_View?
    weak var coordinator: Module_CoordinatorType?
    
    func start() {
        
    }
}

extension Module_Presenter: Module_ViewControllerDelegate {
    
}
