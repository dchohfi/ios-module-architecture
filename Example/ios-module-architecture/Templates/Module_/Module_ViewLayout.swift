import UIKit
import ModuleArchitecture

final class Module_ViewLayout: UIView {
    init() {
        super.init(frame: .zero)
        self.customizeInterface()
    }
    
    required init?(coder aDecoder: NSCoder) { fatalError("Not implemented") }
    
    func show(viewModel: Module_ViewModel) {
        
    }
}

extension Module_ViewLayout {
    private func customizeInterface() {
        self.addSubviews()
        self.addConstraints()
    }
    
    private func addSubviews() {
        
    }
    
    private func addConstraints() {
        
    }
}
