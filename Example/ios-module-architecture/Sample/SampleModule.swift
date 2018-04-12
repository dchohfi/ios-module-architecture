import ModuleArchitecture

final class SampleModule: SampleModuleType {
    
    func createRouter() -> SampleRouterType {
        let presenter = SamplePresenter<SampleViewController>()
        let viewController = SampleViewController()
        let router = SampleRouter(presenter: presenter, viewController: viewController)
        viewController.delegate = presenter
        presenter.view = viewController
        presenter.router = router
        return router
    }
}
