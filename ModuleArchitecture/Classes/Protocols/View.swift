public protocol View: class {
    associatedtype ViewModelType: ViewModel
    func show(viewModel: ViewModelType)
}
