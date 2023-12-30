//
//  DetailViewController.swift
//  Brae
//
//  Created by 소프트웨어컴퓨터 on 2023/01/31.
//

import WebKit
import UIKit

class DetailViewController: UIViewController{
    @IBOutlet weak var Web: WKWebView!
    var receiveItem = ""
   
    @IBOutlet weak var lblItem: UILabel!
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        lblItem.text = receiveItem
        var myURL = URL(string:"")
        switch lblItem.text {
        case "김가네김밥 인덕대점":
            myURL = URL(string:"https://www.google.co.kr/maps/place/%EA%B9%80%EA%B0%80%EB%84%A4%EA%B9%80%EB%B0%A5(%EC%9D%B8%EB%8D%95%EB%8C%80%EC%A0%90)/data=!3m1!4b1!4m5!3m4!1s0x357cbbe8b06c1781:0x75e2963e969cf01a!8m2!3d37.6315623!4d127.0575021?hl=ko")
            break
        case "하다식당 월계직영점":
            myURL = URL(string: "https://www.google.co.kr/maps/place/%ED%95%98%EB%8B%A4%EC%8B%9D%EB%8B%B9+%EC%9B%94%EA%B3%84%EC%A7%81%EC%98%81%EC%A0%90/data=!3m1!4b1!4m5!3m4!1s0x357cbb2c6722b8ff:0x9bec6d3d889b474a!8m2!3d37.6338021!4d127.0582658?hl=ko")
            break
        case "고빠루":
            myURL = URL(string: "https://www.google.co.kr/maps/place/%EA%B3%A0%EB%B9%A0%EB%A3%A8/data=!3m1!4b1!4m5!3m4!1s0x357cbbef4a7df7e5:0x1cd2b71ac1562011!8m2!3d37.6285574!4d127.0549083?hl=ko")
            break
        case "민들레 초밥":
            myURL = URL(string: "https://www.google.co.kr/maps/place/%EB%AF%BC%EB%93%A4%EB%A0%88+%EC%B4%88%EB%B0%A5/data=!3m1!4b1!4m5!3m4!1s0x357cbb0a6148c903:0xb6e083b5674264b0!8m2!3d37.6333832!4d127.057717?hl=ko")
            break
        case "한끼뚝딱":
            myURL = URL(string: "https://www.google.co.kr/maps/place/%ED%95%9C%EB%81%BC%EB%9A%9D%EB%94%B1/data=!3m1!4b1!4m5!3m4!1s0x357cbbe68c51c835:0x66eddfc6b7f042f0!8m2!3d37.6324841!4d127.0572707?hl=ko")
            break
        case "벼락이네띵똥땡키친":
            myURL = URL(string: "https://www.google.co.kr/maps/place/%EB%B2%BC%EB%9D%BD%EC%9D%B4%EB%84%A4%EB%9D%B5%EB%98%A5%EB%95%A1%ED%82%A4%EC%B9%9C/data=!3m1!4b1!4m5!3m4!1s0x357cbbe64fced3d5:0x54ba9a1d4a91688f!8m2!3d37.6310784!4d127.0582843?hl=ko")
            break
        case "소문난규리네맛집":
            myURL = URL(string: "https://www.google.co.kr/maps/place/%EC%86%8C%EB%AC%B8%EB%82%9C%EA%B7%9C%EB%A6%AC%EB%84%A4%EB%A7%9B%EC%A7%91/data=!3m1!4b1!4m5!3m4!1s0x357cbbe65ca91e93:0xb050784cfb958b56!8m2!3d37.6313358!4d127.0577961?hl=ko")
            break
        case "오미일번지":
            myURL = URL(string: "https://www.google.co.kr/maps/place/%EC%98%A4%EB%AF%B8%EC%9D%BC%EB%B2%88%EC%A7%80/data=!3m1!4b1!4m5!3m4!1s0x357cbbe65d200dbf:0x44bcf4081d957271!8m2!3d37.6314346!4d127.0576408?hl=ko")
            break
        case "오늘은돈부리":
            myURL = URL(string: "https://www.google.co.kr/maps/place/%EC%98%A4%EB%8A%98%EC%9D%80%EB%8F%88%EB%B6%80%EB%A6%AC/data=!3m1!4b1!4m5!3m4!1s0x357cbbebd7ba9ebf:0x39ffbaad34733c86!8m2!3d37.6318189!4d127.0584822?hl=ko")
            break
        case "맘스컵주먹밥":
            myURL = URL(string: "https://www.google.co.kr/maps/place/%EB%A7%98%EC%8A%A4%EC%BB%B5%EC%A3%BC%EB%A8%B9%EB%B0%A5/data=!4m11!1m3!2m2!1z66eY7Iqk7Lu07KO866i567Cl!6e5!3m6!1s0x357cbbe68bed0825:0x9def73e090be5b0c!8m2!3d37.6323439!4d127.0572135!15sChLrp5jsiqTsu7Tso7zrqLnrsKVaFiIU66eY7IqkIOy7tCDso7zrqLnrsKWSAQpyZXN0YXVyYW504AEA!16s%2Fg%2F11g0kj4g6q?hl=ko")
            break
        case "쉐프밥버거":
            myURL = URL(string: "https://www.google.co.kr/maps/place/%EC%89%90%ED%94%84%EB%B0%A5%EB%B2%84%EA%B1%B0/data=!4m5!3m4!1s0x357cbbe8ab8561f3:0xecc92d0820edd804!8m2!3d37.6298546!4d127.0563432?hl=ko")
            break
        case "담꾹 월계점":
            myURL = URL(string: "https://www.google.co.kr/maps/place/%EB%8B%B4%EA%BE%B9+%EC%9B%94%EA%B3%84%EC%A0%90/data=!3m1!4b1!4m5!3m4!1s0x357cbb4edf7163c7:0x4b5a885aff4e4570!8m2!3d37.6299205!4d127.0580649?hl=ko")
            break
        case "BBQ치킨 월계행복점":
            myURL = URL(string: "https://www.google.co.kr/maps/place/BBQ%EC%B9%98%ED%82%A8+%EC%9B%94%EA%B3%84%ED%96%89%EB%B3%B5%EC%A0%90+(BSK)/data=!3m1!4b1!4m5!3m4!1s0x357cbbf448423727:0x94d70737a53318d4!8m2!3d37.6332166!4d127.0576104?hl=ko")
            break
        case "키라키라윤":
            myURL = URL(string: "https://www.google.co.kr/maps/place/%ED%82%A4%EB%9D%BC%ED%82%A4%EB%9D%BC%EC%9C%A4/data=!3m1!4b1!4m6!3m5!1s0x357cbbe880f964f7:0xa535cac345266ca8!8m2!3d37.6290993!4d127.0586774!16s%2Fg%2F11fqtmq0_f?hl=ko")
            break
        case "인덕대학교 푸드코트":
            myURL = URL(string: "https://www.google.co.kr/maps/place/%EC%9D%B8%EB%8D%95%EB%8C%80%ED%95%99%EA%B5%90+%ED%91%B8%EB%93%9C%EC%BD%94%ED%8A%B8/data=!3m1!4b1!4m5!3m4!1s0x357cbb6ee3c78ffb:0xe01e18d6f8befde5!8m2!3d37.6298987!4d127.0554424?hl=koo")
            break
        case "한솥도시락 인덕대앞점":
            myURL = URL(string: "https://www.google.co.kr/maps/place/%ED%95%9C%EC%86%A5%EB%8F%84%EC%8B%9C%EB%9D%BD+%EC%9D%B8%EB%8D%95%EB%8C%80%EC%95%9E%EC%A0%90/data=!3m1!4b1!4m5!3m4!1s0x357cbb2141451d0b:0x674383c8b5c07682!8m2!3d37.6288672!4d127.0566373?hl=ko")
            break
        default:
            break
        }
        let myRequest = URLRequest(url: myURL!)
        Web.load(myRequest)
    }
        
        func receiveItem(_ item:String){
            receiveItem = item
        }
    }
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


