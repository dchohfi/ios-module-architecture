public protocol View: AnyObject {
    associatedtype ViewStateType: ViewState
    func render(viewState: ViewStateType)
}
