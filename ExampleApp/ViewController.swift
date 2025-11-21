import Cocoa
import ImageScheduler

class ViewController: NSViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let df = DateFormatter(); df.dateFormat = "dd.MM.yyyy"
        let items = [
            ImageScheduleItem(start: df.date(from:"01.01.2026")!, end: df.date(from:"02.02.2026")!, name:"sun"),
            ImageScheduleItem(start: df.date(from:"03.02.2026")!, end: df.date(from:"20.02.2026")!, name:"cloud"),
            ImageScheduleItem(start: df.date(from:"21.02.2026")!, end: df.date(from:"28.02.2026")!, name:"moon")
        ]
        let scheduler = ImageSchedulerView(frame:NSRect(x:50,y:50,width:500,height:500), items:items)
        view.addSubview(scheduler)
    }
}
