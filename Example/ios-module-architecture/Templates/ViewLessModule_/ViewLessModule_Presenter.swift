import ModuleArchitecture

protocol ViewLessModule_PresenterDelegate: AnyObject {
    
}

final class ViewLessModule_Presenter: Presenter, ViewLessModule_PresenterType {
    
    weak var delegate: ViewLessModule_PresenterDelegate?

    override func start() {
        //
    }
}
