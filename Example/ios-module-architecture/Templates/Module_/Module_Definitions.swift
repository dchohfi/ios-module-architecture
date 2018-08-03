import ModuleArchitecture

// Builder object that configures the module and returns a coordinator.
// A module should always be instantiated via the createCoordinator method.
protocol Module_ModuleType: ModuleType {

    func createCoordinator() -> Module_CoordinatorType
}

protocol Module_CoordinatorType: ViewableCoordinatorType {

}

protocol Module_PresenterType: PresenterType {

    var delegate: Module_PresenterDelegate? { get set }
}

protocol Module_ViewControllerType: ViewControllerType {

    var delegate: Module_ViewControllerDelegate? { get set }
}

protocol Module_PresenterView: AnyObject {

    // This is the communication point from presenter to view controller.
    // You can change the name for something more contextual if needed.
    func render(configuration: Module_Configuration)
}
