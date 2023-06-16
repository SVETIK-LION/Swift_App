import UIKit


class CustomTableViewCell: UITableViewCell {
    var circleView: UIView = {
        let circleView = UIView()
        circleView.backgroundColor = .systemPink
        circleView.layer.cornerRadius = 25
        return circleView
    }()
    
    var smallTextLabel: UILabel = {
        let smallTextLabel = UILabel()
        smallTextLabel.backgroundColor = .systemPurple
        smallTextLabel.textAlignment = .center
        smallTextLabel.text = "Имя Фамилия"
        return smallTextLabel
    }()
    
    var bigTextLabel: UILabel = {
        let bigTextLabel = UILabel()
        bigTextLabel.backgroundColor = .systemPurple
        bigTextLabel.textAlignment = .center
        bigTextLabel.text = "Мало кто поймет, но кто поймет, тот - мало кто"
        bigTextLabel.numberOfLines = 4
        return bigTextLabel
    }()
    
    func setupConstraints() {
        circleView.translatesAutoresizingMaskIntoConstraints = false
        smallTextLabel.translatesAutoresizingMaskIntoConstraints = false
        bigTextLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            circleView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            circleView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            circleView.heightAnchor.constraint(equalToConstant: 50),
            circleView.widthAnchor.constraint(equalTo: circleView.heightAnchor),
            
            smallTextLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            smallTextLabel.leadingAnchor.constraint(equalTo: circleView.trailingAnchor, constant: 30),
            smallTextLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -30),
            
            bigTextLabel.topAnchor.constraint(equalTo: smallTextLabel.topAnchor, constant: 30),
            bigTextLabel.leadingAnchor.constraint(equalTo: circleView.trailingAnchor, constant: 10),
            bigTextLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            bigTextLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            bigTextLabel.heightAnchor.constraint(equalToConstant: 100),
        ])
    }
    
    func setupViews() {
        contentView.addSubview(circleView)
        contentView.addSubview(smallTextLabel)
        contentView.addSubview(bigTextLabel)
        setupConstraints()
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
