//
//  LoginViewController.swift
//  FlashChat
//
//  Created by 大江祥太郎 on 2021/08/04.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextField.text,let password = passwordTextField.text{
            
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let e = error{
                    print(e)
                }else{
                    //navigato to the chatViewController
                    self.performSegue(withIdentifier: "LoginToChat", sender: self)
                }
              
            }
        }
        
        
    }
    
    

}
