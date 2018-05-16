import Foundation

protocol WatchModule_PresenterDelegate: AnyObject {

}

final class WatchModule_Presenter: WatchModule_PresenterType {

    // MARK: - Dependencies

    private weak var view: WatchModule_View?

    // MARK: - Delegate

    weak var delegate: WatchModule_PresenterDelegate?

    // MARK: - Init

    init(view: WatchModule_View) {

        self.view = view
    }

    func start() {

    }
}
