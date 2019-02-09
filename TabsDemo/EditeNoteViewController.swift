//
//  EditeNoteViewController.swift
//  TabsDemo
//
//  Created by David Polania on 9/24/18.
//  Copyright © 2018 David Polania. All rights reserved.
//

import UIKit

class EditeNoteViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    var noteText : String?
    
    var notesTableViewController
    : NoteTableViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if noteText != nil{
            textView.text = noteText
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelPress(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func savePressd(_ sender: Any) {
        var note = textView.text
        notesTableViewController?.notes.append(note!)
        notesTableViewController?.tableView.reloadData()
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
