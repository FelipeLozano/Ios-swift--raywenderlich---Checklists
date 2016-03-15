//
//  AddItemViewController.swift
//  Checklists
//
//  Created by Felipe Lozano on 15/03/16.
//  Copyright © 2016 FelipeCanayo. All rights reserved.
//

import Foundation
import UIKit
class AddItemViewController: UITableViewController{
    //oi
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func cancel() {
        dismissViewControllerAnimated(true, completion: nil)
    }
    @IBAction func done() {
        print("Cometario do Text Field: \(textField.text!)")
        dismissViewControllerAnimated(true, completion: nil)
        
        
    }
    
    //Coloca linha cinza foi desabilitado
    //In the storyboard, select the table view cell and go to the Attributes inspector.
    override func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {
            return nil
    }
    //Abilitar teclado no aparelho
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        textField.becomeFirstResponder()
    }
    
}