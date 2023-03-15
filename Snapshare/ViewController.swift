
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtemail: UITextField!
    @IBOutlet weak var txtpass: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    
    @IBAction func btnFb(_ sender: UIButton) {
    }
    
    @IBAction func btnGoogle(_ sender: UIButton) {
    }
    
    
    @IBAction func btnSignin(_ sender: UIButton) {
   
        
    }
    

    @IBAction func btnSignup(_ sender: UIButton) {
        
        let pass = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Registration")as! Registration
        self.navigationController?.pushViewController(pass, animated: true)
        
        
    }
}

