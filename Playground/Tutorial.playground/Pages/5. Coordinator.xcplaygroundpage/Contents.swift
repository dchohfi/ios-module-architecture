//: [Previous](@previous)
import UIKit
import PlaygroundSupport
/*:
 # Navigating Between Modules

 Let's make this a little bit more real. After submitting the login form, we should be redirected to the application's home page, right?

 Let's do that. After receiving the success login event, we should push another view controller to the scene, a `HomeViewController` instance. Let's change the `render` method call at the presenter to a more semantic method like `navigateToHome`.

 Nice, we want all modules to follow the same `view controller`, `presenter`, `interactor` structure so we gain all the advantages we talked about in all modules.

 Inside the `navigateToHome` method inside the login controller we'll setup a new home module the same way we did with the login and attach it to the view hierarchy.

 ```swift
 public func navigateToHome() {

    let homeViewController = HomeViewController()
    let homePresenter = HomePresenter()
    homeViewController.delegate = homePresenter
    homePresenter.viewController = homeViewController
    self.navigationController?.pushViewController(homeViewController, animated: true)
 }
 ```
 And our initial setup will be:
 */
let loginInteractor = LoginInteractor()
let loginPresenter = LoginPresenter(loginInteractor: loginInteractor)
let viewController = LoginViewController()
viewController.delegate = loginPresenter
loginPresenter.viewController = viewController

let navigationController = UINavigationController(rootViewController: viewController)
navigationController.view.frame = iPhone7Size
//PlaygroundPage.current.liveView = navigationController.view

/*:
 # Coordinator

 It works! Be we have a problem with that implementation. We have coupled the login module to the home module. If our beloved PO comes to us and say that we no longer require the user to login before seeing the home page, we will have to make changes to our login module.

 The `Coordinator` class comes to the rescue. It's responsibility will be: manage module and child modules lifecycle.

 By lifecycle we can understand that it will attach and detach child modules from the view hierarchy. It will also be the class that will glue all the module classes together and hold reference to them so they don't get released by ARC.

 The coordinator will receive commands from the presenter, our module's brain, so we need the presenter to also have a delegate, and we need the coordinator the implmement it.
 */

let loginInteractorDecoupled = LoginInteractor()
let loginPresenterDecoupled = LoginPresenterDecoupled(loginInteractor: loginInteractorDecoupled)
let viewControllerDecoupled = LoginViewControllerDecoupled()
viewControllerDecoupled.delegate = loginPresenterDecoupled
loginPresenterDecoupled.viewController = viewControllerDecoupled

let navigationControllerDecoupled = UINavigationController(rootViewController: viewControllerDecoupled)
let loginCoordinator = LoginCoordinator(presenter: loginPresenterDecoupled, viewController: navigationControllerDecoupled)
loginPresenterDecoupled.delegate = loginCoordinator

navigationControllerDecoupled.view.frame = iPhone7Size
PlaygroundPage.current.liveView = loginCoordinator.viewController.view

//: [Next](@next)
