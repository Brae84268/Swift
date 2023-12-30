//
//  MapViewController.swift
//  MovieBrae
//
//  Created by Induk CS on 2023/06/07.
//

import UIKit
import WebKit

class MapViewController: UIViewController {

    @IBOutlet weak var blog: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = "https://brae.tistory.com/"
        guard let url = URL(string: url) else { return }
        let request = URLRequest(url: url)
        blog.load(request)
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
