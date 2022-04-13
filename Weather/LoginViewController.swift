import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var loginTF: UITextField!
    
    @IBOutlet weak var passwordTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector: #selector(keybordWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keybordWillHide(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)

        }

         
    
    @objc func keybordWillShow (notification: Notification) {
        guard let kbSize = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return }
        let insets = UIEdgeInsets(top: 0, left: 0, bottom: kbSize.size.height, right: 0)
        scrollView.contentInset = insets
    }

    @objc func keybordWillHide (notification: Notification) {
        let insets = UIEdgeInsets.zero
        scrollView.contentInset = insets
    }
 
    
    @IBAction func passwordButton(_ sender: UIButton) {
    }
    
}
