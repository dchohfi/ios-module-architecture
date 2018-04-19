import UIKit

public protocol ViewControllerType: AnyObject {

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

extension Collection where Element == ViewControllerType {

    public func asViewControllers() -> [UIViewController] {

        return self.map { $0.asViewController() }
    }
}

extension UINavigationController: ViewControllerType {

    public convenience init(viewControllerType: ViewControllerType) {

        self.init(rootViewController: viewControllerType.asViewController())
    }

    public func pushViewController(_ viewControllerType: ViewControllerType, animated: Bool) {

        self.pushViewController(viewControllerType.asViewController(), animated: animated)
    }

    public func popToViewController(_ viewControllerType: ViewControllerType, animated: Bool) {

        self.popToViewController(viewControllerType.asViewController(), animated: animated)
    }

    public func popToViewController(_ viewControllerType: ViewControllerType, animated: Bool) -> [UIViewController]? {

        return self.popToViewController(viewControllerType.asViewController(), animated: animated)
    }

    public func setViewControllers(_ viewControllersType: [ViewControllerType], animated: Bool) {
        self.setViewControllers(viewControllersType.asViewControllers(), animated: animated)
    }
}

extension UITabBarController: ViewControllerType {

    public func setViewControllers(_ viewControllersType: [ViewControllerType]?, animated: Bool) {

        self.setViewControllers(viewControllersType?.asViewControllers(), animated: animated)
    }
}

extension UIPageViewController: ViewControllerType {

    public func setViewControllers(_ viewControllersType: [ViewControllerType]?,
                                   direction: UIPageViewControllerNavigationDirection,
                                   animated: Bool,
                                   completion: ((Bool) -> Swift.Void)? = nil) {

        self.setViewControllers(viewControllersType?.asViewControllers(),
                                direction: direction,
                                animated: animated,
                                completion: completion)
    }
}
