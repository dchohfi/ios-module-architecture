/*:
 > ## Using Playgrounds
 > Before trying to run any of the playground pages:
 > 1. Make sure you have installed the dependencies using cocoapods. Just run: `bundle exec pod install`
 > 2. Remember to build the `Tutorial` target before starting. This will build the project dependencies and make them available to the playground files.
 > 3. Some pages have live views, they are a good way to interact with the code you just wrote. Make sure you have the live view opened using Xcode's Assistant Editor.
 > 4. Feel free to change and play with the code! 💙

 # Modular Architecture

 _This document is intended to be a guide on how the modular architecture works. It is highly inspired by the [Uber RIBs](https://github.com/uber/RIBs/wiki) architecture._

 If you want to go straight to the tutorials you can [get started in here](@next).

 # Overview

 The modular architecture as build with some key concepts in mind:

 - **Testabilty:** Every layer of the architecture was designed to be fully testable. To achieve this requirement, layers must comunicate their dependencies through protocols in a well defined interface. We can use different technologies to test each layer, for example: Visual layers can be tested via snapshot testing, while other layers can be tested with mock objects using [Cuckoo](https://github.com/Brightify/Cuckoo)

 - **White Labeling:** To accomodate different requirements, the flow of an application is devided into a collection of modules. This way we can turn on and off features or even entire flows without spaghetti code and `ifs` all around.

 - **Access Control:** We really care about making things available only where they need to be. Files and modules are separated into private libraries, enforcing the programmer to reason about imported dependencies.

 - **Naming:** we really think that calling things `delegate` makes everything easier (:similly face:).

 # Project Structure

 The project contains four main parts:

 - **Application:** This is where your `AppDelegate` lives. It contains app specific configurations (targets, app extensions), it also handles the application lifecycle (going to and from background mode, receiving push notifications, etc).
 The application is composed from three other parts described below. Everything is glued together with [Cocoapods](https://cocoapods.org).

 - **Screens:** Contains every flow and every module of the app. Making it a private library helps us with two main things. The first is that the `AppDelegate` is not available in its scope. The second is that, every flow has the potential of becoming it's own private library. Turning a checkout flow for example into a separate library becomes very easy and other applications can benefit from it in the future.

 - **DataManager:** Handles every interaction with data. All the requests, cache and models live in here. It makes transparent for the app where does the data come from and how it is stored. Making it as a private library allows app extensions to share the same code as the app itself. Siri, watch and iMessage extensions can simply make the DataManager as a dependency and just present the data with a different format. It makes heavy use of [RxSwift](https://github.com/ReactiveX/RxSwift) allowing complex and elegant composition of data streams.

 - **Models (optional):** Sometimes it can be a good idea to share models between targets and not make them depend explicitly in the DataManager. In those cases we can separate the models in a different private library as well.

 # Module Units

 ![Module Architecture](ModuleArchitecture.png "Module Architecture")

 # Tutorials

 To better understand all the concepts described, we developed some tutorials that will start from a plain `UIViewController` and will evolve justifying the need of every layer of the architecture until we get to a complex real life context. You can [get started in here](@next)
 */
//: [Next](@next)
