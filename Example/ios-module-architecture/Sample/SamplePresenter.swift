import ModuleArchitecture

protocol SamplePresenterDelegate: AnyObject {
    
}

final class SamplePresenter<View: SampleView>: SamplePresenterType {
    
    weak var delegate: SamplePresenterDelegate?
    weak var view: View?
    weak var router: SampleRouterType?
    
    func start() {
        
    }
}

extension SamplePresenter: SampleViewControllerDelegate {
    
}
