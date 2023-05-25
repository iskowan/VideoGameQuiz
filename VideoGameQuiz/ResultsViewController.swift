//
//  ResultsViewController.swift
//  VideoGameQuiz
//
//  Created by Anderson on 5/18/23.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet var resultsLavel: UILabel!
    @IBOutlet var correctionBar: UIProgressView!
    @IBOutlet var descriptionLabel: UILabel!
    
    @IBOutlet var restartButton: UIButton!
    
    var responses: [Answer] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculateQuizResult()
    }
    
    func calculateQuizResult(){
        let frequencyOfAnswers = responses.reduce(into: [:]) { (counts, answer) in
            counts[answer.type, default: 0] += 1
        }
        let frequentAnswersSorted = frequencyOfAnswers.sorted(by: { (pair1, pair2) in
            return pair1.value > pair2.value
        })
        
        
        // Do any additional setup after loading the view.
        
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    }
}
