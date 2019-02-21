//: [Previous](@previous)
import UIKit
import PlaygroundSupport
/*:
 # Interactors

 So far so good, we have our highly testable component object with it's single responsibility of displaying stuff and our light view controller handling everything it needs to make iOS happy with us.

 Next step is to make the submit button work. We need to implement a handler for the button tapped action and make an api request to login the user.

 ## Making API requests

 We want to embrace testabilty so every behavior we want to add to our application should be testable.

 To achieve that, and with the single responsibility principle in mind, we are going to create an object that will handle the API calls for us.

 We are going to name the class of objects that deal with data `Interactors`. They will abstract to users how the data is handled inside them. Maybe it comes from a cache in memory or disk, maybe it comes from a remote server or it is just an object created everytime you call a method. From the caller side, it just doesn't matter.

 In our example, the `LoginInteractor` will be responsible for receiving a username and password and transforming them into a full `User` object. It will do so by exposing a method called `public func loginWith(username: String, password: String) -> Single<User>`.

 In a real application this transformation would be achieved by calling a remote server, and handling all the complexity of authenticating those credentials to return a `User`. In our case, it is just going to create a new user everytime.
 */
let viewController = LoginViewController()
viewController.view.frame = iPhone7Size
//PlaygroundPage.current.liveView = viewController.view
/*:
 ## Dependency Injection

 Remember we want to test as much as possible? To achieve that we need to be able to mock our interactor when unit testing our view controller. That's when injecting our dependencies start to make more sense.

 If we receive an instance of our interactor insetead of creating it ourselves inside `LoginViewController`, when unit testing we could pass another implementation of the same interactor type, a simpler implementation with expected returns so we can test every relevant context.

 > _Receiving an instance instead of creating it also delegates this resposibility to another object and makes our view controller more cohesive to it's own business._


 We also want to work with protocol types instead of real implementation types so this process is easier.

 That's how it would look like the same login controller injecting the interactor:
 */
let interactor = LoginInteractor()
let viewControllerWithDependencyInjection = LoginViewControllerWithDependencyInjection(loginInteractor: interactor)
viewControllerWithDependencyInjection.view.frame = iPhone7Size
PlaygroundPage.current.liveView = viewControllerWithDependencyInjection.view
/*:
 When we need to unit test our view controller, ignoring the complexity of the `LoginInteractor`, we can just create another implementation of the `LoginInteractorType` protocol and pass it when instantiating the controller.

 ```swift
 final class FakeLoginInteractor: LoginInteractorType {
    func loginWith(username: String, password: String) -> Single<User> {
        // return something your unit tests expect
    }
 }
 ```

 In our unit tests we can create a `LoginViewControllerWithDependencyInjection` and call the `didSubmitLoginForm(email:password:)`. We then expect that the interector method will be called, we can test that by implementing some check logic inside our fake interactor. And finally we expect that the component method `public func showLoggedInUser(_:)` is called. This last part we cannot still test, but we will get there.
 */
//: [Next](@next)
