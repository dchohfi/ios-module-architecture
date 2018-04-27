import ModuleArchitecture

final class ViewLessModule_Module: Module, ViewLessModule_ModuleType {
    
    func createCoordinator() -> ViewLessModule_CoordinatorType {
        
        let presenter = ViewLessModule_Presenter()
        let coordinator = ViewLessModule_Coordinator(presenter: presenter)
        presenter.delegate = coordinator
        return coordinator
    }
}
