import UIKit
import ModuleArchitecture

protocol ___VARIABLE_productName___ViewControllerDelegate: class {
    
}

final class ___VARIABLE_productName___ViewController: UIViewController, ___VARIABLE_productName___View, ___VARIABLE_productName___ViewControllerType {
    weak var delegate: ___VARIABLE_productName___ViewControllerDelegate?
    private let layout = ___VARIABLE_productName___ViewLayout()
    
    override func loadView() {
        self.view = self.layout
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.customizeInterface()
    }
    
    func show(viewModel: ___VARIABLE_productName___ViewModel) {
        self.layout.show(viewModel: viewModel)
    }
}

extension ___VARIABLE_productName___ViewController {
    private func customizeInterface() {
    
    }
}
