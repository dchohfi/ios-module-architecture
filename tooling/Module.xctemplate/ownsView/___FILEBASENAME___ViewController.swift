import UIKit
import ModuleArchitecture

protocol ___VARIABLE_productName___ViewControllerDelegate: AnyObject {
    
}

final class ___VARIABLE_productName___ViewController: UIViewController, ___VARIABLE_productName___ViewControllerType {
    
    weak var delegate: ___VARIABLE_productName___ViewControllerDelegate?
    private let layout = ___VARIABLE_productName___ViewLayout()
    
    override func loadView() {
        self.view = self.layout
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ___VARIABLE_productName___ViewController: ___VARIABLE_productName___View {
    
    func render(viewState: ___VARIABLE_productName___ViewState) {
        self.layout.render(viewState: viewState)
    }
}
