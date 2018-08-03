import ModuleArchitecture

final class ___VARIABLE_productName___Coordinator: Coordinator<___VARIABLE_productName___PresenterType>, ___VARIABLE_productName___CoordinatorType {

    let viewController: ViewControllerType

    init(presenter: ___VARIABLE_productName___PresenterType, viewController: ___VARIABLE_productName___ViewControllerType) {

        self.viewController = viewController
        super.init(presenter: presenter)
    }
}

extension ___VARIABLE_productName___Coordinator: ___VARIABLE_productName___PresenterDelegate {

}
