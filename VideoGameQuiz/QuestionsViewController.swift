//
//  QuestionsViewController.swift
//  VideoGameQuiz
//
//  Created by Anderson on 5/18/23.
//

import UIKit

class QuestionsViewController: UIViewController {
    
    
    
    @IBOutlet var questionImageView: UIImageView!
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button4: UIButton!
    
    
    
    
    var questions: [Question] = [
        Question(text: "What is the name of this enemy?", answers: [
            Answer(text: "Bokoblin", type: .correct),
            Answer(text: "Goblin", type: .wrong),
            Answer(text: "Hobgoblin", type: .wrong),
            Answer(text: "Red Goblin", type: .wrong)
        ]),
        Question(text: "What is the name of this outfit?", answers: [
            Answer(text: "Bunny Hood", type: .wrong),
            Answer(text: "Bokoblin Hood", type: .wrong),
            Answer(text: "Ravio's Hood", type: .correct),
            Answer(text: "Tingles Hood", type: .wrong)
        ]),
        Question(text: "What is the name of this enemy?", answers: [
            Answer(text: "Jelly", type: .wrong),
            Answer(text: "Blue Slug", type: .wrong),
            Answer(text: "Chuchu", type: .correct),
            Answer(text: "Blue Jelly", type: .wrong)
        ]),
        Question(text: "What is the name of this item?", answers: [
            Answer(text: "Korok Sword", type: .wrong),
            Answer(text: "Wood Sword", type: .wrong),
            Answer(text: "Forest Dweller's Sword", type: .correct),
            Answer(text: "Leaf Blade", type: .wrong)
        ]),
        Question(text: "What is the name of this power?", answers: [
            Answer(text: "Ice", type: .wrong),
            Answer(text: "Cryonis", type: .correct),
            Answer(text: "Snow", type: .wrong),
            Answer(text: "Crynosis", type: .wrong)
        ]),
        Question(text: "What is the name of this character?", answers: [
            Answer(text: "Hetsu", type: .correct),
            Answer(text: "Beedle", type: .wrong),
            Answer(text: "Petsu", type: .wrong),
            Answer(text: "Yunobo", type: .wrong)
        ]),
    ]

    func newQuestion() {
        
    }
        
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
