//
//  viewNoticeVC.swift
//  StudentAdmissionSQLiteApp
//
//  Created by IshaGhevariya on 15/07/21.
//

import UIKit

class viewNoticeVC: UIViewController {

    var notice: Notice?
        
        private let bgimage: UIImageView = {
            let bgimage = UIImageView()
            bgimage.image = UIImage(named: "no2")
            return bgimage
        }()
        
        private let nameTextField:UITextField = {
            let textField = UITextField()
            textField.textAlignment = .center
            textField.autocapitalizationType = .none
            textField.autocorrectionType = .no
            textField.font = UIFont(name: "", size: 20.0)
            textField.backgroundColor = .white
            textField.attributedPlaceholder = NSAttributedString(string: "Name", attributes: [NSAttributedString.Key.foregroundColor : UIColor.init(red: 0.234, green: 0.289, blue: 0.294, alpha: 1)])
            textField.layer.cornerRadius = 20
            textField.isUserInteractionEnabled = false
            return textField
        }()
        private let noticeTextField:UITextView = {
            let textField = UITextView()
            textField.textAlignment = .center
            textField.autocapitalizationType = .none
            textField.autocorrectionType = .no
            textField.font = UIFont(name: "", size: 20.0)
            textField.backgroundColor = .white
            textField.textColor = .black
            textField.isEditable = false
            
            textField.layer.cornerRadius = 20
            return textField
        }()
        

        
        override func viewDidLoad() {
            
            
            self.view.backgroundColor = .white
            super.viewDidLoad()
            
            view.addSubview(bgimage)
            view.addSubview(nameTextField)
            view.addSubview(noticeTextField)
            
            if let note = notice {
                
                nameTextField.text = note.name
                noticeTextField.text = note.notice
            }

            
        }
        
        override func viewDidLayoutSubviews() {
            super.viewDidLayoutSubviews()
            bgimage.frame = CGRect(x: 0, y: view.safeAreaInsets.top, width: view.width, height: 600)
            nameTextField.frame = CGRect(x: 40, y: view.safeAreaInsets.top + 40, width: view.width - 80, height: 40)
            noticeTextField.frame = CGRect(x: 40, y: nameTextField.bottom + 20, width: view.width - 80, height: 300)
            
        }

    }
