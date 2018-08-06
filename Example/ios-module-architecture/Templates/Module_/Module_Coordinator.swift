import ModuleArchitecture

final class Module_Coordinator: Coordinator<Module_PresenterType>, Module_CoordinatorType {

    let viewController: ViewControllerType

    init(presenter: Module_PresenterType, viewController: Module_ViewControllerType) {

        self.viewController = viewController
        super.init(presenter: presenter)
    }
}

extension Module_Coordinator: Module_PresenterDelegate {

}
