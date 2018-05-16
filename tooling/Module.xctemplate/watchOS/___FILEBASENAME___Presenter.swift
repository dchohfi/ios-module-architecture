import Foundation

protocol ___VARIABLE_productName___PresenterDelegate: AnyObject {

}

final class ___VARIABLE_productName___Presenter: ___VARIABLE_productName___PresenterType {

    // MARK: - Dependencies

    private weak var view: ___VARIABLE_productName___View?

    // MARK: - Delegate

    weak var delegate: ___VARIABLE_productName___PresenterDelegate?

    // MARK: - Init

    init(view: ___VARIABLE_productName___View) {

        self.view = view
    }

    func start() {

    }
}
