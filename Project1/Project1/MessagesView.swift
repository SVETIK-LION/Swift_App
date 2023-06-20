import UIKit


class MessagesView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemPink
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Поле для ввода текста
    private var writeTextView: UITextField = {
        let writeTextView = UITextField()
        writeTextView.borderStyle = .roundedRect
        writeTextView.backgroundColor = .white
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
    
    private func setupViews() {
        addSubview(writeTextView)
        addSubview(sendMessageButton)
    }
    
    private func setupConstraints() {
        writeTextView.translatesAutoresizingMaskIntoConstraints = false
        sendMessageButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            writeTextView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            writeTextView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            writeTextView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            
            sendMessageButton.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            sendMessageButton.leadingAnchor.constraint(equalTo: writeTextView.trailingAnchor),
            writeTextView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
        ])
    }
}
