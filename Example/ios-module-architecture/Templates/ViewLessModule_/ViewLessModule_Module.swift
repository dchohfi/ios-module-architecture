import ModuleArchitecture

final class ViewLessModule_Module: ViewLessModule_ModuleType {
    
    func createRouter() -> ViewLessModule_RouterType {
        let presenter = ViewLessModule_Presenter()
        let router = ViewLessModule_Router(presenter: presenter)
        presenter.router = router
        return router
    }
}
