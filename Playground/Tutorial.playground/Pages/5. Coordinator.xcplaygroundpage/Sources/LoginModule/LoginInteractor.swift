import Foundation
import RxSwift

public protocol LoginInteractorType {

    func loginWith(username: String, password: String) -> Single<User>
}

public final class LoginInteractor: LoginInteractorType {

    public init() {}

    public func loginWith(username: String, password: String) -> Single<User> {

        return Single.just(User.vini)
    }
}
