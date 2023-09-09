//
//  ViewController.swift
//  Slider23-09-09
//
//  Created by 副山俊輔 on 2023/09/09.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var questionNumLabel: UILabel!
    @IBOutlet private weak var answerSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        questionNumLabel.text = "\(questionValue)"
    }

    private lazy var questionValue = randomValue

    private var randomValue: Int {
        return Int.random(in: 1...100)
    }

    @IBAction private func didTapJudgeButton(_ sender: UIButton) {
        let answerValue = Int(answerSlider.value * 100)
        if questionValue == answerValue {
            alert(message: "あたり\nあなたの値: \(answerValue)")
            questionValue = randomValue
            questionNumLabel.text = "\(questionValue)"
        } else {
            alert(message: "はずれ\nあなたの値: \(answerValue)")
        }
    }

    private func alert(message: String) {
        let alert = UIAlertController(title: "結果", message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default) { (_) in
            self.dismiss(animated: true, completion: nil)
        }

        alert.addAction(okButton)
        present(alert, animated: true, completion: nil)
    }

}
