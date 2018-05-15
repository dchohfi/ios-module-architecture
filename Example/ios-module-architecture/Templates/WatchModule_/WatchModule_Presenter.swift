import Foundation

class WatchModule_Presenter: WatchModule_PresenterType {

    // MARK: - Dependencies

    private weak var view: WatchModule_View?

    // MARK: - Init

    init(view: WatchModule_View) {

        self.view = view
    }

    func start() {

    }
}
