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
        
    }

    @IBAction private func didTapJudgeButton(_ sender: UIButton) {
    private func alert(message: String) {
        let alert = UIAlertController(title: "結果", message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default) { (_) in
            self.dismiss(animated: true, completion: nil)
        }

        alert.addAction(okButton)
        present(alert, animated: true, completion: nil)
    }
    
}

