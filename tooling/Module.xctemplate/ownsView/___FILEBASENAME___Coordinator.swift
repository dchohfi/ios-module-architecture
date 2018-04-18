import ModuleArchitecture

final class ___VARIABLE_productName___Coordinator: ___VARIABLE_productName___CoordinatorType {
    
    let viewController: ___VARIABLE_productName___ViewControllerType
    private let presenter: ___VARIABLE_productName___PresenterType
    
    private(set) var currentChild: Coordinator?
    
    init(presenter: ___VARIABLE_productName___PresenterType, viewController: ___VARIABLE_productName___ViewControllerType) {
        
        self.presenter = presenter
        self.viewController = viewController
    }
    
    func start() {
        
        self.presenter.start()
    }
}

extension ___VARIABLE_productName___Coordinator: ___VARIABLE_productName___PresenterDelegate {
    
}
