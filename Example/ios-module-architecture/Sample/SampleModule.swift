import ModuleArchitecture

final class SampleModule: Module, SampleModuleType {
    
    func createCoordinator() -> SampleCoordinatorType {
        
        let presenter = SamplePresenter()
        let viewController = SampleViewController()
        let coordinator = SampleCoordinator(presenter: presenter, viewController: viewController)
        viewController.delegate = presenter
        presenter.viewController = viewController
        presenter.delegate = coordinator
        return coordinator
    }
}
