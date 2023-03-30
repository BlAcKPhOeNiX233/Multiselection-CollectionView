# Multiselection-CollectionView
<img src="https://user-images.githubusercontent.com/105356447/228812998-c77de0e7-adc7-4ba8-8890-82c7132992ac.png" align="right">

Example of a multi selection CollectionView in **UIKit**.

In this example, the collection view contains **buttons** wich change color after the **click**.
<p align="center">
  <img src="https://user-images.githubusercontent.com/105356447/228500237-9f54e3b3-ff34-4d65-bca9-737ddbad4d98.png" />
</p>

In a real project, buttons can be **customized** for everything requiers a click(example: filters, tic tac toe cells, ecc.).
<p align="center">
<img width="247" src="https://user-images.githubusercontent.com/105356447/228505172-7218e7f4-d20e-4f04-bda7-f19468a33566.png">
</p>

## How it works
### Scene
**CollectionView** is inside a view so the **size** can be customized.
<p align="center">
<img width="222" src="https://user-images.githubusercontent.com/105356447/228507900-08f6b336-7cd9-4efb-8557-51a07618ed98.png">
</p>

It is connected with the **view controller** using **dataSource** and **delegate** outlets.
<p align="center">
<img width="260" alt="Screenshot 2023-03-30 alle 12 22 17" src="https://user-images.githubusercontent.com/105356447/228975500-ce53b031-f57e-4a58-87cb-a25c57b4521c.png">
</p>

Each **cell** contains a button connected with the **cell's class** with a **Referencing Outlet** for the button instace and a **Sent Event** for the onClick listener.
<p align="center">
<img width="254" alt="Screenshot 2023-03-30 alle 12 09 07" src="https://user-images.githubusercontent.com/105356447/228975018-0543e959-8567-4ac7-af5d-65a29b0d2d86.png">
</p>

### Code
In **ButtonCollectionViewCell** are defined the button instance and the onClick function.
```
class ButtonCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var button: UIButton!
    
    @IBAction func onCLick(_ sender: Any) {
        <action code>
    }
}
```
**ViewController** is extended with **dataSource** and **delegate** protocols. Then are implemented their methods to **manage** the collection view.
```
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return <cells number>
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: <cell identifier>, for: indexPath) as! <cell's class>
        <cell customization code>
        return cell
    }
}
```


