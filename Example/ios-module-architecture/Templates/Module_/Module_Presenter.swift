import ModuleArchitecture

protocol Module_PresenterDelegate: AnyObject {

}

final class Module_Presenter: Presenter, Module_PresenterType {

    weak var viewController: Module_PresenterView?
    weak var delegate: Module_PresenterDelegate?

    override func start() {
        //
    }
}

extension Module_Presenter: Module_ViewControllerDelegate {

}
