import UIKit
import ModuleArchitecture

protocol Module_ViewControllerDelegate: AnyObject {
    
}

final class Module_ViewController: UIViewController, Module_ViewControllerType {
    
    weak var delegate: Module_ViewControllerDelegate?
    private let layout = Module_ViewLayout()
    
    override func loadView() {
        self.view = self.layout
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension Module_ViewController: Module_View {
    
    func render(viewState: Module_ViewState) {
        self.layout.render(viewState: viewState)
    }
}
