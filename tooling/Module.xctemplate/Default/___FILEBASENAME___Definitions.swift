import ModuleArchitecture

protocol ___VARIABLE_productName___ModuleType: Module {
    func createRouter() -> ___VARIABLE_productName___RouterType
}

protocol ___VARIABLE_productName___RouterType: Router {
    
}

protocol ___VARIABLE_productName___PresenterType: Presenter {
    var delegate: ___VARIABLE_productName___PresenterDelegate? { get set }
}
