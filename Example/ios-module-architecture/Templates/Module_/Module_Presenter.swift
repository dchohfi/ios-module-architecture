import ModuleArchitecture

protocol Module_PresenterDelegate: AnyObject {
    
}

final class Module_Presenter<View: Module_View>: Module_PresenterType {
    
    weak var delegate: Module_PresenterDelegate?
    weak var view: View?
    weak var router: Module_RouterType?
    
    func start() {
        
    }
}

extension Module_Presenter: Module_ViewControllerDelegate {
    
}
