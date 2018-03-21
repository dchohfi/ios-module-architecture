import ModuleArchitecture

protocol ___VARIABLE_productName___ModuleType: Module {
    func build() -> ___VARIABLE_productName___RouterType
}

protocol ___VARIABLE_productName___RouterType: Router {
    
}

protocol ___VARIABLE_productName___PresenterType: Presenter {
    weak var listener: ___VARIABLE_productName___Listenter? { get set }
}
