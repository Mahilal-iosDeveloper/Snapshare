

import UIKit

class Age: UIViewController {
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btnnext: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        btnnext.layer.cornerRadius = 25
    }
    
  
    @IBAction func btn(_ sender: UIButton) {
        
        let pass = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewInterest")as! ViewInterest
        self.navigationController?.pushViewController(pass, animated: true)
    }
    
    @IBAction func btnage(_ sender: UIButton) {
    
        if sender.tag == 0{
           
            btn1.backgroundColor = .blue
            btn2.backgroundColor = .white
            btn3.backgroundColor = .white
            btn4.backgroundColor = .white
            btn5.backgroundColor = .white
        } else if sender.tag == 1{
         
            btn1.backgroundColor = .white
            btn2.backgroundColor = .blue
            btn3.backgroundColor = .white
            btn4.backgroundColor = .white
            btn5.backgroundColor = .white
        } else if sender.tag == 2{
        
            btn1.backgroundColor = .white
            btn2.backgroundColor = .white
            btn3.backgroundColor = .blue
            btn4.backgroundColor = .white
            btn5.backgroundColor = .white
        } else if sender.tag == 3{
         
            btn1.backgroundColor = .white
            btn2.backgroundColor = .white
            btn3.backgroundColor = .white
            btn4.backgroundColor = .blue
            btn5.backgroundColor = .white
        } else if sender.tag == 4{
        
            btn1.backgroundColor = .white
            btn2.backgroundColor = .white
            btn3.backgroundColor = .white
            btn4.backgroundColor = .white
            btn5.backgroundColor = .blue
        }
}
}
