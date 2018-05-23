import ModuleArchitecture

final class Module_Module: Module, Module_ModuleType {

    func createCoordinator() -> Module_CoordinatorType {

        let presenter = Module_Presenter()
        let viewController = Module_ViewController()
        let coordinator = Module_Coordinator(presenter: presenter, viewController: viewController)
        viewController.delegate = presenter
        presenter.viewController = viewController
        presenter.delegate = coordinator
        return coordinator
    }
}
