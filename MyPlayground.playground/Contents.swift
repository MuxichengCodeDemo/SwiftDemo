//: Playground - noun: a place where people can play

import Cocoa

/*
 ==============================================================================================
                                    01_变量与常量
 ==============================================================================================
 */
/*
/*
 let 定义常量
 var 定义变量
 */
let constantString: String = "Hello"
var varibleString: String = "World"
let constantInt: Int = 1

/*
 swift会自动匹配类型，类型名可以省略
 变量定义完成后，赋值时类型不匹配的，会报错
 常量不可赋值
 */
var pi = 3.14
//pi = "Hello"
//constantInt = 2

/*
 需要自定义输出时(“”中)
 变量放在\()中输出
 */
print(constantInt)
print(constantString);
print("π的值为\(pi)");
print(pi);

/*
 类型转换
 */
let three = 3
var pointOneFour = 0.14
pi = Double(three) + pointOneFour

let trueValue = true
let falseValue = false
let i = 1

/*
 i 不是BOOL类型 不能用作判断
if i
{
}
*/

if i == 1
{
    print(i == 1)
}

/*
 元组
 
 
 */
let http404Error = (404, "Not Found")
let (code , message) = http404Error
print("code:\(code), meaage:\(message)")

let (_, ErrorMessage) = http404Error
print(http404Error.1)

/*
 可以在元组创建时，给里面的元素命名
 */
let ErrorCode = (requestError:401, 402, 403)
print(ErrorCode.2)

*/
/*
 ==============================================================================================
                                    02_可选类型
 ==============================================================================================
 */
/*
/*
 可选类型
 类型名后加？ 表示节选类型
 */
var errorCode: Int? = 404
print(errorCode)
//errorCode = nil
print(errorCode)

/*
 nil 在swift中是一个值，表示这一个常量或变量的缺失
 注意与Objective-C的区别
 */
var errorMessage: String?

if errorCode != nil
{
    print(errorCode!)
}
/*
 当可选类型变量为 nil 时，强制解析会报错
errorCode = nil
print(errorCode!)
 
 将可选类型赋值给一个临时变量或常量，
*/

if let code = errorCode
{
    print(code)
}
else
{
    // print(code) //code 为局部变量，无法访问
    print(errorCode)
}


/*
 隐式解析
 */
let assumedString: String! = "A"
//assumedString = nil //将 ？ 改为 ！ 后，就不能赋值nil
print(assumedString)

*/
/*
 ==============================================================================================
                                    03_基本运算符
 ==============================================================================================
 */
/*
let b = 10
var a = 5
a = b

let (x, y) = (1, 4)
print(x)
print(y)

print("Hello" + "World")

/*
 取余的区别
 */
print(-11 % 3)
print(11 % -3)

a += 2
3 == 4
3 != 4
3 > 4
3 < 4
3 >= 4
3 <= 4
let c = a == 2 ? 7 : 8

/*
 空合运算符 ？？
 运算符前面的值必须要为可选类型
 如果可选类型的值不为空，则运算结果为可选类型解包后的值
 如果可选类型的值为空，则运算结果为后者的值
 */
let optionalE: Int? = 4
let d = optionalE ?? b

/*
 区间运算符
 定义一个区间
 */
1 ... 5 //表示1-5，5个数
1 ..< 5 //表示1-5，4个数，不包含5
*/
/*
 ==============================================================================================
                                    04_字符串操作
 ==============================================================================================
 */
/*
/*
 定义字符串
 */
let someString = "literal"
var emptyString1 = ""           //空字符串
let emptyString2 = String()     //空字符串，通过String（）初始化方法，置空

/*
 字符创的赋值方式 值传递
 对已有字符串创建副本然后传递或赋值
 
 值传递 引用传递
 */
emptyString2.isEmpty
emptyString1 = "Not Empty"
//emptyString2 = "Change Constant String"  //常量字符串不可变

let char: Character = "a"

/*
 char 常量，不可赋值？？
 char 为局部变量，每次循环都创建一个char，并不是对char进行赋值
 */
for char in emptyString1.characters
{
    print(char)
}

emptyString1.characters.count
var string1 = "Hello"
var string2 = "World"
var string3 = string1 + string2
string1 += string2
string1.append(" !")
let messages = "Hello \(string2) !"

messages.startIndex
messages.endIndex
let messChar = messages[messages.startIndex]
let firstIndex = messages.index(after: messages.startIndex)
let lastIndex = messages.index(before: messages.endIndex)
let index = messages.index(messages.startIndex, offsetBy: 4)
messages[index]
messages[messages.startIndex]
//messages[messages.endIndex] // 注意越界访问

var welcome = "Hello"
welcome.insert("!", at: welcome.endIndex)
welcome.insert(contentsOf: "World".characters, at: welcome.index(before: welcome.endIndex))
welcome.remove(at: welcome.index(before: welcome.endIndex))
print(welcome)
let rang = welcome.index(welcome.endIndex, offsetBy: -5) ..< welcome.endIndex
welcome.removeSubrange(rang)

/*
 字符串比较
 */
welcome == "Hello"
welcome != "Hello"
welcome.hasPrefix("Hel")
welcome.hasSuffix("llo")

*/
/*
 ==============================================================================================
                                    05_数组
 ==============================================================================================
 */
/*
/*
 有序的，同一类型的，多个元素的，集合
 */
var arrInts = [Int]()
arrInts.append(2)
arrInts = []
arrInts = [1, 4]

var threeDouble = [Double](repeating: 0.0, count: 3)
var twoDouble = [Double](repeating: 2.0, count:2)
var fiveDouble = threeDouble + twoDouble
twoDouble += threeDouble
print(twoDouble)

let secondNum = twoDouble[2]
twoDouble[0] = 3.0
twoDouble[1...2] = [3.0, 3.0]
print(twoDouble)

twoDouble.insert(4.0, at: 0)
twoDouble.remove(at: 0)
twoDouble.removeLast()

for arrItem in twoDouble {
    print(arrItem)
}

for (index, value) in twoDouble.enumerated() {
    print("索引:\(index), 元素:\(value)")
}

*/
/* ==============================================================================================
                                    06_集合
 ============================================================================================== */
/*
/*
 集合 存储相同类型，无序，元素不能重复
 Set< Character >
 */
var char1 = Set< Character >()
let char2: Set< Character > = []

/*
 定义时，存储类型可以省略，但是集合类型名Set不能省略
 如果省略Set，则自动被识别为数组
 */
var letter1: Set = ["a", "b", "c"]
var letter2 = ["a", "b", "c"]

letter1.count
letter1.isEmpty
var (result, _) = letter1.insert("a")  //添加已存在的元素，
print(letter1)
print(result)
var result1: String? = letter1.remove("")
result1 = letter1.remove("a")
var isContain = letter1.contains("b")
isContain = letter1.contains("")

for char in letter1 {
    print(char)
}

for char in letter1.sorted() {
    print(char)
}

var num1: Set = ["3", "2", "1", "5", "7"]
let num2: Set = ["3", "2", "1", "5", "7"]
let num3: Set = ["1", "3", "5"]

num1.intersection(num3)         //交集
num1.union(num3)                //并集
num1.subtracting(num3)          //补集
num1.symmetricDifference(num3)  //num1关于num3的补集 num3关于num1的补集 的并集
num2 == num3
num3.isSubset(of: num2)         //是否是子集
num2.isSuperset(of: num3)       //是否是超集
num1.isDisjoint(with: num3)     //判断内部元素是否全部不相同

*/
/* ==============================================================================================
                                    07_字典
 ============================================================================================== */
/*
var chars: [String: String] = ["char1":"A", "char2":"B"]
var charDic = ["char1":"A", "char2":"B", "char3":"D", "char4":"C", "char5":"Q"]

chars.count
chars.isEmpty
chars["char3"] = "C"                        //追加
chars["char1"] = "a"                        //修改
chars.updateValue("b", forKey: "char2")     //更新，若不存在此Key，则会添加
print(chars)
chars["char2"]
chars["char3"] = nil                        //将值设为nil，会移除此Key
chars.removeValue(forKey: "char2")
print(chars)

for (key, value) in charDic{
    print("\(key): \(value)")
}

for key in charDic.keys {
    print(key)
}

for value in charDic.values.sorted() {
    print(value)
}

let arrKeys = [String](charDic.keys)
let arrValues = [String](charDic.values)

*/
/* ==============================================================================================
                                    08_控制流
 ============================================================================================== */
/*
for num in 1...5 {
    print(num)
}

for _ in 1...5 {
    print("Q")
}

let chars = ["A", "B", "C", "D", "E"]
for char in chars {
    print(char)
}

let charDic = ["0":"A", "1":"B", "2":"C", "3":"D", "4":"E"]
for (key, value) in charDic {
    print("key:\(key), value\(value)")
}

var num = 3
while num > 0 {
    print(num)
    num -= 1
}

/*
 repeat while
 先进入内部，运行结束后，再判断条件
 至少进入一次，不判断条件
 */
num = 3
repeat {
    print(num)
    num -= 1
}while num > 0
num = 3
repeat {
    print(num)
    num -= 1
}while num < 0

num = 3
if num == 3 {
    print(num)
}else{
    print("num is not equal to 3.")
}

if num == 3 {
    print(num)
}else if num == 4{
    
}else{
    
}

num = 12
switch num {
case 2:
    print("num = 2")
case 3, 4, 5:
    print("num == 3 or 4 or 5")
case 6..<10:
    print("6< num <=10")
case 10..<19 where num % 3 == 0:
    print("10< num <=19, 且被3整除")
    
default:
    print("sssss")
}

num = 2
switch num {
case 2:
    print("Hello")
    fallthrough
default:
    print("World")
}
/*
 给循环语句添加标签
 可以中断指定标签的循环
 */
var num2 = 4
num = 6
numLoop: while num > 0{
    numLoop2: while  num2 > 0{
        print("num2 = \(num2)")
        num2 -= 1
        
        break numLoop
    }
    print("num = \(num)")
    num -= 1
}

func guardTest(){
    guard num2 == 5 else{
        print(num2)
        return
    }
}
guardTest()


if #available(macOS 10.13, *){
    print("iOS 10 ..")
}else{
    print("iOS")
}

*/
/* ==============================================================================================
                                    09_函数
 ============================================================================================== */
/*
/*
 func 函数名（参数名：类型） -> 返回值类型
 */
func greet(person: String) -> String{
return "Hello, \(person)"
}
let greetWord = greet(person: "Dariel")
print(greetWord)

func say() -> String{
    return "Hello"
}
print(say())

func say(person1: String, person2: String) -> String{
    return "hello, \(person1) \(person2)"
}
print(say(person1: "Lily", person2: "Lucy"))

func sayHello(){
    print("Hello")
}
sayHello()

//
func minMax(array: [Int]) -> (min: Int, max: Int)?{
    if array.isEmpty{
        return nil
    }
    
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value <= currentMin {
            currentMin = value
        }
        else if value >= currentMax{
            currentMax = value
        }
    }
    
    return (currentMin, currentMax)
}

let bounds = minMax(array: [3,5,6,12,8,10])
print(bounds!.max)
print(bounds!.min)

/*
 函数的参数的标签
 在外部调用和内部引用的名称可以单独设置
 外部调用时的名称：保持外部调用的函数的意义
 内部引用时的名称：保持内部的可读性
 */
func someFunction(label name: String) -> String{
    return name
}
someFunction(label: "Dariel")

func ignoreLabel(_ name1: String, label2 name2: String){
    print(name1 + name2)
}
ignoreLabel("Lily", label2: "Lucy")

/*
 参数默认值
 函数的参数可以设置默认值
 调用时，可以选择不传入有默认值的参数
 不传参，则调用后，函数内部使用其默认值
 传参，则调用后，函数内部使用传入的值
 */
func defaultLabel(label1 name1: String, label2 name2: String = "Lily"){
    print(name1 + name2)
}
defaultLabel(label1: "Lucy", label2: "Lilei")
defaultLabel(label1: "Lucy")

func avarageNum(_ num: Double...) -> Double{
    var total: Double = 0
    for number in num{
        total += number
    }
    return (total / Double(num.count))
}
avarageNum(2,6,4,8,7)
avarageNum(5)

/*
 inout 
 传入变量的指针
 */
func swapTwoInts(_ a: inout Int, _ b: inout Int){
    let temp = a
    a = b
    b = temp
}
var a = 2
var b = 3
swapTwoInts(&a, &b)
print("a=\(a), b=\(b)")

/*
 可以把一个函数当作常量或者变量赋值给一个常量或者变量
 */
var swap = swapTwoInts
swap(&a, &b)
print("a=\(a), b=\(b)")

/*
 可以将函数作为参数，传入一个函数中
 */
func sum(num1: Int, num2: Int) -> Int{
    return num1 + num2
}
func sub(num1: Int, num2: Int) -> Int{
    return num1 - num2
}
func mathNumber(_ mathFunc:(Int, Int) -> Int, _ a: Int, _ b: Int) -> Int{
    return mathFunc(a, b)
}
mathNumber(sum, 4, 2)
mathNumber(sub, 4, 2)

/*
 函数的返回值可以是一个函数
 */
func chooseSumOrSunb(_ isSum: Bool) -> (Int, Int) -> Int{
    return isSum ? sum : sub
}
chooseSumOrSunb(true)(2, 4)

/*
 函数嵌套
 */
func chooseSumOrSub1(isSum: Bool, _ a: Int, _ b: Int) -> Int{
    func sum(num1: Int, num2: Int) -> Int{ return num1 + num2}
    func sub(num1: Int, num2: Int) -> Int{ return num1 - num2}
    
    return isSum ? sum(num1: a, num2: b) : sub(num1: a, num2: b)
}

chooseSumOrSub1(isSum: true, 4, 4)

*/
/* ==============================================================================================
                                    10_闭包
 ==============================================================================================*/
/*
/*
 闭包
 () -> Void
 () -> Int
 () -> String
 用于捕获，存储传递代码块以及常量和变量的引用
 */
let nums = [4, 6, 2, 9, 5]
let sortNums = nums.sorted()

func backward(_ s1: Int, _ s2: Int) -> Bool{
    return s1 > s2
}
let sortNums1 = nums.sorted(by: backward)


/*
 不提倡刻意得简化闭包
 要考虑代码的可读性
 */
let sortNums2 = nums.sorted(by: {(n1: Int, n2: Int) -> Bool in return n1 > n2})
print(sortNums2)
let sortNums3 = nums.sorted(by: {n1, n2 in return n1 < n2})
print(sortNums3)
let sortNums4 = nums.sorted(by: {n1, n2 in n1 < n2})
print(sortNums4)
let sortNums5 = nums.sorted(by: {$0 > $1})
print(sortNums5)
let sortNums6 = nums.sorted(by: >)
print(sortNums6)

//func funcTakeClosure(closure:() -> void){
//}
//不使用尾随闭包
//funcTakeClosure(closure: {
//    
//})
//使用尾随闭包
//funcTakeClosure(){
//    
//}

let sortNums7 = nums.sorted(){$0 > $1}
print(sortNums7)
let sortNums8 = nums.sorted{$0 > $1}
print(sortNums8)

func makeAdd(forAdd amount: Int) -> () -> Int{
    var total = 0
    func add() -> Int{
        total += amount
        return total
    }
    return add
}
let addTen = makeAdd(forAdd: 10)
addTen()
addTen()

let addSeven = makeAdd(forAdd: 7)
addSeven()
addTen()

addTen()
let also = addTen()
also

var handlers: [() -> Void] = []
func funcWithEscaping(handler: @escaping () -> Void){
    handlers.append(handler)
}

func funcWithNoneEscaping(closure: () -> Void){
    closure()
}

class tempClass{
    var x = 10
    func doSomething(){
        funcWithNoneEscaping { x = 200 }
        funcWithEscaping { self.x = 100 }   //加了@escaping，需要显示引用，self.x
    }
}

let instance = tempClass()
instance.doSomething()

print(instance.x)
handlers.first?()
print(instance.x)

/*
 自动闭包
 一种自动创建的闭包
 用来当做函数的参数
 */
var names = ["Chars", "Alex", "Olliver", "Barry"]
names.count
let customerP = { names.remove(at: 0) }  //把remove的代码当做参数传给customerP，不执行remove操作
names.count
customerP()
names.count

func serve(customerP: () -> String){
    customerP()
}

serve(customerP: { names.remove(at: 0)})
names.count


/*
 ????????????
 */
func serve(customerP: @autoclosure () -> String){
    customerP()
}

serve(customerP: names.remove(at: 0))
names.count

*/

/* ==============================================================================================
                                    11_枚举
 ============================================================================================== */
/*
/*
 枚举
 可以不指定成员的类型
 使用 case 定义枚举成员值
 枚举成员不会像OC进行隐式赋值
 */
enum enemName{
    case caseName
}

enum compassPoint{
    case North
    case South
    case East
    case West
}

enum compassPoint2{
    case North, South, West, East
}

var direction = compassPoint.North      //定义其为compassPoint类型
direction = .West                       //确定类型后，可以简写

direction = .East
switch direction {
case .North:
    print("North")
case .South:
    print("South")
default:
    print("East and West")
}

/*
 关联值
 可以存储和修改不同类型的关联值
 */
enum Person {
    case Location(Double, Double)
    case Name(String)
}
var p1 = Person.Location(87.21, 90.123)
p1 = .Name("Alex")
p1 = .Name("Joan")

switch p1 {
case .Location(let x, let y):
    print("X:\(x), Y:\(y)")
case .Name(let name):
    print(name)
}

/*
 原始值
 可以给成员设置初始值，但是必须类型一致
 */
enum ASCIIChar: Character {
    case Tab = "\t"
    case LineFeed = "\n"
    case Carriagereturn = "\r"
}
print(ASCIIChar.LineFeed.rawValue)

enum Mouth: Int {
    case January = 1, Febuary, Marth, April, May
}
print(Mouth.January.rawValue)

enum Direct: String {
    case North
    case South
    case East
    case West
}
print(Direct.North.rawValue)

let secondMonth = Mouth(rawValue: 2)
print(secondMonth)

/*
 indirect
 递归枚举
 */
enum Arth {
    case Number(Int)
    indirect case Add(Arth, Arth)
    indirect case Mul(Arth, Arth)
}

let five = Arth.Number(5)
let four = Arth.Number(4)
let sum = Arth.Add(five, four)
let result = Arth.Mul(sum, Arth.Number(2))

func evaluate(express: Arth) -> Int {
    switch express {
    case .Number(let value):
        return value
    case .Add(let left, let right):
        return evaluate(express: left) + evaluate(express: right)
    case .Mul(let left, let right):
        return evaluate(express: left) * evaluate(express: right)
    }
}

print(result)
print(evaluate(express: result))

*/
/* ==============================================================================================
                                    12_类和结构体
 ============================================================================================== */
/*
/*
 类和结构体
 共同点：通过定义属性存储值；通过定义方法提供功；通过定义构造器生成初始化值
 不同点：
        类：允许一个类继承另一个；允许引用计数器对一个类的多次引用
        结构体：通过复制的方式传递；不使用引用计数器
 
 分析：
 结构体：只用作封装少量的简单的数据值；实例被赋值或传递存储的时候需要进行值拷贝，不需要用到继承
 类：需要包含复杂的属性方法，能形成一个抽象的事物描述；需要用到继承；需要用到引用拷贝
 
 字符串，数组，字典 底层都是通过结构体实现的，均为值拷贝
 */

class ClassName {
    //属性 方法
}

struct StructureName {
    //属性 方法
}

struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interLaced = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution()
let someVideoMode = VideoMode()

print(someResolution.width)
print(someVideoMode.resolution.height)

someVideoMode.resolution.height = 32
print(someVideoMode.resolution.height)

/*
 结构体含有默认的构造器
 类没有默认构造器，需要自己定义
 可通过构造器，在定义时设置属性
 */
let initRes1 = Resolution(width: 64, height: 48)
print("\(initRes1.width), \(initRes1.height)")

var initRes2 = initRes1
print(initRes1.width)
print(initRes2.width)
initRes2.width = 32         //值传递，initRes1 和 initRes2 值相等但是分属不同的内存，不是同一个变量
print(initRes1.width)
print(initRes2.width)

enum Direction {
    case North, South, East, West
}
var direct1 = Direction.North
var direct2 = direct1
direct2 = .South            //值传递，initRes1 和 initRes2 值相等但是分属不同的内存，不是同一个变量
print(direct1)
print(direct2)

let videoM1 = VideoMode()
videoM1.name = "VideoM1"
var videoM2 = videoM1       //引用传递 videoM2 和 videoM1 指向同一块内存
print(videoM1.name!)
print(videoM2.name!)

/*
 恒等运算符（===）
 判断 两个类型的常量或变量是否引用同一个实例对象
 */
print(videoM1 === videoM2)

 */

/* ==============================================================================================
                                    13_属性
 ============================================================================================== */
/*
struct Location {
    var x: Double
    let y: Double
}
var position1 = Location(x: 22.22, y: 33.33)    //变量 position1初始化
position1.x = 20
//position1.y = 30                              //× 常量不可修改

let position2 = Location(x: 20.2, y: 30.3)      //常量position2初始化
//position2.x = 20                              //position2 常量不可修改

class Address {
    let city = "Hangzhou"
    var town: String?
}
let address1 = Address()                        //常量 address1初始化
address1.town = "Cangqian"                      //town 成员是变量，仍可赋值
address1.town = "bingjiang"

class Data {
    var fileName = "date.plist"
}

/*
 lazy 
 该变量在第一次访问时才被创建
 */
class DataManager {
    lazy var data = Data()
}
let manager = DataManager()             //data实例未创建
manager.data                            //创建

struct Size {
    var width = 0.0
    var height: Double {
        get {
            print("get")
            return 10.0
        }
        set {
            width = 20.0
            print("set")
        }
    }
}

var size1 = Size()
size1.height = 17
print(size1.width)
print(size1.height)

struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0
    var volume : Double {                       //return值 不固定 必须用Var
        return width * height * depth
    }
}

let fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
print(fourByFiveByTwo.volume)
//fourByFiveByTwo.volume = 20.0                  //volume 为只读  没有set方法

class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newValue) {
            print(newValue)
        }
        didSet(oldSteps) {
            print(oldSteps)
        }
    }
}

let stepCopunter = StepCounter()
stepCopunter.totalSteps = 23                    // newValue: 23   oldSteps: 0
stepCopunter.totalSteps = 5                     // newValue: 5    oldSteps: 23

struct someStruct {
    static var typeProperty = "Value"
}

class someClass {
    static var typeProperty = "Value"
    static var computedtypeProperty: Int {
        return 6
    }
}

print(someStruct.typeProperty)
someStruct.typeProperty = "Another value"
print(someStruct.typeProperty)
print(someClass.computedtypeProperty)

*/
/* ==============================================================================================
                                    14_方法
 ============================================================================================== */
/*
class Counter {
    var count = 0
    
    func increment() {
        count += 1
    }
    
    func incrementBy(amount: Int) {
        count += amount
    }
    
    func reset() {
        self.count = 0
    }
}

let counter = Counter()
counter.increment()
print(counter.count)
counter.incrementBy(amount: 4)
print(counter.count)
counter.reset()
print(counter.count)

/*
 结构体和枚举--->不是引用类型，为值类型。
 在其内部实例方法中直接修改属性是无效的。
 
 mutating
 可以从方法内部改变结构体的属性
 */
struct Point {
    var x = 0.0, y = 0.0
    
    mutating func moveByX(deltaX: Double, y deltaY: Double) {
        x += deltaX
        y += deltaY
    }
}

var somePoint = Point(x: 1.0, y: 1.0)
somePoint.moveByX(deltaX: 2.0, y: 3.0)
print("x:\(somePoint.x), y:\(somePoint.y)")

let fixedPoint = Point(x: 2.0, y: 4.0)
//fixedPoint.moveByX(deltaX: 2.0, y: 2.0)           //常量结构体，属性不可变

struct NewPoint {
    var x = 0.0, y = 0.0
    
    mutating func moveByX (deltaX: Double, y deltaY: Double) {
        self = NewPoint(x: x + deltaX, y: y + deltaY)
    }
}

var someNewPoint = NewPoint(x: 2, y: 3)
somePoint.moveByX(deltaX: 3, y: 5)
print(somePoint)

enum StateSwitch {
    case Off, Low, High
    
    mutating func next() {
        switch self {
        case .Off:
            self = .Low
        case .Low:
            self = .High
        case .High:
            self = .Off
        }
    
    }
}

var ovenLight = StateSwitch.Low
ovenLight.next()
ovenLight.next()

/*
 static, class
 方法名前，加static或者class，则此方法为类方法
 不同点：class可以被子类重写，static不可以被子类重写
 */
enum SomeEnum {
    static func printSome() {
        print("SomeEnum")
    }
}
SomeEnum.printSome()

struct SomeStruct {
    static func printSome() {
        print("SomeStruct")
    }
}
SomeStruct.printSome()

class Level {
    static var commonLevel = 1
    class func addOneLevel() {
        commonLevel += 1
    }
    
    static func addLevelBy(level: Int) {
        commonLevel += level
    }
    
    var currentLevel = 1
    
    func maxLevel() -> Int {
        if currentLevel >= Level.commonLevel {
            return currentLevel
        }else{
            return Level.commonLevel
        }
    }
}

Level.addOneLevel()
Level.addLevelBy(level: 3)
print(Level.commonLevel)

let player1 = Level()
player1.currentLevel = 2
print(player1.maxLevel())

let player2 = Level()
player2.currentLevel = 6
print(player2.maxLevel())

*/
/*
 ==============================================================================================
                                    15_下标
 ==============================================================================================
*/
/*
/*
subscript(index: Int) -> Int {
    
    get {
        
    }
    set(newValue) {
        
    }
}
*/

struct TimeTable {
    let multiplier: Int
    
    subscript(index: Int) -> Int{
        return multiplier * index        //只读，省略set，get名字省略
    }
}
let threeTimesTable = TimeTable(multiplier: 3)
print(threeTimesTable[6])

struct Matrix {
    var rows: Int, columns: Int
    subscript(row: Int, column: Int) -> Int{
        get{
            return rows + columns
        }
        set{
            rows += newValue
            columns +=  newValue
            
            rows += row
            columns += column
        }
    }
}

var matrix = Matrix(rows: 2, columns: 3)
print(matrix[2,2])
matrix[2,2] = 8
print(matrix[2,2])

*/
/* ==============================================================================================
                                    16_继承
 ============================================================================================== */
/*
class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        get {
            return "\(currentSpeed)公里/每小时"
        }
    }
    
    func makeNoise() {
        //
    }
}

let someVehicle = Vehicle()
print("速度：\(someVehicle.description)")

class Bicycle: Vehicle {
    var hasTwoWheels = true
}
let bicycle = Bicycle()
bicycle.hasTwoWheels = true
bicycle.currentSpeed = 15.0
print("描述：\(bicycle.description)")

class Tandem: Bicycle {
    var canRideByTwoPeople = true
}
let tandem = Tandem()
tandem.hasTwoWheels = true
tandem.canRideByTwoPeople = true
tandem.currentSpeed = 10.0
print("描述：\(tandem.description)")

class Train: Vehicle {
    var passenger = 20
    
    override var currentSpeed: Double {
        didSet {
            passenger = Int(currentSpeed / 10)
        }
    }
    
    override func makeNoise() {
        print("哐当哐当哐当")
    }
    
    override var description: String {
        return super.description + "，有\(passenger)个乘客"
    }
}

let train = Train()
train.makeNoise()
print(train.description)
train.currentSpeed = 200
print(train.description)

/*
 final
 在类和方法定义前，加上final，
 则此类和方法为最终，不可以继承和重写
 */
class Animal {
    final func run() {
        print("Running!")
    }
}

final class Dog: Animal {
    //override func run() {}            //不可重写，父类用final修饰
}
*/
/* ==============================================================================================
                                    17_构造过程
 ============================================================================================== */
/*
/*
 通过自定义构造器对类，结构体，枚举的实例进行初始化操作
 */
struct Weather {
    var temperature: Double
    init() {
        temperature = 26.0
    }
}
var w = Weather()
print(w.temperature)

struct Point {
    var x = 2.0, y = 4.0
    let z: Double
    init(fromPointX pointX: Double, _ pointY: Double) {
        x += pointX
        y += pointY
        z = pointX
    }
}
let point = Point(fromPointX: 3.0, 3.0)
print("x:\(point.x), y:\(point.y)")

/*
 默认构造器
 如果结构体和类的所有属性都有默认值，
 且没有自定义构造器，
 则会提供一个默认的构造器
 */
class List {
    var name: String?
    var quantity = 1
    var purchase = false
}
var item = List()
//print("\(item.name) \(item.purchase) \(item.quantity)")

struct Size {
    var width = 0.0, height = 0.0
}

var size1 = Size(width: 3.0, height:4.0)

struct RectSize {
    var width = 0.0, height = 0.0
}
struct RectPoint {
    var x = 0.0, y = 0.0
}
struct Rect {
    var origin = RectPoint()
    var size = RectSize()
    
    init() {}
    init(origin: RectPoint, size: RectSize) {
        self.origin = origin
        self.size = size
    }
    init(center: RectPoint, size: RectSize) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: RectPoint(x: originX, y:originY), size: size)
    }
}

let basicRect = Rect()
let originRect = Rect(origin: RectPoint(x: 2.0, y: 3.0), size: RectSize(width: 2.0, height: 3.0))
let centerRect = Rect(center: RectPoint(x: 3.0, y: 3.0), size: RectSize(width: 2.0, height: 2.0))

class Vehicle {
    var wheels = 1
    var description: String {
        return "有\(wheels)个轮子"
    }
}
let vehicle = Vehicle()
print(vehicle.description)

class Bicycle: Vehicle {
    override init() {
        super.init()
        wheels = 2
    }
}
let bicycle = Bicycle()
print(bicycle.description)

class Food {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    convenience init() {
        self.init(name: "名字未知")
    }
}
let nameMeat = Food(name: "Becon")
print(nameMeat.name)
let unKnownMeat = Food()
print(unKnownMeat.name)

class Recepe: Food {
    var quantity: Int
    
    init(name: String, quantity: Int) {
        self.quantity = quantity
        super.init(name: name)
    }
    override convenience init(name: String) {
        self.init(name: name, quantity: 1)
    }
}
let recepe1 = Recepe()
print("\(recepe1.name), \(recepe1.quantity)")
let recepe2 = Recepe(name: "Beaf")
print("\(recepe2.name), \(recepe2.quantity)")
let recepe3 = Recepe(name: "Egg", quantity: 3)
print("\(recepe3.name), \(recepe3.quantity)")

struct Animal {
    let species: String
    
    init?(species: String) {
        if species.isEmpty {return nil}
        self.species = species
    }
}
let cat = Animal(species: "Cat")
print(cat)
let someAnimal = Animal(species: "")
print(someAnimal)


enum Unit {
    case Alex, Bill, Carle
    
    init?(char: Character) {
        switch char {
        case "A":
            self = .Alex
        case "B":
            self = .Bill
        case "C":
            self = .Carle
        
        default:
            return nil
        }
    }
}

let unit1 = Unit(char: "B")
let unit2 = Unit(char: "D")
/*
 required
 添加required修饰符
 子类都必须实现该构造器
 
class SomeClass {
    required init() {
    
    }
}

class SubClass: SomeClass {     //重写父类required的构造器时，不需要添加override修饰符，
required init() {               //子类也需要添加required，来应用于当前类的子类
 
    }
}
*/

/*
 通过闭包或函数
 设置属性的默认值
 */
class OtherClass {
    let someProperty: String = {
        return "someValue"          //返回值要和定义的类型一致
    }()                             //后面加()表示立即执行此闭包，不加相当于把闭包本身赋值给属性
}

*/

/* ==============================================================================================
                                    18_析构过程
 ============================================================================================== */
/*
/*
 析构过程
 当一个实例不在需要的时候
 swift通过自动引用计数去自动清理内存的过程
 
 析构器
 析构器只适用于类，
 类实例被释放前会自动调用析构器，
 析构器用关键字deinit标识

class SomeClass {
    deinit {
        
    }
}
*/

class DeinitTest {
    deinit {
        print("deinit")
    }
}
var test: DeinitTest? = DeinitTest()
test = nil

*/

/* ==============================================================================================
                                    19_嵌套类型
 ============================================================================================== */
/*
struct NestedStruct {
    enum enumType1: Character {
        case enumValue1 = "A", enumValue2 = "B", enumValue3 = "C"
    }
    enum enumType2: Int {
        case two = 2, three, four
        
        struct Values {
            enum num: Int {
                case num1 = 1, num2, num3
            }
        }
    }
}

print(NestedStruct.enumType1.enumValue2.rawValue)
print(NestedStruct.enumType2.Values.num.num2.rawValue)

class Classtype1 {
    class ClassType2 {
        func hello() -> String {
            return "Hello"
        }
    }
    enum enumType2: Int {
        case two = 2, three, four
        struct Values {
            enum num: Int {
                case num1 = 1, num2, num3
            }
        }
    }
}

let someClass = Classtype1.ClassType2()
print(someClass.hello())
print(Classtype1.enumType2.Values.num.num1.rawValue)

*/
/* ==============================================================================================
                                    20_扩展
 ============================================================================================== */
/*
/*
 扩展
 为已有的类 结构体 枚举 协议
 添加新的功能
 1.扩展计算型实例属性和计算型类型属性
 2.添加新的便利构造器
 3.添加新的实例方法和类方法
 4.添加新下标
 5.添加新的嵌套类型
 
 class SomeClass {
 }
 extension SomeClass: someProtocol {    //
    //扩展功能
 }
 */

extension Double {
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1000.0 }
    
    //var invalid: Double?                //扩展不能添加存储属性和属性观察器
}
let oneMeter = 100.cm
let centimetreMeter = 10.mm
print("100 cm = \(oneMeter)米, 10 mm = \(centimetreMeter)米")

struct Size {
    var width = 0.0, height = 0.0
}
struct Point {
    var x = 0.0, y = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
    
//    init() {}
//    init(origin: RectPoint, size: RectSize) {
//        self.origin = origin
//        self.size = size
//    }
//    init(center: RectPoint, size: RectSize) {
//        let originX = center.x - (size.width / 2)
//        let originY = center.y - (size.height / 2)
//        self.init(origin: RectPoint(x: originX, y:originY), size: size)
//    }
}
let rect1 = Rect()
let rect2 = Rect(origin: Point(x: 2.0, y: 3.0), size: Size(width: 3.0, height: 3.0))

extension Rect {
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point(x: originX, y:originY), size: size)
    }
}
let centerRect = Rect(center: Point(x: 4.0, y: 4.0), size: Size(width: 3.0, height: 3.0))

print(centerRect)

extension Int {
    func repetitions(task: () -> Void) {
        for _ in 0 ..< self {
            task()
        }
    }
}
4.repetitions {
    print("Four")
}

extension Int {
    mutating func square() {
        self = self * self
    }
}
var someInt = 3
someInt.square()

extension Int {
    subscript(digitIndex: Int) -> Int {
        var decimalBase = 1
        for _ in 1 ..< digitIndex{
            decimalBase *= 10
        }
        return (self / decimalBase) % 10
    }
}

print(21372173[2])
print(245963293023[7])

extension Int {
    enum Kind {
        case Negative, Zero, Positive
    }
    var kind: Kind {
        switch self {
        case 0:
            return .Zero
        case let x where x > 0:
            return .Positive
        default:
            return .Negative
        }
    }
}
func printIntgerKinds(numbers: [Int]) {
    for number in numbers{
        switch number.kind {
        case .Negative:
            print("-", terminator: " ")
        case .Zero:
            print("0", terminator: " ")
        case .Positive:
            print("+", terminator: " ")
        }
    }
    print("")
}

printIntgerKinds(numbers: [12, -4, 0, 32, -74, 2, 0, 12])

*/

/* ==============================================================================================
                                    21_协议
 ============================================================================================== */
/*
/*
 协议
 定义一个规则去实现特定的功能
 类 结构体 枚举都可以遵循这个协议
 并为这个协议的规则提供具体的实现
 
 protocol SomeProtocol {
    //协议内容
 }
 
 struct SomeStructure: SomeProtocol {       //遵守协议，冒号后面加协议名称，多个协议用逗号分开
    //结构体的实现
 }
 
 class SomeClass: NSObject, SomeProtocol {  //有继承父类时，父类名放在协议名前，逗号分开
    //类的实现
 }
 */

protocol SomeProtocol2 {
    var mustBrSettable: Int { get set }             //类型后面加{ get set }表示该属性可读可写
    var onlyRead: Int { get }                       //类型后面加{ get }表示该属性可读可写
    static var someTypeProperty: Int { get set }    //static 表示类属性
}

protocol FullyNamed {
    var fullName: String { get }
}

struct Person: FullyNamed {
    var name: String
    var fullName: String {
        return "Barack Hussein \(name)"
    }
}
let obama = Person.init(name: "Obama")
print(obama.fullName)

protocol RandomNum {
    func random() -> Int
}

class RandomNumGenerator: RandomNum {
    func random() -> Int {
        return Int(arc4random() % 10)
    }
}
let randomNum = RandomNumGenerator()
print(randomNum.random())

protocol toggleProtocol {
    mutating func toggle()
}
enum Toggle: toggleProtocol {
    case Off, On
    mutating func toggle() {
        switch self{
        case .Off:
            self = .On
        case .On:
            self = .Off
        }
    }
}
var lightSwitch = Toggle.Off
lightSwitch.toggle()
print(lightSwitch == .On)

protocol SomeProtocol4 {
    init(someParameter: Int)
}

class SomeIntClass: SomeProtocol4 {
    required init(someParameter: Int) {         //遵守协议的构造器，都必须添加required修饰符，确保子类都实现
        
    }
}

class Dice {
    let generator: RandomNum
    init(generator: RandomNum) {
        self.generator = generator
    }
    func roll() -> Int {
        return generator.random()
    }
}

class RandomNumGenerator1: RandomNum {
    func random() -> Int {
        return Int(arc4random() % 10)
    }
}
var d6 = Dice.init(generator: RandomNumGenerator1())
print(d6.roll())

protocol BabyDelegate {
    func feedBaby(baby: Baby)
}

class Baby {
    var needNumFood: Int?
    var babyDelegate: BabyDelegate?
    func eat() {
        babyDelegate?.feedBaby(baby: self)
    }
}

class Nanny: BabyDelegate {
    func feedBaby(baby: Baby) {
        baby.needNumFood = 10
        print("喂baby食物：\(baby.needNumFood)")
    }
}
let baby = Baby()
let nanny = Nanny()

baby.babyDelegate = nanny
baby.eat()
/*
 在extension中实现协议
 在扩展中遵守协议的效果和在原始类中一样
 在实际开发中实现协议时，推荐使用这种方式，有利于提高代码的阅读性
 */
protocol SomeProtocol5 {
    //协议内容
}

extension Nanny: SomeProtocol5 {
    //实现协议
}

protocol SomeProtocol6 {
    var description: String { get }
}

struct Cat {
    var name: String
}

extension Cat: SomeProtocol6 {
    var description: String {
        return "A cat named: \(name)"
    }
}

let lucyTheCat = Cat(name: "lucy")
let sp: SomeProtocol6 = lucyTheCat
print(sp.description)

/*
 协议本身也是一种类型
 可以放到集合中使用
 */
let things: [SomeProtocol6] = [lucyTheCat]      //用于存放遵守协议的类
for thing in things {
    print(thing.description)
}

/*
 协议的继承
 和类的继承相似，但协议可以继承一个或者多个其他协议
 */
protocol InheritingProtocol: SomeProtocol5, SomeProtocol6 {

}

/*
 类的专属协议
 通过添加class关键字
 限制协议只能被类遵守
 当被结构体或者枚举遵守时
 则会导致编译错误
 */
protocol SomeClassOnlyProtocol: class, InheritingProtocol {
    
}

protocol Name {
    var name: String { get }
}

protocol Age {
    var age: Int { get }
}

struct People: Name, Age {
    var name: String
    var age: Int
}

/*
 参数类型：Name & Age
 相当于 People
 */
func say(to people: Name & Age) {
    print("This is \(people.name), age is \(people.age)")
}

let p = People(name: "Joan", age: 20)
say(to: p)

protocol HasArea {
    var area: Double { get }
}

class Circle: HasArea {
    let pi = 3.1415927
    var radius: Double
    var area: Double { return pi * radius * radius }
    init(radius: Double) { self.radius = radius }
}

class Country: HasArea {
    var area: Double
    init(area: Double) { self.area = area }
}

class Animal {
    var legs: Int
    init(legs: Int) { self.legs = legs }
}

let objects: [AnyObject] = [ Circle(radius: 3.0), Country(area: 23460), Animal(legs: 4) ]
for object in objects {
    if let objectWithArea = object as? HasArea {
        print(objectWithArea.area)
    }else{
        print("没有遵守area协议")
    }
}

/*
 可选协议
 
 要求：
 对于不是一定要实现的方法属性，
 在前加optional关键字
 在使用可选方法和属性时
 它们的类型自动变为可选
 
 注意：
 可选协议前必须加@objc关键字
 @objc：表示该协议暴露给OC代码，但即使不与OC交互只想实现可选协议的要求，还是要加@objc关键字
 带有@objc关键字只能被OC类，或者带有@objc的类遵守，结构体和枚举都不能遵守
 */
@objc protocol CounterDataSource {
    @objc optional var fixAdd: Int { get }
    @objc optional func addForCount(count: Int) -> Int
}

class Counter: CounterDataSource {
    var count = 0
    var dataSource: CounterDataSource?
    func add() {
        if let amount = dataSource?.addForCount?(count: count) {
            count += amount
        }else if let amount = dataSource?.fixAdd {
            count += amount
        }
    }
}

class ThreeSource: NSObject, CounterDataSource {
    let fixAdd = 3
}

var counter = Counter()
counter.dataSource = ThreeSource()
counter.add()
counter.add()
print(counter.count)

protocol RandomNumG {
    func random() -> Int
}

class RandomNumGen: RandomNumG {
    var description: String {
        return "RandomNumGen"
    }
    func random() -> Int {
        return Int(arc4random() % 10)
    }
}

let randomNumG = RandomNumGen()
print(randomNumG.random())

extension RandomNumG {
    var description: String {
        return "extension"
    }
    func randomBool() -> Bool{
        return random() > 4
    }
}
print(randomNumG.randomBool())
print(randomNumG.description)       //扩展协议中的属性默认值的优先级比自定义的属性低

*/
/* ==============================================================================================
                                    22_类型转换
 ============================================================================================== */

/*
 is：类型检查
 as：类型转换
 */
/*
class Media {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Movie: Media {
    var director: String
    
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}

class Song: Media {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

let library = [Movie(name: "AF", director: "Aedc"), Song(name: "CV", artist: "Lona"), Song(name: "CV", artist: "Lona")]
let item1 = library[0]

var movieCount = 0
var songCount = 0

for item in library {
    if item is Movie {
        movieCount += 1
    }else if item is Song {
        songCount += 1
    }
}
print("movieCount:\(movieCount), songCount:\(songCount)")

for item in library {
    if let movie = item as? Movie {
        print("director: \(movie.director)")
    }else if let song = item as? Song {
        print("artist: \(song.artist)")
    }
}

*/

/*
 ==============================================================================================
                                    23_泛型
 ==============================================================================================
 */

/*
1.泛型：使用泛型能更清晰更简洁的表达代码意图
*/
//交换两个Int值
func swapTwoInts(a: inout Int, _ b: inout Int){
    let temp = a
    a = b
    b = temp
} 
var someInt = 3
var anotherInt = 5
swapTwoInts(a: &someInt, &anotherInt)







/*
 ==============================================================================================
                                    24_
 ==============================================================================================
 */




//MARK: - 问题点记录
/*
 1.NSOpenPanel
 需求：在画面上添加一个自定义按钮，跳转到一个自定义Window。
 问题点：代码编辑和调试阶段，直接在NSOpenPanel上添加button，可以实现。但是开启沙盒后，代码奔溃
 分析：查阅官方文档（沙盒），在沙盒模式下NSOpenPanel，继承与NSObject类，没有subview，无法直接在上面添加子view。
 解决办法：NSOpenPanel中有一个accessoryView属性，可以在窗口内添加一个自定义的view，
         然后设置isAccessoryViewDisclosed = true
         使得view常显示。把自定义button添加在自定义的accessoryView内即可
 
 2.NSTableHeaderView
 需求：headerView需要在实现拖拽功能的基础上，追加点击headerView排序功能
 问题点：既存代码通过继承NSTableHeaderView，监听鼠标 mouseUp mouseDown mouseDragged事件
        在这种结构中，点击headerView，只会进入mouseUp mouseDown，不会进入sortDescriptorsDidChange
        不重写mouseDown，则能进入sortDescriptorsDidChange，不会进入mouseDragged
 分析：现象上看，鼠标事件的接受者只能有一个。
 解决办法：在调试sortDescriptorsDidChange的过程中，观察了tableView中的一些属性，
         发现tableView.sortDescriptors的规律，然后自己在mouseUp方法中修改
         tableView.sortDescriptors属性，系统会进入sortDescriptorsDidChange方法
 规律：1.点击没有点击过的tableColumn，插入新的sortDescriptor到sortDescriptors[0]
      2.点击已经点击过的，但不是当前选中的，move当前sortDescriptor到sortDescriptors[0]
      3.点击已经点击过的，且当前选中的，取反ascending属性，move当前sortDescriptor到sortDescriptors[0]
 
 */


//MARK: -
/*
 1.macOS App的Menu Item的enAbled控制
    Menu Item有其点击方法menuItemClicked(_:)
    然后重写validateMenuItem方法
    override func validateMenuItem(_ menuItem: NSMenuItem) -> Bool {
        guard let action = menuItem.action else { return false }
        switch action {
        // ----- Menu > Item -----
        case #selector(menuItemClicked(_:)):
            return ismenuItemEnable()
        default:
            return true
        }
    }
 
 2.数组的一些接口
    array.filter({ bool }) 返回符合闭包条件的数据
    array.contains(where: { bool }) 返回闭包条件是否满足的Bool值
    array.index(where: { bool }) 返回符合闭包条件的index
    array.reduce(true, {$0 && ($1的条件）}) 返回所有数据计算条件的叠加值
    array.flatMap({ $0 as? 类名 }) 返回符合类名的数据
    array.flatMap({ $0.property }) 返回数组中所有元素的property值的数组
 */

