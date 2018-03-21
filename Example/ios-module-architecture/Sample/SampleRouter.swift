import ModuleArchitecture

final class SampleRouter: SampleRouterType {
    private let presenter: SamplePresenterType
    let viewController: SampleViewControllerType
    private(set) var children: [Router] = []
    
    init(presenter: SamplePresenterType, viewController: SampleViewControllerType) {
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
