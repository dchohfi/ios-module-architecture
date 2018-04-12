import ModuleArchitecture

protocol Module_ModuleType: Module {
    func createRouter() -> Module_RouterType
}

protocol Module_RouterType: Router {
    var viewController: Module_ViewControllerType { get }
}

protocol Module_PresenterType: Presenter, Module_ViewControllerDelegate {
    var delegate: Module_PresenterDelegate? { get set }
}

protocol Module_ViewControllerType: ViewControllerType {
    var delegate: Module_ViewControllerDelegate? { get set }
}

protocol Module_View: View where ViewStateType == Module_ViewState {
    
}
