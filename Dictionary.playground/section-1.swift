let array :Array<Int> = [1,2,3,4]
let dictionary :Dictionary<String,Int> = ["dog":1,"elephan":2,"Dog":3]

var airports :[String:String] = ["TYO": "Tokyo","DUB": "Dublin"]
if airports.isEmpty{
    println("the airports dictionary is empty.")
}else{
    println("the airports dictionary is not empty.")
}

airports["LHR"] = "London"
airports["BBK"] = "Bankok"
airports

if let oldValue = airports.updateValue("Dublin International", forKey: "DUB"){
    println()
}