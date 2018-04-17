import ModuleArchitecture

final class ViewLessModule_Coordinator: ViewLessModule_CoordinatorType {
    
    private let presenter: ViewLessModule_PresenterType
    
    private(set) var currentChild: Coordinator?
    
    init(presenter: ViewLessModule_PresenterType) {
        self.presenter = presenter
    }
    
    func start() {
        self.presenter.start()
    }
}
