//
//  ViewController.swift
//  multipleChoice
//
//  Created by Gabriela Shaooli on 2019-12-05.
//  Copyright © 2019 Gabriela Shaooli. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    
    @IBOutlet weak var questionsAmount: UITextField!
    
    @IBOutlet weak var studentAnswers: UITextField!
    
    @IBOutlet weak var correctAnswers: UITextField!
    
    @IBOutlet weak var outputCheck: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // questionsAmount.text = ""
    // studentAnswers.text = ""
    // correctAnswers.text = ""
    // outputCheck.text = ""
    
    @IBAction func checkAnswer(_ sender: Any) {
        
        // Variable represent the amount of answers that are correct
        // var correctAnswers = 0
        
        // guard if no imput is provide
        guard let questionsAmountString = questionsAmount.text, let questionsAmount = Int (questionsAmountString)
            else {
                outputCheck.text = "Please enter an integer value greater than 0"
                return
        }
        
        // Number of students answers matches with the number of questions
        guard let studentInput = studentAnswers.text, studentInput.count == questionsAmount
            else {
                outputCheck.text  = "Please be sure you enter exactly \(questionsAmount) student answers"
                return
        }
        // Correct answers match with the number of questions
        guard let correctInput = correctAnswers.text, correctInput.count == questionsAmount
            else {
                outputCheck.text = "Please be sure you enter exactly \(questionsAmount) correct answers"
                return
        }
        //Allow to write only A, B, C, D, E into the students answer text field
        let allowedAnswers = "ABCDE"
        for studentsLetters in studentInput {
            if allowedAnswers.contains(studentsLetters) == false {
                outputCheck.text = "Student answers contain invalid choices. Please ensure that only characters A,B,C,D or E are used."
                return
            }
            //Allow to write only A, B, C, D, E into the correct answer text field
            for answers in correctInput {
                if allowedAnswers.contains(answers) == false {
                    outputCheck.text = "Correct answers contain invalid choices. Please ensure that only characters A,B,C,D or E are used."
                    return
                }
                
                
            }
        }
        
        
    }
    
}
