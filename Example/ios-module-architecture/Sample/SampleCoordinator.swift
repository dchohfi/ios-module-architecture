import ModuleArchitecture

final class SampleCoordinator: Coordinator<SamplePresenterType>, SampleCoordinatorType {
    
    let viewController: SampleViewControllerType

    init(presenter: SamplePresenterType, viewController: SampleViewControllerType) {

        self.viewController = viewController
        super.init(presenter: presenter)
    }
}

extension SampleCoordinator: SamplePresenterDelegate {
    
}
