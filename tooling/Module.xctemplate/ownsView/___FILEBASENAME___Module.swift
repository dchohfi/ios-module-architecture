import ModuleArchitecture

final class ___VARIABLE_productName___Module: ___VARIABLE_productName___ModuleType {
    func build() -> ___VARIABLE_productName___RouterType {
        let presenter = ___VARIABLE_productName___Presenter<___VARIABLE_productName___ViewController>()
        let viewController = ___VARIABLE_productName___ViewController()
        let router = ___VARIABLE_productName___Router(presenter: presenter, viewController: viewController)
        viewController.delegate = presenter
        presenter.view = viewController
        presenter.router = router
        return router
    }
}
