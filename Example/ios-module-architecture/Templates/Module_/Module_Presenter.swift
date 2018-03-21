import ModuleArchitecture

protocol Module_Listenter: class {
    
}

final class Module_Presenter<View: Module_View>: Module_PresenterType {
    weak var listener: Module_Listenter?
    weak var view: View?
    weak var router: Module_RouterType?
    
    func start() {
        
    }
    
    func stop() {
        
    }
}

extension Module_Presenter: Module_ViewControllerDelegate {
    
}
