import ModuleArchitecture

final class ___VARIABLE_productName___Coordinator: ___VARIABLE_productName___CoordinatorType {
    
    private let presenter: ___VARIABLE_productName___PresenterType
    
    private(set) var currentChild: Coordinator?
    
    init(presenter: ___VARIABLE_productName___PresenterType) {
        self.presenter = presenter
    }
    
    func start() {
        self.presenter.start()
    }
}

extension ___VARIABLE_productName___Coordinator: ___VARIABLE_productName___PresenterDelegate {
    
}
