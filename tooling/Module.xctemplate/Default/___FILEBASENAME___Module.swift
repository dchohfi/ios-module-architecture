import ModuleArchitecture

final class ___VARIABLE_productName___Module: ___VARIABLE_productName___ModuleType {
    func build() -> ___VARIABLE_productName___RouterType {
        let presenter = ___VARIABLE_productName___Presenter()
        let router = ___VARIABLE_productName___Router(presenter: presenter)
        presenter.router = router
        return router
    }
}
