import RxSwift

public protocol HomePresenterType: AnyObject {

}

public protocol HomePresenterViewType: AnyObject {

    func render(configuration: HomeConfiguration)
}

public final class HomePresenter: HomePresenterType {

    public weak var viewController: HomePresenterViewType?
}
