import UIKit
import ModuleArchitecture

final class Module_ViewController: UIViewController, Module_ViewControllerType {
    
    weak var delegate: Module_ViewControllerDelegate?
    private let component = Module_Component()
    
    override func loadView() {
        self.view = self.component
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension Module_ViewController: Module_View {
    
    // This is the entry point for communication between view controllers and presenters
    // You can change the name for something more contextual if needed.
    func render(configuration: Module_Configuration) {
        self.component.render(configuration: .build(configuration))
    }
}
