import UIKit
import ModuleArchitecture

protocol SampleViewControllerDelegate: AnyObject {

}

final class SampleViewController: UIViewController, SampleViewControllerType {

    weak var delegate: SampleViewControllerDelegate?
    private let component = SampleComponent()

    override func loadView() {

        self.view = self.component
    }

    override func viewDidLoad() {

        super.viewDidLoad()
    }
}

extension SampleViewController: SamplePresenterView {

    // This is the communication point from presenter to view controller.
    // You can change the name for something more contextual if needed.
//    func render(configuration: SampleConfiguration) {
//
//        self.component.render(configuration: .build(configuration))
//    }
}
