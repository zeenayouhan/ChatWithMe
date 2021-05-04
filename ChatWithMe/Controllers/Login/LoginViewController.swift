//
//  Login ViewController.swift
//  ChatWithMe
//
//  Created by Zeena Youhan on 2021-05-03.
//

import UIKit

class LoginViewController: UIViewController {
    private let scrollView : UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.clipsToBounds = true
        return scrollView
        
    }()
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Logo")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let emailField: UITextField = {
        let field = UITextField()
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.returnKeyType = .continue
        field.layer.cornerRadius = 12
        field.layer.borderWidth = 1
        field.layer.borderColor = UIColor.lightGray.cgColor
        field.placeholder = " Email Address .."
        return field
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Log In"
        view.backgroundColor = .white
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Register", style:  .done, target: self, action: #selector(didTapRegister))
        
        view.addSubview(scrollView)
        scrollView.addSubview(imageView)
        scrollView.addSubview(emailField)
        
        

}
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        scrollView.frame = view.bounds
        let size = scrollView.width/3
        imageView.frame = CGRect(x: (scrollView.width-size)/3.5, y: 20, width: size*2,height: size*2)
        emailField.frame = CGRect(x: 30, y: imageView.bottom+10, width: scrollView.width-60,height: 52)
    }
    
    @objc private func didTapRegister(){
        let vc = RegisterViewController()
        vc.title = "Create Account"
        
        navigationController?.pushViewController(vc, animated: true)
    }
}
