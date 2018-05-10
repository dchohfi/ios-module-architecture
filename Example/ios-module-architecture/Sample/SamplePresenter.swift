import ModuleArchitecture

protocol SamplePresenterDelegate: AnyObject {

}

final class SamplePresenter: Presenter, SamplePresenterType {

    weak var viewController: SamplePresenterView?
    weak var delegate: SamplePresenterDelegate?

    override func start() {
        //
    }
}

extension SamplePresenter: SampleViewControllerDelegate {

}
