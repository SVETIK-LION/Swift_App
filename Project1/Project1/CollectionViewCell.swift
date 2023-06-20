import UIKit


class CollectionViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .purple
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private var getMessage: UILabel = {
        let getMessage = UILabel()
        getMessage.backgroundColor = .purple
        getMessage.textColor = .white
        getMessage.text = "Полученное сообщение"
        getMessage.textAlignment = .center
        return getMessage
    }()
    
    private var sendMessage: UILabel = {
        let sendMessage = UILabel()
        sendMessage.backgroundColor = .systemPink
        sendMessage.textColor = .white
        sendMessage.text = "Отправленное сообщение"
        sendMessage.textAlignment = .center
        return sendMessage
    }()
    
    private func setupViews() {
        contentView.addSubview(getMessage)
        contentView.addSubview(sendMessage)
    }
    
    private func setupConstraints() {
        getMessage.translatesAutoresizingMaskIntoConstraints = false
        sendMessage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            getMessage.topAnchor.constraint(equalTo: topAnchor),
            getMessage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            getMessage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            getMessage.widthAnchor.constraint(equalToConstant: frame.size.width / 2),
            getMessage.heightAnchor.constraint(equalToConstant: frame.size.width / 5),
            
            sendMessage.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
            sendMessage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            sendMessage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
        ])
    }
}
