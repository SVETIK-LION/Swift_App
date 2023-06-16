import UIKit


class CustomTableViewCell: UITableViewCell {
    
    var circleImageView: UIImageView = {
        let circleImageView = UIImageView(frame: CGRectMake(0, 0, 100, 100))
        circleImageView.image = UIImage(named: "Uni.jpeg")
        circleImageView.layer.cornerRadius =  circleImageView.frame.size.width / 2.8
        circleImageView.layer.borderWidth = 1
        circleImageView.layer.masksToBounds = false
        circleImageView.layer.borderColor = UIColor.systemPink.cgColor
        circleImageView.clipsToBounds = true
        return circleImageView
    }()
    
    var smallTextLabel: UILabel = {
        let smallTextLabel = UILabel()
        smallTextLabel.backgroundColor = .systemPurple
        smallTextLabel.textColor = .white
        smallTextLabel.textAlignment = .center
        smallTextLabel.text = "Имя Фамилия"
        return smallTextLabel
    }()
    
    var bigTextLabel: UILabel = {
        let bigTextLabel = UILabel()
        bigTextLabel.backgroundColor = .systemPurple
        bigTextLabel.textColor = .white
        bigTextLabel.textAlignment = .center
        bigTextLabel.text = "Мало кто поймет, но кто поймет, тот - мало кто"
        bigTextLabel.numberOfLines = 4
        return bigTextLabel
    }()
    
    func setupConstraints() {
        circleImageView.translatesAutoresizingMaskIntoConstraints = false
        smallTextLabel.translatesAutoresizingMaskIntoConstraints = false
        bigTextLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            circleImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            circleImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            circleImageView.heightAnchor.constraint(equalToConstant: 70),
            circleImageView.widthAnchor.constraint(equalToConstant: 70),
            
            smallTextLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            smallTextLabel.leadingAnchor.constraint(equalTo: circleImageView.trailingAnchor, constant: 30),
            smallTextLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -30),
            
            bigTextLabel.topAnchor.constraint(equalTo: smallTextLabel.topAnchor, constant: 30),
            bigTextLabel.leadingAnchor.constraint(equalTo: circleImageView.trailingAnchor, constant: 10),
            bigTextLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            bigTextLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            bigTextLabel.heightAnchor.constraint(equalToConstant: 100),
        ])
    }
    
    func setupViews() {
        contentView.addSubview(circleImageView)
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
