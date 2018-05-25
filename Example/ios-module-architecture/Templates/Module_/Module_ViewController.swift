import UIKit
import ModuleArchitecture

protocol Module_ViewControllerDelegate: AnyObject {

}

final class Module_ViewController: UIViewController, Module_ViewControllerType {

    weak var delegate: Module_ViewControllerDelegate?
    private lazy var component = Module_Component()

    override func loadView() {

        self.view = self.component
    }

    override func viewDidLoad() {

        super.viewDidLoad()
    }
}

extension Module_ViewController: Module_PresenterView {

    // This is the communication point from presenter to view controller.
    // You can change the name for something more contextual if needed.
    func render(configuration: Module_Configuration) {

        self.component.render(configuration: .build(configuration))
    }
}
