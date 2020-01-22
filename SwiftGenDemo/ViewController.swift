//
//  ViewController.swift
//  SwiftGenDemo
//
//  Created by valmet on 2020/01/22.
//  Copyright © 2020 valmet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private var capybaraLabel: UILabel!
    @IBOutlet private var capybaraImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        capybaraLabel.text = L10n.capybara
        capybaraImageView.image = Asset.capybara.image
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch StoryboardSegue.Main(segue) {
        case .secondViewController:
            if let second = segue.destination as? SecondViewController {
                second.text = capybaraLabel.text
            }
        default:
            break
        }
    }
    
    @IBAction func transitionUseSegue(_ sender: Any) {
        perform(segue: StoryboardSegue.Main.secondViewController)
    }
    
    @IBAction func transitionUseInstantiateViewController(_ sender: UIButton) {
        let secondViewController = StoryboardScene.Second.secondViewController.instantiate()
        secondViewController.text = capybaraLabel.text
        navigationController?.pushViewController(secondViewController, animated: true)
    }
}

