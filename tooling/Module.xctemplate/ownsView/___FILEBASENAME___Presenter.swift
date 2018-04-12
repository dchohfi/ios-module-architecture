import ModuleArchitecture

protocol ___VARIABLE_productName___PresenterDelegate: AnyObject {
    
}

final class ___VARIABLE_productName___Presenter<View: ___VARIABLE_productName___View>: ___VARIABLE_productName___PresenterType {
    
    weak var delegate: ___VARIABLE_productName___PresenterDelegate?
    weak var view: View?
    weak var router: ___VARIABLE_productName___RouterType?
    
    func start() {
        
    }
}

extension ___VARIABLE_productName___Presenter: ___VARIABLE_productName___ViewControllerDelegate {
    
}
