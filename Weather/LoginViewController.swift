import UIKit

class LoginViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var loginTF: UITextField!
    
    @IBOutlet weak var passwordTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.delegate = self
        
        let tabGesture = UITapGestureRecognizer(target: self, action: #selector(didTapOnScroll))
        view.addGestureRecognizer(tabGesture)
        view.isUserInteractionEnabled = true
        
        
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
 
    @objc func didTapOnScroll() {
        view.endEditing(true)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.x != 0 {
            scrollView.contentOffset.x = 0
        }
    }
    
//    ==========
//    transfer data to anouther screen
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        switch segue.identifier {
//        case "toSecondVC":
//            if let destination = segue.destination as? SecondViewController {
//            destination.textForLable = loginTF.text!
//            }
//        default:
//            break
//        }
//    }
    
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
       
        
        let result = checkUserCredentials()
        if !result {
            showResalt()
        }
        
        return result
    }
    
    func checkUserCredentials() -> Bool {
       return loginTF.text == "" && passwordTF.text == ""
    }
    
    func showResalt() {
        let alert = UIAlertController(title: "Error", message: "Wrong Credetional", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(alertAction)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func passwordButton(_ sender: UIButton) {
  // ========
    // (Segue)
        // performSegue(withIdentifier: "toSecondScreen", sender: self)
        
 // =======
 //       (Moodally)
//        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
//        let destinationViewController = storyBoard.instantiateViewController(identifier: "SecondViewController")
//        present(destinationViewController, animated: true, completion: nil)
        
//  =======
//        (Navigation Controller)
//        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
//        let destinationViewController = storyBoard.instantiateViewController(identifier: "SecondViewController")
//        navigationController?.pushViewController(destinationViewController, animated: true)
       
        // Navigation comtrollr:
        // push - pop
        // segue, modal:
        // present - dismiss
        
        
        
        
    }
    
    @IBAction func unwindSegueDidTab(_ segue: UIStoryboardSegue){
       // print("back")
    }
    
}



