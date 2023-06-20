import UIKit


class CollectionViewController: UICollectionViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(textTopLabel)
        view.addSubview(messagesView)
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "collectionCell")
        setupConstraints()
    }
    
    // Текс под челкой
    private var textTopLabel: UILabel = {
        let textTopLabel = UILabel()
        textTopLabel.textAlignment = .center
        textTopLabel.backgroundColor = .systemPink
        textTopLabel.textColor = .white
        textTopLabel.text = "Имя контакта"
        textTopLabel.contentMode = .bottom
        
        return textTopLabel
    }()
    
    private var messagesView: UIView = {
        let messagesView = MessagesView()
        return messagesView
    }()
    
    
    // Клетка с сообщениями из CollectionViewController
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        2
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath)
        guard let cell = cell as? CollectionViewCell else {
            return UICollectionViewCell()
        }
        return cell
    }
    
    private func setupConstraints() {
        textTopLabel.translatesAutoresizingMaskIntoConstraints = false
        messagesView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            textTopLabel.topAnchor.constraint(equalTo: view.topAnchor),
            textTopLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            textTopLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            textTopLabel.heightAnchor.constraint(equalToConstant: view.frame.size.width / 4),

            messagesView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            messagesView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            messagesView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            messagesView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            messagesView.heightAnchor.constraint(equalToConstant: view.frame.size.width / 5),
        ])
    }
}
