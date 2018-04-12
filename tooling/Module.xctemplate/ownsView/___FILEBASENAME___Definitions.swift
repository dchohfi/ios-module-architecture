import ModuleArchitecture

protocol ___VARIABLE_productName___ModuleType: Module {
    func createRouter() -> ___VARIABLE_productName___RouterType
}

protocol ___VARIABLE_productName___RouterType: Router {
    var viewController: ___VARIABLE_productName___ViewControllerType { get }
}

protocol ___VARIABLE_productName___PresenterType: Presenter, ___VARIABLE_productName___ViewControllerDelegate {
    var delegate: ___VARIABLE_productName___PresenterDelegate? { get set }
}

protocol ___VARIABLE_productName___ViewControllerType: ViewControllerType {
    var delegate: ___VARIABLE_productName___ViewControllerDelegate? { get set }
}

protocol ___VARIABLE_productName___View: View where ViewStateType == ___VARIABLE_productName___ViewState {
    
}
