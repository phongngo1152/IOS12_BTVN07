//
//  ViewController.swift
//  BTVN7
//
//  Created by Nam Phong on 20/8/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailLabel: UITextField!
    
    @IBOutlet weak var passwordLabel: UITextField!
    
    @IBOutlet weak var registerLabel: UILabel!
    @IBOutlet weak var forgotLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tapLabel(label: forgotLabel)
        tapLabel(label: registerLabel)

    }
    func tapLabel(label: UILabel){
        label.isUserInteractionEnabled = true
        let tapGeture = UITapGestureRecognizer(target: self, action: #selector(labelTap))
        label.addGestureRecognizer(tapGeture)

    }
    @objc func labelTap(){
        let alert = UIAlertController(title: "Alert", message:"You press a link", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)

    }
    @IBAction func loginButton(_ sender: Any) {
        if let email = emailLabel.text{
            print(email)
        }
        if let password = passwordLabel.text{
            print(password)
        }
    }
    
}

