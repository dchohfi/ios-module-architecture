import UIKit

public final class LoginCoordinator {

    private let presenter: LoginPresenterDecoupledType
    public let viewController: UINavigationController

    public init(presenter: LoginPresenterDecoupledType, viewController: UINavigationController) {

        self.presenter = presenter
        self.viewController = viewController
    }
}

extension LoginCoordinator: LoginPresenterDecoupledDelegate {

    public func navigateToHome() {
        print("navigate to home")
        let homeViewController = HomeViewController()
        let homePresenter = HomePresenter()
        homeViewController.delegate = homePresenter
        homePresenter.viewController = homeViewController
        self.viewController.pushViewController(homeViewController, animated: true)
    }
}
