import ModuleArchitecture

protocol WatchModule_PresenterType: PresenterType {

}

protocol WatchModule_View: AnyObject {
    func render(configuration: WatchModule_Configuration)
}

protocol WatchModule_CoordinatorType: AnyObject {

}
