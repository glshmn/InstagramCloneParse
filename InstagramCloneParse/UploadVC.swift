//
//  SecondViewController.swift
//  InstagramCloneParse
//
//  Created by Gülşah AVCI on 19.09.2017.
//  Copyright © 2017 glsh. All rights reserved.
//

import UIKit

class UploadVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var postCommentText: UITextView!
    @IBOutlet weak var postButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        postImage.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UploadVC.choosePhoto))
        postImage.addGestureRecognizer(gestureRecognizer)
        
}
    @objc func choosePhoto() {
        
        let pickerController = UIImagePickerController()
        pickerController.delegate = self
        pickerController.sourceType = .photoLibrary
        pickerController.allowsEditing = true
        present(pickerController, animated: true, completion: nil)
        
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        postImage.image = info[UIImagePickerControllerEditedImage] as? UIImage
        self.dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func postButtonClicked(_ sender: Any) {
    }
    

}

