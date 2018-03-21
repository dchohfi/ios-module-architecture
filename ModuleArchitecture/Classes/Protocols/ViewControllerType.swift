import UIKit

public protocol ViewControllerType: class {
    func asViewController() -> UIViewController
}

public extension ViewControllerType where Self: UIViewController {
    func asViewController() -> UIViewController {
        return self
    }
}

public extension UIViewController {
    func present(_ viewControllable: ViewControllerType, animated: Bool = true, completion: (() -> Void)? = nil) {
        self.present(viewControllable.asViewController(), animated: animated, completion: completion)
    }
}
