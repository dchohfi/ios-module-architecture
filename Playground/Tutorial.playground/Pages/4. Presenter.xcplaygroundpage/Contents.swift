//: [Previous](@previous)
import UIKit
import PlaygroundSupport
/*:
 # Presenter

 It's a sunny day and we are happy with our testable view controller. But are we really happy?

 We have already defined de responsibility of our view controllers before. Our last step, however, added one more responsibility for them. Deciding what to do on every interaction is the core of the funcionality we are building and has potential to generate lots of code.

 Also it seems that we can test the interactions from the view to the interactor, but cannot yet do the other way arround.

 To address these issues, we will add an extra layer that will be majorly responsible for handling user interactions. It will receive the most pure possible interaction callbacks and will decide what to do when they happen.

 A button was pressed? The `Presenter` will be be notified of that event and will fire all the tasks needed to be performed for that action. It will decide which interactor to call to retreive data, will ask the view to start a loading state and will ask an analytics interactor to log some event. It will be the brain of the module.

 This will again free up our view controllers to handle iOS inherited tasks and will improve our testing capabilities.

 In summary the `Presenter` will:

 - Be responsible for deciding what to do when all view interactions happen.
 - Allow unit testing both ways of `view -> application`, `application -> view` interactions.
 - As a bonus, it will allow reuse of interaction logic for different versions of some screen/view, very usefull when A/B testing.

 The `Presenter` will have a reference back to the view controller to be able to change it's state. The property holding this reference will be named `viewController` for a better understanding. This same reference however will be exposed as a protocol as well, like we would do with delegates. The view controller will implement that protocol and we will assign it to the presenter. As any other delegate property, the `viewController` property must be `weak`.

 One last thing we would like to do is call `delegate` the reference from the view controller to the presenter. It just seems more familiar to have a `delegate`, when working inside the view controller's code.
 */
let loginInteractor = LoginInteractor()
let loginPresenter = LoginPresenter(loginInteractor: loginInteractor)
let viewController = LoginViewController()
viewController.delegate = loginPresenter
loginPresenter.viewController = viewController
viewController.view.frame = iPhone7Size
PlaygroundPage.current.liveView = viewController.view
/*:
 Since we expose the presenter as a protocol to the view controller, we are again able to provide a fake object as parameter and test the view controller if we need to. We can also provide a fake interactor object to the presenter to test the presenter itself. At last, we can provide a fake object as the delegate of the presenter to test the interactions from the presenter to the view, improving our module testability.
 */
//: [Next](@next)
