//
//  ViewController.swift
//  RockScissorPaper
//
//  Created by 修海锟 on 2017/3/27.
//  Copyright © 2017年 修海锟. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var doreChoice: UIImageView!
    @IBOutlet weak var yourChoice: UIImageView!
    @IBOutlet weak var yourName: UILabel!
    @IBOutlet weak var winOrLose: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        winOrLose.text = ""
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func beginGame(_ sender: UIButton) {
        let title = "Rock or Scissor or Paper"
        let message = "Select!"
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
        
        let rock = UIAlertAction(title: "石头", style: .default, handler: { (_) in
            self.doreChoice.image = UIImage(named: "rock")
            self.yourChoice.image = UIImage(named: "rock")
            self.winOrLose.text = "Equal"
        })
        let scissor = UIAlertAction(title: "剪刀", style: .default, handler: { (_) in
            self.doreChoice.image = UIImage(named: "rock")
            self.yourChoice.image = UIImage(named: "scissor")
            self.winOrLose.text = "You Lost"
        })
        let paper = UIAlertAction(title: "布", style: .default, handler: { (_) in
            self.doreChoice.image = UIImage(named: "rock")
            self.yourChoice.image = UIImage(named: "paper")
            self.winOrLose.text = "You Win"
        })
        let cancel = UIAlertAction(title: "取消", style: .cancel, handler: { (_) in
            self.doreChoice.image = nil
            self.yourChoice.image = nil
            self.winOrLose.text = ""
        })
        
        alert.addAction(rock)
        alert.addAction(scissor)
        alert.addAction(paper)
        alert.addAction(cancel)
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func whatIsYourName(_ sender: UIButton) {
        let title = "Input Your Name"
        let message = "What's your name?"
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addTextField(configurationHandler: { (textField: UITextField!) -> Void in
            textField.placeholder = "name"
        })
        let cancel = UIAlertAction(title: "OK", style: .default, handler: { (_) in
            self.yourName.text = alert.textFields?.first!.text
        })
        
        alert.addAction(cancel)
        
        self.present(alert, animated: true, completion: nil)
    }
    
}

