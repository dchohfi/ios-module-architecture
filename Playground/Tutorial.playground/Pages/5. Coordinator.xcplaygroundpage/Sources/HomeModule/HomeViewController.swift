import UIKit
import RxSwift

public final class HomeViewController: UIViewController, HomePresenterViewType {

    public weak var delegate: HomePresenterType?

    private lazy var component: HomeComponent = {

        let component = HomeComponent()
        component.delegate = self
        return component
    }()

    public override func loadView() {

        self.view = self.component
    }

    public override func viewDidLoad() {

        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        self.title = "Home"
    }

    public func render(configuration: HomeConfiguration) {

        self.component.render(configuration: configuration)
    }
}

extension HomeViewController: HomeComponentDelegate {

}
