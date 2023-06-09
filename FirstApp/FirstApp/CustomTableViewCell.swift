import UIKit


class CustomTableViewCell: UITableViewCell {
    var roundView: UIView = {
        let roundLabel = UIView()
        roundLabel.layer.cornerRadius = 25
//        roundLabel.backgroundColor = .systemPink
        
        return roundLabel
    }()
    
    private var label1: UILabel = {
        let label1 = UILabel()
        label1.backgroundColor = .systemPink
        label1.textColor = .white
        return label1
    }()
    
    private var label2: UILabel = {
        let label2 = UILabel()
        label2.backgroundColor = .systemPink
        label2.textColor = .white
        return label2
    }()
    
    private var label3: UILabel = {
        let label3 = UILabel()
        label3.backgroundColor = .systemPink
        label3.textColor = .white
        return label3
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        contentView.addSubview(roundView)
        contentView.addSubview(label1)
        contentView.addSubview(label2)
        contentView.addSubview(label3)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        roundView.translatesAutoresizingMaskIntoConstraints = false
        label1.translatesAutoresizingMaskIntoConstraints = false
        label2.translatesAutoresizingMaskIntoConstraints = false
        label3.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            roundView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            roundView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            roundView.heightAnchor.constraint(equalToConstant: 50),
            roundView.widthAnchor.constraint(equalTo: roundView.heightAnchor),
            
            label1.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            label1.leadingAnchor.constraint(equalTo: roundView.trailingAnchor, constant: 10),
            label1.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            
            label2.topAnchor.constraint(equalTo: label1.bottomAnchor, constant: 10),
            label2.leadingAnchor.constraint(equalTo: label1.leadingAnchor),
            label2.trailingAnchor.constraint(equalTo: label1.trailingAnchor),
            
            label3.topAnchor.constraint(equalTo: label2.bottomAnchor, constant: 10),
            label3.leadingAnchor.constraint(equalTo: label2.leadingAnchor),
            label3.trailingAnchor.constraint(equalTo: label2.trailingAnchor),
            label3.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            
        ])
    }
    
    func setCircleColor(lat: Double?, lon: Double?) {
        guard let lat = lat, let lon = lon else {
            roundView.backgroundColor = .gray
            return
        }
        if lat + lon < 100 {
            roundView.backgroundColor = UIColor(red: 51/255, green: 204/255, blue: 1, alpha: 1)
        } else {
            roundView.backgroundColor = UIColor(red: 204/255, green: 0/255, blue: 153/255, alpha: 1)
        }
    }
    
    func setTextForLabels(model: TownModel) {
        label1.text = model.name
        label2.text = model.timezone
        label3.text = model.currency
    }
}
