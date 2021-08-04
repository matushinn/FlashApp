//
//  RegisterViewController.swift
//  FlashChat
//
//  Created by 大江祥太郎 on 2021/08/03.
//

import UIKit
import FirebaseAuth

class RegisterViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func registerPressed(_ sender: UIButton) {
        
        if let email = emailTextField.text,let password = passwordTextField.text{
            
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error{
                    print(e.localizedDescription)
                }else{
                    //navigato to the chatViewController
                    self.performSegue(withIdentifier: "RegisterToChat", sender: self)
                    
                }
            }
        }
    }
    
}