import ModuleArchitecture

protocol SampleModuleType: Module {
    func build() -> SampleRouterType
}

protocol SampleRouterType: Router {
    var viewController: SampleViewControllerType { get }
}

protocol SamplePresenterType: Presenter, SampleViewControllerDelegate {
    weak var listener: SampleListenter? { get set }
}

protocol SampleViewControllerType: ViewControllerType {
    weak var delegate: SampleViewControllerDelegate? { get set }
}

protocol SampleView: View where ViewModelType == SampleViewModel {
    
}
