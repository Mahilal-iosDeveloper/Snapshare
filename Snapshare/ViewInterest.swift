
import UIKit

class ViewInterest: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    var selectedcell = [IndexPath]()
 
    @IBOutlet weak var Clv: UICollectionView!
    
    var selected: [Int] = []
    var name = ["Nature","Fashion","Photojournalism","Event","Portrait","Fine art","Traval","Architecture","Advertising","Pet Photography ","Sports","Wedding","Sports","Still Life","Editorial","Landscape","Street","Astrophotography","Abstract","Product","Food"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

       
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return name.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cellinterest", for: indexPath)as! Cellinterest
        cell.lbl.text = name[indexPath.item]
        cell.layer.cornerRadius = 10
        
        if selected.contains(indexPath.item){
            cell.layer.backgroundColor = UIColor.purple.cgColor
        }else{
            cell.layer.backgroundColor = UIColor.white.cgColor
        }
       
        return cell
    }


    @IBAction func btnNext(_ sender: UIButton) {
        
        let pass = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Home")as! Home
        self.navigationController?.pushViewController(pass, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

        selected.append(indexPath.item)
        
        collectionView.reloadData()
        
        }
       
               }
    

