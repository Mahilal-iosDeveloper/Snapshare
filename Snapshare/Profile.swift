
import UIKit

class Profile: UIViewController {

    @IBOutlet weak var btnProfile: UIButton!
    
    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var imgnext: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imgProfile.layer.cornerRadius = 125
        imgnext.layer.cornerRadius = 25
        btnProfile.layer.cornerRadius = 25
    }
    

   
    @IBAction func btnNext(_ sender: UIButton) {
        
        let pass = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Age")as! Age
        self.navigationController?.pushViewController(pass, animated: true)
    }
    
    
    @IBAction func btnSkip(_ sender: UIButton) {
    }
    
    
    
}
