import ModuleArchitecture

final class Module_Module: Module_ModuleType {
    func build() -> Module_RouterType {
        let presenter = Module_Presenter<Module_ViewController>()
        let viewController = Module_ViewController()
        let router = Module_Router(presenter: presenter, viewController: viewController)
        viewController.delegate = presenter
        presenter.view = viewController
        presenter.router = router
        return router
    }
}
