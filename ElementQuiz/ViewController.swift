//
//  ViewController.swift
//  ElementQuiz
//
//  Created by Macbook on 11/13/17.
//  Copyright © 2017 Eric Witowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
       var currentElementIndex = 0
       let elementList = ["Carbon", "Gold", "Chlorine", "Sodium"]
    func updateElement(){
        answerLabel.text = "?"
        let elementName =  elementList[currentElementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
    }
    
//    struct ChemicalElement {
//        let symbol: String
//        let name: String
//        let atomicWeight: Int
//        let imageName: String
//    }
    
    
    ///Mark: ImageView
    @IBOutlet weak var imageView: UIImageView!
    
    ///Mark: Label
    @IBOutlet weak var answerLabel: UILabel!
    
    ///Mark: Button (outlet_action)(ShowAnswer)
    @IBOutlet weak var showAnswer: UIButton!
    @IBAction func showNextAnswer(_ sender: Any) {
        answerLabel.text = elementList[currentElementIndex]    }
    
    
    //Mark: Button(outlet_action)(NextElement)
    @IBOutlet weak var nextElement: UIButton!
    @IBAction func goToNextElement(_ sender: Any) {
        currentElementIndex += 1
        if currentElementIndex >= elementList.count{
            currentElementIndex = 0
        }
        updateElement()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateElement()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

