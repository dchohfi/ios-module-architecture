import UIKit
import ModuleArchitecture

protocol SampleViewControllerDelegate: AnyObject {
    
}

final class SampleViewController: UIViewController, SampleViewControllerType {
    
    weak var delegate: SampleViewControllerDelegate?
    private let layout = SampleViewLayout()
    
    override func loadView() {
        self.view = self.layout
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension SampleViewController: SampleView {
    
    func render(viewState: SampleViewState) {
        self.layout.render(viewState: viewState)
    }
}
