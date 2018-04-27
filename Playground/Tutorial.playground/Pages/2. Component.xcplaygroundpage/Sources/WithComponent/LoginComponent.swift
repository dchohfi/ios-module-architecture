import UIKit
import SnapKit

protocol LoginComponentDelegate: AnyObject {

    func didSubmitLoginForm(email: String?, password: String?)
}

final class LoginComponent: UIView {

    weak var delegate: LoginComponentDelegate?

    private let titleLabel: UILabel = {

        let label = UILabel()
        label.textAlignment = .center
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

    init() {
        
        super.init(frame: .zero)
        self.customizeInterface()
    }

    required init?(coder aDecoder: NSCoder) { fatalError("Not implemented") }

    func render(configuration: LoginConfiguration) {
        
        self.titleLabel.attributedText = configuration.title
        self.emailTextField.text = configuration.email
        self.passwordTextField.text = configuration.email
        print("rendering configuration: \(configuration)")
    }

    @objc private func submit() {

        self.delegate?.didSubmitLoginForm(email: self.emailTextField.text, password: self.passwordTextField.text)
    }
}

extension LoginComponent {

    private func customizeInterface() {

        self.backgroundColor = .white
        self.addSubviews()
        self.addConstraints()
    }

    private func addSubviews() {

        self.containerStackview.addArrangedSubview(self.titleLabel)
        self.containerStackview.addArrangedSubview(self.emailTextField)
        self.containerStackview.addArrangedSubview(self.passwordTextField)
        self.containerStackview.addArrangedSubview(self.submitButton)

        self.addSubview(self.containerStackview)
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
