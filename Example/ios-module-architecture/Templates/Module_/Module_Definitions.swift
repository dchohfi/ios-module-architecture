import ModuleArchitecture

protocol Module_ModuleType: Module {
    func createCoordinator() -> Module_CoordinatorType
}

protocol Module_CoordinatorType: Coordinator {
    var viewController: Module_ViewControllerType { get }
}

protocol Module_PresenterType: Presenter, Module_ViewControllerDelegate {

}

protocol Module_ViewControllerDelegate: AnyObject {
    
}

protocol Module_ViewControllerType: ViewControllerType {
    var delegate: Module_ViewControllerDelegate? { get set }
}

protocol Module_View: AnyObject {
    
    // This is the entry point for communication between view controllers and presenters
    // You can change the name for something more contextual if needed.
    func render(configuration: Module_Configuration)
}
