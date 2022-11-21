import UIKit





class LogInViewController: UIViewController{
    
    var validationData = ValidationData()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func loadView() {

        loginView.logInButton.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        view = loginView
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let notificationCenter = NotificationCenter.default
        notificationCenter.addObserver(self, selector: #selector(adjustForKeyboard), name: UIResponder.keyboardWillHideNotification, object: nil)
        notificationCenter.addObserver(self, selector: #selector(adjustForKeyboard), name: UIResponder.keyboardWillChangeFrameNotification, object: nil)
        addTapGestureToHideKeyboard()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        let nc = NotificationCenter.default
        nc.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        nc.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc private func openProfile(sender:UIButton) {
        self.show(ProfileViewController(), sender: sender)
    }
    
    @objc func kbdHide(notification: NSNotification) {
        loginView.scrollView.contentInset.bottom = .zero
        loginView.scrollView.verticalScrollIndicatorInsets = .zero
    }
    @objc func adjustForKeyboard (notification: Notification){
        if let keyboardFrame = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue {
            let keyboardRectangle = keyboardFrame.cgRectValue
            let keyboardHeight = keyboardRectangle.height
            
            let contentOffset: CGPoint = notification.name == UIResponder.keyboardWillHideNotification
            ? .zero
            : CGPoint(x: 0, y: keyboardHeight / 2)
            loginView.scrollView.contentOffset = contentOffset
        }
        
    }
    
    private func addTapGestureToHideKeyboard() {
        let tapGesture = UITapGestureRecognizer(target: view, action: #selector(view.endEditing))
        view.addGestureRecognizer(tapGesture)
    }
    
    
    
    let loginView = LogInView()
    
    
    @objc func buttonClicked() {
     
        guard let enteredEmail = loginView.loginInput.text else {return}
        guard let enteredPassword = loginView.passwordInput.text else {return}

        let login = loginView.validEmail(email: enteredEmail)
        let password = loginView.validPassword(password: enteredPassword)

        if enteredEmail.isEmpty && enteredPassword.isEmpty {
            loginView.loginInput.shake()
            loginView.passwordInput.shake()
        } else if enteredEmail.isEmpty {
            loginView.loginInput.shake()
        } else if enteredPassword.isEmpty {
            loginView.passwordInput.shake()
        } else {
            if !password && !login {
                loginView.invalidDataLabel.text = validationData.invalidEmailAndPassword
                loginView.invalidDataLabel.textAlignment = .center
                loginView.invalidDataLabel.isHidden = false
                loginView.passwordInput.shake()
                loginView.loginInput.shake()
            } else if !password {
                loginView.invalidDataLabel.text = validationData.invalidPasswordText
                loginView.invalidDataLabel.textAlignment = .left
                loginView.invalidDataLabel.isHidden = false
                loginView.passwordInput.shake()
            } else if !login {
                loginView.invalidDataLabel.text = validationData.invalidEmailText
                loginView.invalidDataLabel.textAlignment = .center
                loginView.invalidDataLabel.isHidden = false
                loginView.loginInput.shake()
            } else {
                if loginView.loginInput.text != validationData.defaultLogin || loginView.passwordInput.text != validationData.defaultPassword {
                    let ac = UIAlertController(title: "Incorrect login or password", message: nil, preferredStyle: .alert)
                    ac.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                    present(ac, animated: true)
                } else {
                    let profileViewController = ProfileViewController()
                    navigationController?.pushViewController(profileViewController, animated: true)
                }
            }

        }

    }
    
}
extension UIView {
    func shake(count : Float = 3,for duration : TimeInterval = 0.3,withTranslation translation : Float = 3) {
        let animation = CAKeyframeAnimation(keyPath: "transform.translation.x")
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
        animation.repeatCount = count
        animation.duration = duration/TimeInterval(animation.repeatCount)
        animation.autoreverses = true
        animation.values = [translation, -translation]
        layer.add(animation, forKey: "shake")
    }
}
