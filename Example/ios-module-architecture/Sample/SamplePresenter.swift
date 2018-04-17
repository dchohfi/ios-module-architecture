import ModuleArchitecture

protocol SamplePresenterDelegate: AnyObject {
    
}

final class SamplePresenter: SamplePresenterType {
    
    weak var viewController: SampleView?
    weak var delegate: SamplePresenterDelegate?
    
    func start() {
        
    }
}

extension SamplePresenter: SampleViewControllerDelegate {
    
}
