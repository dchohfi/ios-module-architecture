import UIKit
import ModuleArchitecture

final class ___VARIABLE_productName___ViewController: UIViewController, ___VARIABLE_productName___ViewControllerType {
    
    weak var delegate: ___VARIABLE_productName___ViewControllerDelegate?
    private let component = ___VARIABLE_productName___Component()
    
    override func loadView() {
        self.view = self.component
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ___VARIABLE_productName___ViewController: ___VARIABLE_productName___View {
    
    // This is the entry point for communication between view controllers and presenters
    // You can change the name for something more contextual if needed.
    func render(configuration: ___VARIABLE_productName___Configuration) {
        self.component.render(configuration: .build(configuration))
    }
}
