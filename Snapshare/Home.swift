
import UIKit

class Home: UIViewController,UITableViewDelegate,UITableViewDataSource{
 
  
    override func viewDidLoad() {
        super.viewDidLoad()

   
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return 1
        }else{
            return 10
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
        let cell = tableView.dequeueReusableCell(withIdentifier: "TblcellHome", for: indexPath)as! TblcellHome
        return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "TblcellHome2", for: indexPath)as! TblcellHome2
            return cell
        }
        
    
   
}
  
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 200
            
        }else{
            return 400
        }
    }
    
}
