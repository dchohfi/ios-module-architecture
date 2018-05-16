import WatchKit

final class WatchModule_Coordinator: WatchModule_CoordinatorType {

    private let presentationContext: WKInterfaceController

    init(presentationContext: WKInterfaceController) {
        self.presentationContext = presentationContext
    }
}

extension WatchModule_Coordinator: WatchModule_PresenterDelegate {
    
}
