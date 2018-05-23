import ModuleArchitecture

protocol ___VARIABLE_productName___PresenterDelegate: AnyObject {

}

final class ___VARIABLE_productName___Presenter: Presenter, ___VARIABLE_productName___PresenterType {

    weak var viewController: ___VARIABLE_productName___PresenterView?
    weak var delegate: ___VARIABLE_productName___PresenterDelegate?

    override func start() {
        //
    }
}

extension ___VARIABLE_productName___Presenter: ___VARIABLE_productName___ViewControllerDelegate {

}
