import UIKit
import ModuleArchitecture

protocol SampleViewControllerDelegate: class {
    
}

final class SampleViewController: UIViewController, SampleView, SampleViewControllerType {
    weak var delegate: SampleViewControllerDelegate?
    private let layout = SampleViewLayout()
    
    override func loadView() {
        self.view = self.layout
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.customizeInterface()
    }
    
    func show(viewModel: SampleViewModel) {
        self.layout.show(viewModel: viewModel)
    }
}

extension SampleViewController {
    private func customizeInterface() {
    
    }
}
