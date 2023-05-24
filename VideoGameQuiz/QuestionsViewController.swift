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
    
    var questionIndex = 0
    var imageNumber = 1
    
    func nextQuestion() {
        questionIndex += 1
        imageNumber += 1
        if questionIndex < questions.count {
            updateUI()
        } else {
          performSegue(withIdentifier: "Results", sender: nil)
        }
    }
    
    
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
    
    var answersChosen: [Answer] = []
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let currentAnswers = questions[questionIndex].answers

            switch sender {
            case button1:
                answersChosen.append(currentAnswers[0])
            case button2:
                answersChosen.append(currentAnswers[1])
            case button3:
                answersChosen.append(currentAnswers[2])
            case button4:
                answersChosen.append(currentAnswers[3])
            default:
                break
            }
        nextQuestion()
    }
    
    func newQuestion(using answers: [Answer]) {
        button1.setTitle(answers[0].text, for: .normal)
        button2.setTitle(answers[1].text, for: .normal)
        button3.setTitle(answers[2].text, for: .normal)
        button4.setTitle(answers[3].text, for: .normal)
        questionImageView.image = UIImage(named: "\(imageNumber)")
    }
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    func updateUI() {
        let currentQuestion = questions[questionIndex]
        let currentAnswers = currentQuestion.answers
        let totalProgress = Float(questionIndex) / Float(questions.count)
        
        navigationItem.title = "Question #\(questionIndex+1)"
        questionLabel.text = currentQuestion.text
        newQuestion(using: currentAnswers)
        
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
