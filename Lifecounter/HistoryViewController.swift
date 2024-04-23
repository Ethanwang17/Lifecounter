import UIKit

class HistoryViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var historyLabel: UILabel!
    
    var actions: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Combine actions into a single string
        let historyText = actions.joined(separator: "\n")
        
        // Set the combined string as the text of historyLabel
        historyLabel.textAlignment = .left


        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 10 // Adjust the spacing here as needed
        paragraphStyle.firstLineHeadIndent = 100 // Adjust the padding as needed
        //        paragraphStyle.headIndent = 20 // Adjust the padding as needed
        let attributedText = NSAttributedString(string: historyText, attributes: [.paragraphStyle: paragraphStyle])
        historyLabel.attributedText = attributedText
        historyLabel.numberOfLines = 0
        historyLabel.sizeToFit()
        historyLabel.textAlignment = .left
        
        
        scrollView.contentSize = CGSize(width: historyLabel.frame.size.width, height: historyLabel.frame.size.height)
        scrollView.scrollRectToVisible(CGRect(x: 0, y: 0, width: 1, height: 1), animated: false)


    }
    
    
}
