import ModuleArchitecture

final class ___VARIABLE_productName___Router: ___VARIABLE_productName___RouterType {
    
    private let presenter: ___VARIABLE_productName___PresenterType
    
    private(set) var currentChild: Router?
    
    init(presenter: ___VARIABLE_productName___PresenterType) {
        self.presenter = presenter
    }
    
    func start() {
        self.presenter.start()
    }
}
