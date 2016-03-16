//
//  AddItemViewController.swift
//  Checklists
//
//  Created by Felipe Lozano on 15/03/16.
//  Copyright © 2016 FelipeCanayo. All rights reserved.
//

import Foundation
import UIKit

// Metodo protocolo
protocol AddItemViewControllerDelegate: class {
    func addItemViewControllerDidCancel(controller: AddItemViewController)
    func addItemViewController(controller: AddItemViewController, didFinishAddingItem item: ChecklistItem)
}


class AddItemViewController: UITableViewController , UITextFieldDelegate{
    //Variavel
    weak var delegate: AddItemViewControllerDelegate?
    
   // @IBOutlet weak var textField: UITextField!
   
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var doneBarButton: UIBarButtonItem!
    
    @IBAction func cancel() {
        //dismissViewControllerAnimated(true, completion: nil)
        delegate?.addItemViewControllerDidCancel(self)
    }
    @IBAction func done() {
        print("Cometario do Text Field: \(textField.text!)")
        //dismissViewControllerAnimated(true, completion: nil)
        let item = ChecklistItem()
        item.text = textField.text!
        item.checked = false
            
        delegate?.addItemViewController(self, didFinishAddingItem: item)
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
    //Na hora precionar DONE
    func textField(textField: UITextField,
        shouldChangeCharactersInRange range: NSRange,
        replacementString string: String) -> Bool {
        let oldText: NSString = textField.text!
        let newText: NSString = oldText.stringByReplacingCharactersInRange(
        range, withString: string)
        //doneBarButton.enabled = (newText.length > 0)
        if newText.length > 0 {
        doneBarButton.enabled = true
    } else {
        doneBarButton.enabled = false
        }
        return true
    }
    
    
}