//: [Previous](@previous)
import UIKit
/*:
 # A Plain UIViewController

 We will get started with a simple Login screen with a plain old `UIViewController` subclass.
 */
let viewController = LoginViewController()
viewController.view.frame = iPhone7Size
/*:
 The first thing we need to have in mind is that view controllers are one of the most tied classes the [iOS ecosystem](https://developer.apple.com/documentation/uikit/uiviewcontroller). They contain methods for handling:

 - Screen rotation
 - Status bar styling
 - View state transitions (appear, disappear)
 - State preservation when moving from/to background

 Just to name a few. In a complex environment, only those responsibilities are enough to fill our view controllers with a lot of code. Thinking about that, it seems a good idea to move things away from them whenever we can.

 The first thing we could do is detach the pure visual objects that are living inside them. All buttons, labels, table views and input fields that compose a screen could live inside another `UIView` subclass that would bind them all together. Here we present the first box of our `Module`:


 ## Component

 - A Component can be described as a pure visual composition of view objects (UIView, NSView, etc) or it's subclasses, including other components. It defines the arrangement of all children visual objects.

 - Components should have their sate changed via `Configuration` objects. These objects should define every visual and content property of the component, from background colors to attributed strings for every label.

 It's important to notice that `Configuration` objects usually contain mutable content, things that need to change in different stages of the `Component` lifecycle. Static information can live inside the `Component` until it comes the need to extract it to a configuration object.


 ## Advantages

 The component approach makes view controllers lighter, free to have the code they inherited from the iOS ecosystem.

 They also enhance our testing capabilities. Since the component is not tied to the iOS lifecycle, we do not need to worry about wheater or not it has been loaded, and other sources of headaches when testing view controllers directly. We can just instantiate the component, udpate it's state and take a snapshot. Simple as that.

 The usage of configuration objects to mutate the sate of the component also allows snapshots of those different states.

 Lastly components make accessible only the properties that need to be public (maybe none, with the `Configuration` approach), enhancing the [cohesion](https://en.wikipedia.org/wiki/Cohesion_(computer_science)) of our implementation.

 In summary:

 - Lighter view controllers
 - Visual state changes via configuration object
 - Better testability
 - Higher cohesion
 */
let viewControllerWithComponent = LoginViewControllerWithComponent()
viewControllerWithComponent.view.frame = iPhone7Size
//: [Next](@next)
