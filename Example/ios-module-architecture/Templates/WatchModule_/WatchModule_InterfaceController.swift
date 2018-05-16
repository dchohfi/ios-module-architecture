import Foundation
import WatchKit

final class WatchModule_InterfaceController: WKInterfaceController {

    // MARK: - Presenter

    private lazy var presenter: WatchModule_PresenterType = {

        // A Factory class could be used to create coordinators and presenters and tight them together
        let coordinator = WatchModule_Coordinator(presentationContext: self)
        let presenter = WatchModule_Presenter(view: self)
        presenter.delegate = coordinator
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
