protocol WatchModule_PresenterType: AnyObject {
    func start()
}

protocol WatchModule_View: AnyObject {
    func render(configuration: WatchModule_Configuration)
}
