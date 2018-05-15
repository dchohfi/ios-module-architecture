import Foundation
import WatchKit

class WatchModule_InterfaceController: WKInterfaceController {

    // MARK: - Presenter

    private lazy var presenter: WatchModule_PresenterType = {

        let presenter = WatchModule_Presenter(view: self)
        return presenter
    }()

    // MARK: - Lifecycle

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)

        self.presenter.start()
    }
}

extension WatchModule_InterfaceController: WatchModule_View {

    func render(configuration: WatchModule_Configuration) {
        
    }
}
