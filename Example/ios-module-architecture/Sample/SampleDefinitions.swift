import ModuleArchitecture

// Builder object that configures the module and returns a coordinator.
// A module should always be instantiated via the createCoordinator method.
protocol SampleModuleType: Module {

    func createCoordinator() -> SampleCoordinatorType
}

protocol SampleCoordinatorType: Coordinator {

    var viewController: SampleViewControllerType { get }
}

protocol SamplePresenterType: Presenter, SampleViewControllerDelegate {

    var delegate: SamplePresenterDelegate? { get set }
}

protocol SampleViewControllerType: ViewControllerType {

    var delegate: SampleViewControllerDelegate? { get set }
}

protocol SamplePresenterView: AnyObject {
    
    // This is the communication point from presenter to view controller.
    // You can change the name for something more contextual if needed.
    func render(configuration: SampleConfiguration)
}
