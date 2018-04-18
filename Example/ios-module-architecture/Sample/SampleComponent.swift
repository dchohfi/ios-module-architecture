import UIKit
import ModuleArchitecture

final class SampleComponent: UIView, Component {
    
    init() {

        super.init(frame: .zero)
        self.customizeInterface()
    }
    
    required init?(coder aDecoder: NSCoder) { fatalError("Not implemented") }
}

extension SampleComponent {
    
    enum Configuration {

    }
    
    func render(configuration: Configuration) {

        switch configuration {

        }
    }
}

extension SampleComponent {
    
    private func customizeInterface() {
        
        self.addSubviews()
        self.addConstraints()
    }
    
    private func addSubviews() {
        
    }
    
    private func addConstraints() {
        
    }
}
