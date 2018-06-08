import UIKit
import SnapKit

public final class LoginViewController: UIViewController {

    private let titleLabel: UILabel = {

        let label = UILabel()
        label.text = "BRAND"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 40, weight: .light)
        return label
    }()

    private let emailTextField: UITextField = {

        let textField = UITextField()
        textField.placeholder = "E-mail"
        return textField
    }()

    private let passwordTextField: UITextField = {

        let textField = UITextField()
        textField.placeholder = "Password"
        textField.isSecureTextEntry = true
        return textField
    }()

    private let submitButton: UIButton = {

        let button = UIButton()
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Submit", for: .normal)
        button.backgroundColor = .black
        button.addTarget(self, action: #selector(submit), for: .touchUpInside)
        return button
    }()

    private let containerStackview: UIStackView = {

        let stackview = UIStackView()
        stackview.spacing = 40
        stackview.isLayoutMarginsRelativeArrangement = true
        stackview.layoutMargins = UIEdgeInsets(top: 0, left: 30, bottom: 0, right: 30)
        stackview.axis = .vertical
        return stackview
    }()

    public override func viewDidLoad() {

        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.customizeInterface()
    }

    @objc func submit() {

        print("submit button tapped")
    }
}

extension LoginViewController {

    private func customizeInterface() {

        self.addSubviews()
        self.addConstraints()
    }

    private func addSubviews() {

        self.containerStackview.addArrangedSubview(self.titleLabel)
        self.containerStackview.addArrangedSubview(self.emailTextField)
        self.containerStackview.addArrangedSubview(self.passwordTextField)
        self.containerStackview.addArrangedSubview(self.submitButton)

        self.view.addSubview(self.containerStackview)
    }

    private func addConstraints() {

        self.containerStackview.snp.makeConstraints { make in

            let insets = UIEdgeInsets(top: -30, left: 0, bottom: 0, right: 0)
            make.center.equalToSuperview().inset(insets)
            make.left.right.equalToSuperview()
        }

        self.submitButton.snp.makeConstraints { make in

            make.height.equalTo(50)
        }
    }
}
