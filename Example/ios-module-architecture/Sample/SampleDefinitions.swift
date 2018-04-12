import ModuleArchitecture

protocol SampleModuleType: Module {
    func createRouter() -> SampleRouterType
}

protocol SampleRouterType: Router {
    var viewController: SampleViewControllerType { get }
}

protocol SamplePresenterType: Presenter, SampleViewControllerDelegate {
    var delegate: SamplePresenterDelegate? { get set }
}

protocol SampleViewControllerType: ViewControllerType {
    var delegate: SampleViewControllerDelegate? { get set }
}

protocol SampleView: View where ViewStateType == SampleViewState {
    
}
