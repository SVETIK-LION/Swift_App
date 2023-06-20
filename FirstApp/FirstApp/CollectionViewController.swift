import UIKit


class ColectionViewController: UICollectionViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "collectionCell")
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        12
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath)
        guard let cell = cell as? CollectionViewCell else {
            return UICollectionViewCell()
        }
        
        cell.clickCell = { [weak self] image in
            self?.navigationController?.pushViewController(ImageViewController(image: image), animated: true)
        }
        return cell
    }
}
