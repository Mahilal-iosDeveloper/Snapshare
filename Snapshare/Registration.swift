
import UIKit

class Registration: UIViewController {
    
    @IBOutlet weak var txtname: UITextField!
    

    @IBOutlet weak var txtemail: UITextField!
    
    @IBOutlet weak var txtpassword: UITextField!
    
    @IBOutlet weak var txtRepassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func btnFb(_ sender: UIButton) {
    }
    
    
    @IBAction func btnGoogle(_ sender: UIButton) {
    }
    
    
    @IBAction func btnSignup(_ sender: UIButton) {
        
        let pass = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Profile")as! Profile
        self.navigationController?.pushViewController(pass, animated: true)
        
    }
    
    
    @IBAction func btnSignin(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    

   
}
