import ModuleArchitecture

final class ViewLessModule_Router: ViewLessModule_RouterType {
    
    private let presenter: ViewLessModule_PresenterType
    
    private(set) var currentChild: Router?
    
    init(presenter: ViewLessModule_PresenterType) {
        self.presenter = presenter
    }
    
    func start() {
        self.presenter.start()
    }
}
