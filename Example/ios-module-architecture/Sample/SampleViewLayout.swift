import UIKit
import ModuleArchitecture

final class SampleViewLayout: UIView {
    
    init() {
        super.init(frame: .zero)
        self.customizeInterface()
    }
    
    required init?(coder aDecoder: NSCoder) { fatalError("Not implemented") }
    
    func render(viewState: SampleViewState) {
        
    }
}

extension SampleViewLayout {
    
    private func customizeInterface() {
        self.addSubviews()
        self.addConstraints()
    }
    
    private func addSubviews() {
        
    }
    
    private func addConstraints() {
        
    }
}
