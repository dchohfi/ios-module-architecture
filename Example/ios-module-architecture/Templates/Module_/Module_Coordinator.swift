import ModuleArchitecture

final class Module_Coordinator: Module_CoordinatorType {
    
    let viewController: Module_ViewControllerType
    private let presenter: Module_PresenterType
    
    private(set) var currentChild: Coordinator?
    
    init(presenter: Module_PresenterType, viewController: Module_ViewControllerType) {
        self.presenter = presenter
        self.viewController = viewController
    }
    
    func start() {
        self.presenter.start()
    }
}

extension Module_Coordinator: Module_PresenterDelegate {
    
}
