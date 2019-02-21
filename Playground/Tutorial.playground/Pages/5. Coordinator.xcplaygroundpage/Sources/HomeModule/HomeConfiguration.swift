import Foundation
import UIKit

public struct HomeConfiguration {

    private let titleText: String

    var title: NSAttributedString {
        
        let attirbutes = [NSAttributedStringKey.font : UIFont.systemFont(ofSize: 40, weight: .light)]
        return NSAttributedString(string: self.titleText, attributes: attirbutes)
    }

    init(title: String) {

        self.titleText = title
    }
}
