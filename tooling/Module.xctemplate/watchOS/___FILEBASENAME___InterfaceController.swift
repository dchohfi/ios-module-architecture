import Foundation
import WatchKit

class ___VARIABLE_productName___InterfaceController: WKInterfaceController {

    // MARK: - Presenter

    private lazy var presenter: ___VARIABLE_productName___PresenterType = {

        let presenter = ___VARIABLE_productName___Presenter(view: self)
        return presenter
    }()

    // MARK: - Lifecycle

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)

        self.presenter.start()
    }
}

extension ___VARIABLE_productName___InterfaceController: ___VARIABLE_productName___View {

    func render(configuration: ___VARIABLE_productName___Configuration) {
        
    }
}
