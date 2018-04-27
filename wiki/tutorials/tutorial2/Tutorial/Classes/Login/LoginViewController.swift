import UIKit

final class LoginViewController: UIViewController {

    private lazy var component: LoginComponent = {

        let component = LoginComponent()
        component.delegate = self
        return component
    }()

    override func loadView() {

        self.view = self.component
    }

    override func viewDidLoad() {

        super.viewDidLoad()
        self.component.render(configuration: LoginConfiguration(title: "BRAND"))
    }
}

extension LoginViewController: LoginComponentDelegate {

    func didSubmitLoginForm(email: String?, password: String?) {

        print("submit button tapped")
    }
}
