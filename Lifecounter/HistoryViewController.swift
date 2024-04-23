import UIKit

class HistoryViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var historyLabel: UILabel!
    
    var actions: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let historyText = actions.joined(separator: "\n")
        
        historyLabel.textAlignment = .left
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 10
        paragraphStyle.firstLineHeadIndent = 100
        let attributedText = NSAttributedString(string: historyText, attributes: [.paragraphStyle: paragraphStyle])
        historyLabel.attributedText = attributedText
        historyLabel.numberOfLines = 0
        historyLabel.sizeToFit()
        historyLabel.textAlignment = .left
        scrollView.contentSize = CGSize(width: historyLabel.frame.size.width, height: historyLabel.frame.size.height)
        scrollView.scrollRectToVisible(CGRect(x: 0, y: 0, width: 1, height: 1), animated: false)
        
    }
}
