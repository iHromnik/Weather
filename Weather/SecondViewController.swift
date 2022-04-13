import UIKit

class SecondViewController: UIViewController {

    @IBOutlet private weak var emailLable: UILabel!
    
    public var textForLable: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emailLable.text = textForLable
    }
    

    @IBAction func dismissButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
