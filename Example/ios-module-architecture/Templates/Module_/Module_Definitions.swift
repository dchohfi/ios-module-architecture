import ModuleArchitecture

protocol Module_ModuleType: Module {
    func build() -> Module_RouterType
}

protocol Module_RouterType: Router {
    var viewController: Module_ViewControllerType { get }
}

protocol Module_PresenterType: Presenter, Module_ViewControllerDelegate {
    weak var listener: Module_Listenter? { get set }
}

protocol Module_ViewControllerType: ViewControllerType {
    weak var delegate: Module_ViewControllerDelegate? { get set }
}

protocol Module_View: View where ViewModelType == Module_ViewModel {
    
}
