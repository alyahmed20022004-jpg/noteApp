//
//  ViewController.swift
//  noteApp
//
//  Created by IFTS 45 on 22/04/2026.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var TabellaView:  UITableView!
    var tutteLeNote: [NoteModel] = [
        NoteModel(title: "titolo", description: "aly puzza"),
        NoteModel(title: "titolo", description: "aly ha culo"),
        NoteModel(title: "titolo", description: "aly mi deve un rematch")
    ]
    var noteToPassare: NoteModel?
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tutteLeNote.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "") as! NoteTableViewCell
        
        cell.titleLbl.text = tutteLeNote[indexPath.row].title
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        noteToPassare = tutteLeNote[indexPath.row]
        performSegue(withIdentifier: "", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //you need to farlo dopo 
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //test
        TabellaView.dataSource = self
        TabellaView.delegate = self
    }


}

