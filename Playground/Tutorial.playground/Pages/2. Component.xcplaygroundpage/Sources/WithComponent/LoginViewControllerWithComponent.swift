import UIKit

public final class LoginViewControllerWithComponent: UIViewController {

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
}

extension LoginViewControllerWithComponent: LoginComponentDelegate {

    func didSubmitLoginForm(email: String?, password: String?) {

        print("submit button tapped")
    }
}
