import RxSwift

public protocol LoginPresenterDecoupledType: AnyObject {

    func didSubmitLoginForm(email: String?, password: String?)
}

public protocol LoginPresenterViewDecoupledType: AnyObject {

    func render(configuration: LoginConfiguration)
}

public protocol LoginPresenterDecoupledDelegate: AnyObject {

    func navigateToHome()
}

public final class LoginPresenterDecoupled: LoginPresenterDecoupledType {

    public weak var delegate: LoginPresenterDecoupledDelegate?
    public weak var viewController: LoginPresenterViewDecoupledType?
    private let loginInteractor: LoginInteractorType
    private let disposeBag = DisposeBag()

    public init(loginInteractor: LoginInteractorType) {

        self.loginInteractor = loginInteractor
    }

    public func didSubmitLoginForm(email: String?, password: String?) {

        guard let email = email, let password = password else { return }

        self.loginInteractor
            .loginWith(username: email, password: password)
            .subscribe { [weak self] (event) in

                self?.handleLoginEvent(event)
            }
            .disposed(by: self.disposeBag)
    }

    private func handleLoginEvent(_ event: SingleEvent<User>) {

        switch event {
        case .success(let user):
            self.viewController?.render(configuration: LoginConfiguration(title: "BRAND", user: user))
            self.delegate?.navigateToHome()
        case .error(let error):
            print(error)
        }
    }
}
