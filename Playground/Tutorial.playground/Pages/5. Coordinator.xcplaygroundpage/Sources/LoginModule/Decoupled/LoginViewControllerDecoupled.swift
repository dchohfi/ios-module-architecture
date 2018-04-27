import UIKit
import RxSwift

public final class LoginViewControllerDecoupled: UIViewController, LoginPresenterViewDecoupledType {

    public weak var delegate: LoginPresenterDecoupledType?

    private lazy var component: LoginComponent = {

        let component = LoginComponent()
        component.delegate = self
        return component
    }()

    public override func loadView() {

        self.view = self.component
    }

    public override func viewDidLoad() {

        super.viewDidLoad()
        self.component.render(configuration: LoginConfiguration(title: "BRAND"))
    }

    public func render(configuration: LoginConfiguration) {

        self.component.render(configuration: configuration)
    }
}

extension LoginViewControllerDecoupled: LoginComponentDelegate {

    func didSubmitLoginForm(email: String?, password: String?) {

        self.delegate?.didSubmitLoginForm(email: email, password: password)
    }
}
