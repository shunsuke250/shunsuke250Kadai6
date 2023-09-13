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
        answerSlider.minimumValue = 1
        answerSlider.maximumValue = 100
    }

    private var questionValue = ViewController.makeRandomValue()

    private static func makeRandomValue() -> Int {
        Int.random(in: 1...100)
    }

    @IBAction private func didTapJudgeButton(_ sender: UIButton) {
        let answerValue = Int(answerSlider.value)
        if questionValue == answerValue {
            alert(message: "あたり\nあなたの値: \(answerValue)")
        } else {
            alert(message: "はずれ\nあなたの値: \(answerValue)")
        }
    }

    private func alert(message: String) {
        let alert = UIAlertController(title: "結果", message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "再挑戦", style: .default) { [weak self] _ in
            guard let strongSelf = self else { return }
            strongSelf.questionValue = ViewController.makeRandomValue()
            strongSelf.questionNumLabel.text = "\(strongSelf.questionValue)"
            strongSelf.dismiss(animated: true, completion: nil)
        }

        alert.addAction(okButton)
        present(alert, animated: true, completion: nil)
    }

}
