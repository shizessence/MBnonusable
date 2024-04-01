import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let appName: UILabel = {
    let appNameq = UILabel()
    appNameq.text = "Math Buster"
    appNameq.textColor = .init(red: 100/255, green: 100/255, blue: 50/255, alpha: 1)
        appNameq.font = .boldSystemFont(ofSize: 35)
    return appNameq
    }()
    
    let problem: UILabel = {
    let problem = UILabel()
        problem.text = "0/0=?"
        problem.textColor = .init(red: 100/255, green: 100/255, blue: 50/255, alpha: 1)
        problem.font = .boldSystemFont(ofSize: 35)
    return problem
    }()
    
    let score: UILabel = {
    let scoreq = UILabel()
    scoreq.text = "Score:"
    scoreq.textColor = .init(red: 100/255, green: 100/255, blue: 50/255, alpha: 1)
    scoreq.font = .italicSystemFont(ofSize: 20)
    return scoreq
    }()
    
    let actualScore: UILabel = {
    let scoreA = UILabel()
    scoreA.text = "0"
    scoreA.textColor = .init(red: 100/255, green: 100/255, blue: 50/255, alpha: 1)
    scoreA.font = .italicSystemFont(ofSize: 20)
    return scoreA
    }()
    
    lazy var answerInput: UITextField = {
    let answerInput = UITextField()
    answerInput.text = "Type your answer here"
    answerInput.backgroundColor = .black
    answerInput.layer.cornerRadius = 8
    return answerInput
    }()
    
    var difficulty: UISegmentedControl = {
    let difficulty = UISegmentedControl(items: ["Easy", "Medium", "Hard"])
    return difficulty
    }()

    lazy var progressView: UIProgressView = {
           let view = UIProgressView()
            view.progressTintColor = .init(UIColor(red: 79/255, green: 111/255, blue: 82/255, alpha: 1))
            view.setProgress(0.3, animated: true)
            return view
        }()
    
    let sumbit: UIButton = {
       let sumbit = UIButton()
        sumbit.setTitle("Submit", for: .normal)
        sumbit.setTitleColor(.white, for: .normal)
        sumbit.backgroundColor = .red
        sumbit.layer.cornerRadius = 15
        sumbit.translatesAutoresizingMaskIntoConstraints = false
        return sumbit
    }()

    let restart: UIButton = {
       let restart = UIButton()
        restart.setTitle("Restart", for: .normal)
        restart.setTitleColor(.green, for: .normal)
        restart.translatesAutoresizingMaskIntoConstraints = false
        return restart
    }()

override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .init(red: 236/255, green: 227/255, blue: 206/255, alpha: 1)
        view.addSubview(sumbit)
        view.addSubview(appName)
        view.addSubview(progressView)
        view.addSubview(answerInput)
        view.addSubview(score)
        view.addSubview(actualScore)
        view.addSubview(difficulty)
        view.addSubview(problem)
        view.addSubview(restart)
        
        problem.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-90)
        }
        
        sumbit.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalTo(answerInput)
        }
        
        appName.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-250)
        }
        
        progressView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(appName).offset(20)
            make.width.equalTo(appName)
        }
        
        score.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(appName).offset(35)
            make.width.equalTo(appName)
        }
        
        answerInput.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(50)
                        make.width.equalTo(appName)
                        make.height.equalTo(sumbit)
                    }
                    
                    actualScore.snp.makeConstraints { make in
                        make.centerX.equalToSuperview().offset(60)
                        make.centerY.equalTo(appName).offset(35)
                        make.width.equalTo(appName)
                    }
                    
                    difficulty.snp.makeConstraints { make in
                        make.centerX.equalToSuperview()
                        make.centerY.equalToSuperview().offset(-180)
                        make.width.equalTo(300)
                    }
                    
                    restart.snp.makeConstraints{ make in
                        make.centerX.equalToSuperview()
                        make.centerY.equalTo(answerInput).offset(50)
                    }
                }
            }
