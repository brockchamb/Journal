//
//  EntryDetailViewController.swift
//  Journal
//
//  Created by admin on 2/4/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class EntryDetailViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var entryTitleTextField: UITextField!
    @IBOutlet weak var entryBodyTextField: UITextView!
    @IBAction func entryClearButton(sender: UIButton) {
        
        entryTitleTextField.text = ""
        entryBodyTextField.text = ""
    }

    @IBAction func saveEntryButtonTapped(sender: AnyObject) {
        
        let entry = Entry(title: entryTitleTextField.text!, text: entryBodyTextField.text)
        EntryController.sharedController.addEntry(entry)
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
    
  
    var entry: Entry?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
       
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Text Field Delegation
    
     func textFieldShouldReturn(textField: UITextField) -> Bool {
        entryTitleTextField.resignFirstResponder()
        return true
    }
    
    func updateWithEntry(entry: Entry) {
        entryTitleTextField.text = entry.title
        entryBodyTextField.text = entry.text
        
    }

    
    // MARK: - Navigation

   
   


}
