import Foundation

protocol WatchModule_PresenterDelegate: AnyObject {

}

final class WatchModule_Presenter: WatchModule_PresenterType {

    weak var view: WatchModule_View?

    weak var delegate: WatchModule_PresenterDelegate?

    func start() {

    }
}
