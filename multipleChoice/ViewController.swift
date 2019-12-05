//
//  ViewController.swift
//  multipleChoice
//
//  Created by Gabriela Shaooli on 2019-12-05.
//  Copyright © 2019 Gabriela Shaooli. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate{

    @IBOutlet weak var howManyQuestions: UITextField!
    
    @IBOutlet weak var studentAnswers: UITextField!
    
    @IBOutlet weak var correctAnswers: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBOutlet weak var checkStudent: UITextView!
}

