//
//  DetailViewController.swift
//  noteApp
//
//  Created by IFTS 45 on 27/04/2026.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var descLabel: UILabel!
    var titleNote : String = "note"
    var discNote : String = "disc"
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupUi()
    }
    func setupUi(){
        descLabel.text = discNote
        title = titleNote
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
