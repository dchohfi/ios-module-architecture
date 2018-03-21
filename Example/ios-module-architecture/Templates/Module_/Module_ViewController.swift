import UIKit
import ModuleArchitecture

protocol Module_ViewControllerDelegate: class {
    
}

final class Module_ViewController: UIViewController, Module_View, Module_ViewControllerType {
    weak var delegate: Module_ViewControllerDelegate?
    private let layout = Module_ViewLayout()
    
    override func loadView() {
        self.view = self.layout
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.customizeInterface()
    }
    
    func show(viewModel: Module_ViewModel) {
        self.layout.show(viewModel: viewModel)
    }
}

extension Module_ViewController {
    private func customizeInterface() {
    
    }
}
