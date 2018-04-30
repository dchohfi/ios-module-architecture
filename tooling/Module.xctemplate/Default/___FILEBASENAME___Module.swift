import ModuleArchitecture

final class ___VARIABLE_productName___Module: Module, ___VARIABLE_productName___ModuleType {
    
    func createCoordinator() -> ___VARIABLE_productName___CoordinatorType {
        
        let presenter = ___VARIABLE_productName___Presenter()
        let coordinator = ___VARIABLE_productName___Coordinator(presenter: presenter)
        presenter.delegate = coordinator
        return coordinator
    }
}
