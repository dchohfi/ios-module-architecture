import UIKit
import RxSwift

public final class LoginViewController: UIViewController, LoginPresenterViewType {

    public weak var delegate: LoginPresenterType?

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

extension LoginViewController: LoginComponentDelegate {

    func didSubmitLoginForm(email: String?, password: String?) {

        self.delegate?.didSubmitLoginForm(email: email, password: password)
    }
}
