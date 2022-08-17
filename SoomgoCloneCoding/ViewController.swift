//
//  ViewController.swift
//  SoomgoCloneCoding
//
//  Created by Rebecca Ha on 2022/06/07.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var createAccountButton: UIButton!
    @IBOutlet weak var searchTextField: UITextField!
    
    @IBOutlet weak var hairImage: UIImageView!
    @IBOutlet weak var computerImage: UIImageView!
    @IBOutlet weak var meshImage: UIImageView!
    @IBOutlet weak var cloudImage: UIImageView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        button()
        images()
        textField()
    }

    @IBAction func createAccountButtonTapped(_ sender: Any) {
        
    }
    
    @IBAction func seeAllButtonTapped(_ sender: Any) {
    }
    
    func button() {
        //고수가입 button 테두리 깎기.
        createAccountButton.clipsToBounds = true
        createAccountButton.layer.cornerRadius = 7
        
    }
    
    func textField() {
//        searchBar.backgroundColor = UIColor.white
//        self.searchBar.layer.borderColor = UIColor.systemMint.cgColor
//        searchBar.layer.borderWidth = 2
//        searchBar.layer.cornerRadius = 5
//        searchBar.clipsToBounds = true
        
        //Textfield setup -> SearchBar으로 사용도 가능.
        let overlayButton = UIButton(type: .custom)
        let searchImage = UIImage(systemName: "magnifyingglass")
        overlayButton.tintColor = .lightGray
        overlayButton.setImage(searchImage, for: .normal)
        overlayButton.sizeToFit()

        // Assign the overlay button to the text field
        searchTextField.leftView = overlayButton
        searchTextField.leftViewMode = .always
        
        //TextField 테두리 설정
        let myColor : UIColor = UIColor.systemMint
        searchTextField.layer.borderColor = myColor.cgColor

        searchTextField.layer.cornerRadius = 7
        searchTextField.layer.masksToBounds = true
//        searchTextField.layer.borderColor = UIColor( red: 23/255, green: 183/255, blue: 152/255, alpha: 1.0)
        searchTextField.layer.borderWidth = 2

    }
 
    
    func images(){
        hairImage.clipsToBounds = true
        hairImage.layer.cornerRadius = 7
        computerImage.clipsToBounds = true
        computerImage.layer.cornerRadius = 7
        meshImage.clipsToBounds = true
        meshImage.layer.cornerRadius = 7
        cloudImage.clipsToBounds = true
        cloudImage.layer.cornerRadius = 7
    }
}


//
//extension UIColor {
//    static let mintColor : UIColor = UIColor(named: "mint")
//}
