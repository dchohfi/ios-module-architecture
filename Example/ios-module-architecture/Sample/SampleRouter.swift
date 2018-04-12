import ModuleArchitecture

final class SampleRouter: SampleRouterType {
    
    private let presenter: SamplePresenterType
    let viewController: SampleViewControllerType
    
    private(set) var currentChild: Router?
    
    init(presenter: SamplePresenterType, viewController: SampleViewControllerType) {
        self.presenter = presenter
        self.viewController = viewController
    }
    
    func start() {
        self.presenter.start()
    }
}
