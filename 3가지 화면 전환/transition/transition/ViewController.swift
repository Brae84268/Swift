//
//  ViewController.swift
//  transition
//
//  Created by 소프트웨어컴퓨터 on 2024/01/05.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func goRed(_ sender: Any) {
        let goRedVC = storyboard?.instantiateViewController(withIdentifier: "red")
        goRedVC?.modalTransitionStyle = .coverVertical
        present(goRedVC!, animated: true, completion: nil)
    }
    @IBAction func goOrange(_ sender: Any) {
        if let goOrange = storyboard?.instantiateViewController(withIdentifier: "Orange")
        {
            navigationController?.pushViewController(goOrange, animated: true)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

