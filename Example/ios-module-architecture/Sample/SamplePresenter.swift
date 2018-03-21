import ModuleArchitecture

protocol SampleListenter: class {
    
}

final class SamplePresenter<View: SampleView>: SamplePresenterType {
    weak var listener: SampleListenter?
    weak var view: View?
    weak var router: SampleRouterType?
    
    func start() {
        
    }
    
    func stop() {
        
    }
}

extension SamplePresenter: SampleViewControllerDelegate {
    
}
