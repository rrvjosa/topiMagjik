//
//  ViewController.swift
//  Topi Magjik
//
//  Created by Rinor Bytyci on 9/17/18.
//  Copyright © 2018 Rinor Bytyci. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Lidhim UIImageView nga Storyboard me kod, duke perdorur IBOutlets
    @IBOutlet weak var fotoja: UIImageView!
    
    //Deklarojme nje varg qe mban emrat e fotove
    let fotot:[String] = ["topi1", "topi2", "topi3", "topi4", "topi5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //Lidhim butonin Luaj nga Storyboard me kod duke perdorur IBActions
    @IBAction func btnLuaj(_ sender: Any) {
        //Gjenerojme nje numer Random duke perdorur metoden arc4random_uniform(upper_bound)
        //ku si parameter i japim limitin e siperm te numrit
        let numriRandom:Int = Int.random(in: 0..<fotot.count)
        
        //Nga vargu nxjerrim nje element random (duke perdorur numrin random)
        let fotojaRandom:String = fotot[numriRandom]
        
        //Variables fotoja qe eshte e lidhur me storyboard, i japim tek attribute (property) image nje UIImage qe e krijojme duke e inicialuzuar me emrin e fotos si parameter.
        fotoja.image = UIImage.init(named: fotojaRandom)
    }
    

}

