import UIKit


class CollectionViewController: UICollectionViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(textTopLabel)
        view.addSubview(writeTextView)
        view.addSubview(sendMessageButton)
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "collectionCell")
        setupConstraints()
    }
    
    // Текс под челкой
    private var textTopLabel: UILabel = {
        let textTopLabel = UILabel()
        textTopLabel.backgroundColor = .systemPink
        textTopLabel.textColor = .white
        textTopLabel.text = "Имя контакта"
        return textTopLabel
    }()
    
    // Поле для ввода текста
    private var writeTextView: UITextField = {
        let writeTextView = UITextField()
        writeTextView.borderStyle = .roundedRect
        writeTextView.backgroundColor = .systemPink
        writeTextView.placeholder = "Ваше сообщение"
        writeTextView.textColor = .white
        writeTextView.textAlignment = .center
        writeTextView.font = .systemFont(ofSize: 16)
        return writeTextView
    }()
    
    // Кнопка отправки сообщения
    private var sendMessageButton: UIButton = {
        let sendMessageButton = UIButton()
        sendMessageButton.backgroundColor = .purple
        sendMessageButton.setTitle("Отправить".uppercased(), for: .normal)
        sendMessageButton.setTitleColor(.white, for: .normal)
        sendMessageButton.setTitleColor(.systemYellow, for: .highlighted)
        return sendMessageButton
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
        writeTextView.translatesAutoresizingMaskIntoConstraints = false
        sendMessageButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            textTopLabel.topAnchor.constraint(equalTo: view.topAnchor),
            textTopLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            textTopLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            writeTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            writeTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            writeTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            sendMessageButton.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            sendMessageButton.leadingAnchor.constraint(equalTo: writeTextView.trailingAnchor),
            writeTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
        
    }
}
