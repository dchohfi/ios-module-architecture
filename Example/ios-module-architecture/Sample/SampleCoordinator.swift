import ModuleArchitecture

final class SampleCoordinator: SampleCoordinatorType {
    
    let viewController: SampleViewControllerType
    private let presenter: SamplePresenterType
    
    private(set) var currentChild: Coordinator?
    
    init(presenter: SamplePresenterType, viewController: SampleViewControllerType) {
        self.presenter = presenter
        self.viewController = viewController
    }
    
    func start() {
        self.presenter.start()
    }
}

extension SampleCoordinator: SamplePresenterDelegate {
    
}
