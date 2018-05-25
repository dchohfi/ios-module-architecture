import Foundation
import WatchKit

final class ___VARIABLE_productName___InterfaceController: WKInterfaceController {

    private lazy var presenter: ___VARIABLE_productName___PresenterType = {

        // A Factory class could be used to create coordinators and presenters and tight them together
        let coordinator = ___VARIABLE_productName___Coordinator(presentationContext: self)
        let presenter = ___VARIABLE_productName___Presenter()
        presenter.view = self
        presenter.delegate = coordinator
        return presenter
    }()

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)

        self.presenter.start()
    }
}

extension ___VARIABLE_productName___InterfaceController: ___VARIABLE_productName___View {

    func render(configuration: ___VARIABLE_productName___Configuration) {
        
    }
}
