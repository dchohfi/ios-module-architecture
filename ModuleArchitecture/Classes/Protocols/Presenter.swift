public protocol PresenterType: AnyObject {

    func start()
}

public protocol ReusablePresenterType: PresenterType {

    func prepareForReuse()
}

open class Presenter: PresenterType {

    public init() {
        //
    }

    open func start() {
        //
    }
}
