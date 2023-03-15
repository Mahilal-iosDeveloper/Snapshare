
import UIKit


class ViewSearch: UIViewController,UITableViewDelegate,UITableViewDataSource{
 
  
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
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "Tblcell1", for: indexPath)as! Tblcell1
        return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "tblcell2", for: indexPath)as! tblcell2
        return cell
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0{
            return 250
        }else{
            return 400
        }
    }
  
}

