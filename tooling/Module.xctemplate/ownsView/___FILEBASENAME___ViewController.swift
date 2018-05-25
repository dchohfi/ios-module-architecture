import UIKit
import ModuleArchitecture

protocol ___VARIABLE_productName___ViewControllerDelegate: AnyObject {

}

final class ___VARIABLE_productName___ViewController: UIViewController, ___VARIABLE_productName___ViewControllerType {

    weak var delegate: ___VARIABLE_productName___ViewControllerDelegate?
    private lazy var component = ___VARIABLE_productName___Component()

    override func loadView() {

        self.view = self.component
    }

    override func viewDidLoad() {

        super.viewDidLoad()
    }
}

extension ___VARIABLE_productName___ViewController: ___VARIABLE_productName___PresenterView {

    // This is the communication point from presenter to view controller.
    // You can change the name for something more contextual if needed.
    func render(configuration: ___VARIABLE_productName___Configuration) {

        self.component.render(configuration: .build(configuration))
    }
}
