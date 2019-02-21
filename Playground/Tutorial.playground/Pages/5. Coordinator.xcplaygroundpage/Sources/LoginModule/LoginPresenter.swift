import RxSwift

public protocol LoginPresenterType: AnyObject {

    func didSubmitLoginForm(email: String?, password: String?)
}

public protocol LoginPresenterViewType: AnyObject {

    func render(configuration: LoginConfiguration)
    func navigateToHome()
}

public final class LoginPresenter: LoginPresenterType {

    public weak var viewController: LoginPresenterViewType?
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
            self.viewController?.navigateToHome()
        case .error(let error):
            print(error)
        }
    }
}
