import ModuleArchitecture

final class Module_Router: Module_RouterType {
    private let presenter: Module_PresenterType
    let viewController: Module_ViewControllerType
    private(set) var children: [Router] = []
    
    init(presenter: Module_PresenterType, viewController: Module_ViewControllerType) {
        self.presenter = presenter
        self.viewController = viewController
    }
    
    func start() {
        self.presenter.start()
    }
    
    func stop() {
        self.presenter.stop()
    }
}
