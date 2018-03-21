import ModuleArchitecture

protocol ___VARIABLE_productName___ModuleType: Module {
    func build() -> ___VARIABLE_productName___RouterType
}

protocol ___VARIABLE_productName___RouterType: Router {
    var viewController: ___VARIABLE_productName___ViewControllerType { get }
}

protocol ___VARIABLE_productName___PresenterType: Presenter, ___VARIABLE_productName___ViewControllerDelegate {
    weak var listener: ___VARIABLE_productName___Listenter? { get set }
}

protocol ___VARIABLE_productName___ViewControllerType: ViewControllerType {
    weak var delegate: ___VARIABLE_productName___ViewControllerDelegate? { get set }
}

protocol ___VARIABLE_productName___View: View where ViewModelType == ___VARIABLE_productName___ViewModel {
    
}
