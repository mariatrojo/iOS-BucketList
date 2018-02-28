//
//  AddItemTableViewController.swift
//  bucketList
//
//  Created by Maria Teresa Rojo on 1/16/18.
//  Copyright © 2018 Maria Rojo. All rights reserved.
//

import UIKit

class AddItemTableViewController: UITableViewController {

    weak var delegate: AddItemTableViewControllerDelegate?
    
    var item: String?
    var indexPath: NSIndexPath?
    
    @IBOutlet weak var itemTextField: UITextField!
    
    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        delegate?.cancelButtonPressed(by: self)
    }
    
    // once user is finished editing and presses save, send back text and indexPath if exists
    @IBAction func saveButtonPressed(_ sender: UIBarButtonItem) {
        let text = itemTextField.text!
        delegate?.itemSaved(by: self, with: text, at: indexPath)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //set the text of the text field to the string you clicked on
        itemTextField.text = item
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
