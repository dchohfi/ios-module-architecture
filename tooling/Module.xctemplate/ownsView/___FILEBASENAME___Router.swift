import ModuleArchitecture

final class ___VARIABLE_productName___Router: ___VARIABLE_productName___RouterType {
    private let presenter: ___VARIABLE_productName___PresenterType
    let viewController: ___VARIABLE_productName___ViewControllerType
    private(set) var children: [Router] = []
    
    init(presenter: ___VARIABLE_productName___PresenterType, viewController: ___VARIABLE_productName___ViewControllerType) {
        self.presenter = presenter
        self.viewController = viewController
    }
    
    func start() {
        self.presenter.start()
    }
    
    func stop() {
        self.presenter.stop()
    }
}
