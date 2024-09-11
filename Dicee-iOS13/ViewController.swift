//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var diceArray: [UIImage?] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        Создаем массив со всеми кубиками
        diceArray = [ UIImage(named: "DiceOne"),
                          UIImage(named: "DiceTwo"),
                          UIImage(named: "DiceThree"),
                          UIImage(named: "DiceFour"),
                          UIImage(named: "DiceFive"),
                          UIImage(named: "DiceSix")]
    }
        
//      При нажатии на кнопку выдается рандомное изображение из массива
        @IBAction func rollButtonPressed(_ sender: UIButton) {
            diceImageView1.image = diceArray[Int.random(in: 0...5)]
            diceImageView2.image = diceArray[Int.random(in: 0...5)]
    }
}


