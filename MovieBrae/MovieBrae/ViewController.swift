//
//  ViewController.swift
//  MovieBrae
//
//  Created by Induk CS on 2023/05/03.
//

import UIKit

struct MovieData: Codable {
    let boxOfficeResult: BoxOfficeResult
}

// MARK: - BoxOfficeResult
struct BoxOfficeResult: Codable {
    let dailyBoxOfficeList: [DailyBoxOfficeList]
}

// MARK: - DailyBoxOfficeList
struct DailyBoxOfficeList: Codable {
    let movieNm : String
    let audiAcc : String
    let audiCnt : String
}

let movie = ["슈퍼 마리오 브라더스","드림", "존 윅 4","스즈메의 문단속", "옥수역귀신", "리바운드", "더 퍼스트 슬램덩크", "렌필드", "킬링 로멘스", "무명"]
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var movieData : MovieData?
    
    var movieURL = "https://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=9080505dec68de180c3367f5ff07061e&targetDt="
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movie.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! MyTableViewCell
        cell.movieName.text = movieData?.boxOfficeResult.dailyBoxOfficeList[indexPath.row].movieNm
        cell.acc.text = movieData?.boxOfficeResult.dailyBoxOfficeList[indexPath.row].audiAcc
        cell.audi.text = movieData?.boxOfficeResult.dailyBoxOfficeList[indexPath.row].audiCnt
        if let aCnt = movieData?.boxOfficeResult.dailyBoxOfficeList[indexPath.row].audiAcc {
                    let numF = NumberFormatter()
                    numF.numberStyle = .decimal
                    let aCount = Int(aCnt)!
                    let result = numF.string(for: aCount)!+"명"
                    cell.acc.text = "누적:\(result)"
                    //cell.audiCount.text = "어제:\(aCnt)명"
                }
                if let aCnt = movieData?.boxOfficeResult.dailyBoxOfficeList[indexPath.row].audiCnt {
                    let numF = NumberFormatter()
                    numF.numberStyle = .decimal
                    let aCount = Int(aCnt)!
                    let result = numF.string(for: aCount)!+"명"
                    cell.audi.text = "어제:\(result)"
                    //cell.audiCount.text = "어제:\(aCnt)명"
                }
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dest = segue.destination as! DetailViewController
        dest.movieName = "asd"
        guard let myIndexPath = table.indexPathForSelectedRow else{
            return
        }
        let row = myIndexPath.row
        dest.movieName = (movieData?.boxOfficeResult.dailyBoxOfficeList[row].movieNm)!
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "박스오피스(영화진흥위원회제공:"+makeYesterdayString()+")"
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func makeYesterdayString() -> String {
           let y = Calendar.current.date(byAdding: .day, value: -1, to: Date())!
           let dateF = DateFormatter()
           dateF.dateFormat = "yyyyMMdd"
           let day = dateF.string(from: y)
           return day
       }
    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
        movieURL += makeYesterdayString()
        getData()
    }

    func getData() {
        guard let url = URL(string: movieURL) else {
            print("Invalid URL")
            return
        }
        
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { [weak self] (data, response, error) in
            guard let self = self else {
                return
            }
            
            if let error = error {
                print(error)
                return
            }
            
            guard let JSONdata = data else {
                print("No data received")
                return
            }
            
            let decoder = JSONDecoder()
            
            do {
                let decodedData = try decoder.decode(MovieData.self, from: JSONdata)
                print(decodedData.boxOfficeResult.dailyBoxOfficeList[0].movieNm)
                self.movieData = decodedData
                DispatchQueue.main.async {
                    self.table.reloadData()
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}
    
