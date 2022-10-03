#  계산기 프로젝트
## 🧮 프로젝트 소개
- 두개의 큐 타입을 활용하여서 사칙연산을 수행하는 계산기
- 사칙 연산의 우선 순위는 무시함.

## 📍 목차
#### 1. [팀원](#🧑🏻‍💻-1-팀원)
#### 2. [순서도](#🔖-2-순서도)
#### 3. [타임라인](#⏱-3-타임라인)
#### 4. [실행 화면(기능 설명)](#💻-4-실행-화면기능-설명)
#### 5. [TDD](#🎯-5-TDD(테스트-코드-작성-과정))
#### 6. [트러블 슈팅](#🚀-5-트러블-슈팅)
#### 7. [참고 링크](#📎-6-참고-링크)

## 🧑🏻‍💻 1. 팀원
|미니|
|:----:|
|<img width="180px" img style="border: 2px solid lightgray; border-radius: 90px;-moz-border-radius: 90px;-khtml-border-radius: 90px;-webkit-border-radius: 90px;" src="https://i.imgur.com/ikEGO8k.jpg">|
| <a href="https://github.com/leegyoungmin"> <center>*@leegyoungmin*</center></a>|

## 🔖 2. 순서도
### Class Diagram
![ClassDiagram](https://i.imgur.com/fytj1rk.jpg)

## ⏱ 3. 타임라인
<!-- : 시간 순으로 프로젝트의 주요 진행 척도를 표시 -->
- **2022.09.19**
    - 프로젝트 초기 설정
    - 큐 타입에 대한 학습

- **2022.09.20**
    - 테스트 코드 작성
    - 큐 타입 구현
    - PR 발송

- **2022.09.21 ~ 22**
    - 테스트 코드 리팩토링
    - 큐 타입 리팩토링 진행
    
- **2022.09.23**
    - 연산자 및 피연산자 로직 구현
    - 연산 식 두개의 큐로 분리 로직 구현
    - PR 발송

- **2022.09.24 ~ 26**
    - 리뷰에 따른 리팩토링 진행
    - 테스트 코드 리팩토링

- **2022.09.27 ~ 29**
    - 사용자와 상호작용 로직 구현
    - 뷰 관련 로직 구현
    - PR 발송
- **2022.09.30**
    - 리뷰에 따른 코드 리팩토링

## 💻 4. 실행 화면(기능 설명)
### 📌 STEP 1
- Queue 자료 구조에 대한 테스트 코드 작성 및 테스트 결과
    ![TestResult](https://i.imgur.com/qraEuJF.png)
    
    Queue 타입 내 구현된 프로퍼티 및 메서드에 대한 테스트를 수행하였습니다.
    테스트 수행 결과 모두 통과하였습니다.
- Queue 타입에 대한 Coverage
    ![Coverage](https://i.imgur.com/34UHCWG.png)

### 📌 STEP 2

## 🎯 5. TDD(테스트 코드 작성 과정)
### 📌 STEP 1
- 리팩토링 전
    - 처음 TDD를 수행하기 위해서 실패하는 테스트를 작성 후, 코드를 작성하였습니다.
    - 로직 작성 후, 실패하는 부분에 대해서 고민을 하게 되었습니다.
    - 저의 테스트가 지속적으로 실패하게 된 이유는, 비즈니스 로직을 잘못 작성한 부분과 테스트 동작이 실패 가능한 테스트 코드였다는 것입니다.
    - 테스트 코드가 실패가능하게 작성되었다면, 비즈니스 로직이 잘 작성되고, 잘 동작하여도 실패하는 테스트가 되기 때문에 조심해야 한다는 사실을 몸소 느끼게 되었습니다.

- 리팩토링 후 (리뷰 후 리팩토링)
    - 테스트 코드에 대해서 많은 부분에서 공부가 부족하다고 생각하여서, TDD와 테스트 코드를 공부 후 다시 작성할 수 있도록 하였습니다.
    - 테스트 코드는 명세서의 역할과 동시에 어떤 것을 테스트 하고 싶은지를 명확하게 정의 해야 한다는 생각을 하게 되었습니다. 그래서 아래와 같이 표를 정리하고, 테스트 코드를 작성할 수 있도록 하였습니다.
    
        | 목적 |
        | -------- |
        | 테스트 하고 싶은 것 : 큐가 FIFO의 동작을 잘 수행하는지 |
        | 테스트 코드의 역할 : 명세서 + 동작확인 → 하나의 테스트 코드에서 한 가지의 메서드 및 프로퍼티에 대해서 검사한다.|

        | 구분 | 설명 | 테스트 코드 로직 | 메서드 및 프로퍼티 |
        |:---|:---|:---|:---|
        | 1 | 빈 큐를 생성할 수 있는지에 대해서 테스트 | 테스트 코드 내에서 큐의 생성자의 인자를 주지 않고 초기화 후 비어있는지 확인 | init + isEmpty |
        | 2 | 배열을 통해서 비어있지 않는 큐를 생성할 수 잇는지 테스트 | 테스트 코드 내에서 배열을 생성자의 인자로 주어서 초기화 후 비어있지 않은지 확인 | init + isEmpty |
        | 3 | enqueue의 과정을 통해서 값이 정확하게 들어가지는 테스트 | 테스트 코드 내에서 enqueue를 수행 후 제일 처음 나오게 될 값이 추가한 요소의 값과 동일한지 확인 | enqueue + front |
        | 4 | 여러번의 enqueue의 과정을 한 후, 큐의 요소의 개수와 동일한지 테스트 | 테스트 코드 내에서 반복적으로 enqueue를 수행한 후 count 변수가 동일한지 확인 | enqueue + count |
        | 5 | dequeue를 하면 처음 들어간 값이 추출되는지 테스트 | 테스트 코드 내에서 enqueue를 수행 후 dequeue를 통해서 추출되는 값이 동일한지 확인 | enqueue + dequeue |
        
    - 위와 같은 표로 작성하면서, `Queue`의 명확한 동작을 확인하기 위해서 한가지의 동작만을 테스트 하는 것에는 부족함이 있다고 판단하여서, 기본적인 동작 후, 추가적 동작에 대해서 테스트 할 수 있도록 하였습니다.
### 📌 STEP 2
![요구사항](https://i.imgur.com/WZIC8e8.png)


- 위의 요구사항에 따른 사용자 입력에 대한 처리 로직을 구현하였습니다.
    - `Operator` : 연산자 타입
    - `ExpressionParser` : 사용자 입력으로 생성된 문자열을 계산이 가능한 타입으로 변경 해주는 타입
    - `Formula` : 실질적인 계산이 동작하게 되는 수식 타입

- TDD
    - 구현한 각 타입에 대해서 테스트 코드를 진행하도록 구현하였습니다.
    - OperatorTest
        | 목적 |
        | -------- |
        | 테스트 하고 싶은 것 : 각각의 연산자가 자신에 맞는 연산을 수행하는가 |


        | 구분 | 설명 | 테스트 함수 내 로직 | 연산자 |
        | :--- | :--- | :--- | :--- |
        | 1 | add 연산자 정상 수행 | 전역변수 2개의 합 사용자정의 연산 결과와 전역 변수 2개의 합을 비교 | + |
        | 2 | subtract 연산자 정상 수행 | 전역변수 2개의 차 사용자정의 연산 결과와 전역 변수 2개의 차를 비교 | - |
        | 3 | multiply 연산자 정상 수행 | 전역변수 2개의 곱 사용자정의 연산 결과와 전역 변수 2개의 곱을 비교 | * |
        | 4 | divide 연산자 정상 수행 | 전역변수 2개의 나눗셈 사용자 정의 연산 결과와 전역 변수 2개의 나눗셈 결과를 비교 | / |
        | 5 | divide 연산자 오류 수행 | 함수 내 선연된 1보다 큰 정수와 0을 나눗셈 사용자 정의 연산 결과가 오류가 발생하는가? | / |

    - FormulaTest
        | 목적 |
        | -------- |
        | 테스트 하고 싶은 것 : 변환된 수식이 정확하게 연산이 되는가 |
        
        | 구분 | 설명 | 테스트 함수 내 로직 | 함수 |
        | :--- | :--- | :--- | :--- |
        | 1 | 피연산자의 수가 연산자의 수보다 1개 많은 경우 연산 정상 수행 | 테스트 함수 내 연산자 큐와 피 연산자 큐 두개의 배열을 선언 후 연산 결과와 동일한지 확인 | result |
        | 2 | 피연산자의 수가 연산자의 수보다 2개 많은 경우 연산 수행 결과 예측치와 동일한가 | 테스트 함수 내 연산자 큐와 피 연산자 큐 두개의 배열을 선언 후 연산 결과와 동일한지 확인 | result |
        | 3 | 연산자의 수가 피 연산자의 수와 동일한 경웅 연산 수행 결과가 예측치와 동일한가 | 테스트 함수 내 연산자 큐와 피 연산자 큐 두개의 배열을 선언 후 연산 결과와 동일한지 확인 | result |
        | 4 | 연산자의 수가 피연산자의 수보다 큰 경우 연산 수행 결과가 예측치와 동일한가 | 테스트 함수 내 연산자 큐와 피 연산자 큐 두개의 배열을 선언 후 연산 결과와 동일한지 확인 | result |
        | 5 | 연산자가 /인 경우 피연산자가 0인 경우 nil을 반환하는가 | 테스트 함수 내 연산자 큐와 피 연산자 큐 두개의 배열을 선언 후 연산 결과와 동일한지 확인 | result |
        | 6 | 피연산자가 없는 경우 nil을 반환하는가 | 테스트 함수 내 연산자 큐와 피 연산자 큐 두개의 배열을 선언 후 연산 결과와 동일한지 확인 | result |
        
    - ExpressionParserTest
        | 목적 |
        | -------- |
        | 테스트 하고 싶은 것 : 문자열로 된 수식이 연산이 가능한 형식으로 변환되었는가? |

## 🚀 6. 트러블 슈팅
### 📌 STEP 1
- Generic타입과 Protocol 타입
    ```swift
    protocol CalculateItem { }

    extension Int: CalculateItem { }
    extension Double: CalculateItem { }

    struct CalculatorItemQueue<Element: CalculateItem> {
        var inputStack: [Element] = []
        var outputStack: [Element] = []
        ...
    }

    ```
    - 처음에는 `CalculateItem`타입의 리스트 타입을 통해서 구현하였습니다.
    - 하지만, 테스트코드를 작성시 `Equtable` 프로토콜을 채택한 타입으로만 `XCAssert` 메서드를 활용할 수 있었습니다.
    - 그래서 제네릭 타입을 활용하고, `Equtable` 프로토콜을 이미 채택하고 있는 `Int`,`Double` 타입을 확장하여서 제네릭의 타입으로 지정할 수 있도록 하였습니다.
    
- LinkedList vs Double Stack
    - Swift에서 Queue를 구성하기 위해서 다양한 방법이 있는 것을 공부하였습니다.
    - 단순 배열을 통하여 구현하였을 경우, `removeFirst`메서드를 활용하여야 했습니다. `removeFirst`의 시간 복잡도는 O(n)의 복잡도를 가지게 됩니다. 그렇기 때문에 많은 데이터가 들어왔을 경우에는 성능적인 측면에서 부족할 수 있다고 생각하였습니다.
    - Linked List를 통하여 구현하였을 경우, 일반 배열을 활용하는 것보다는 deqeue 메서드에서 복잡도가 O(1)의 복잡도로 낮아지는 것을 확인할 수 있습니다. 하지만, 연결 리스트를 활용할 때에는 값,이전 노드의 참조, 다음노드의 참조의 값을 가지고 있어야 하기 때문에 메모리 소모가 크다고 판단하였습니다.
    - Double Stack을 활용하여서 구현하였을 경우에는 단순 배열에서 겪는 문제점과 연결 리스트에서의 단점을 가지고 있지 않기 때문에 이를 통해서 구현하였습니다.

### 📌 STEP 2
- 음수에 대한 처리
    - 모든 수에 대해서 연산자를 앞 + 뒤로 빈 문자열을 추가하여 받아서 처리하는 것으로 결정하였다.
    - 로직 상 음수로 들어오는 값에 대한 연산자를 추출하는 문제와 피연산자를 양수로 변경하는 문제가 있었기 때문이다.
    - 음수의 조건은 앞에 빈 문자열이 존재하고, 뒤에 Double 타입으로 변경될 수 있는 양수가 존재하는 경우이다. 하지만, 빈 문자열없이 존재하게 된다면, 2개의 연산자가 연속적으로 나오게 된다.
    - 2개의 연속적인 연산자를 추출하기 위해서는 `앞에 연산자가 2개 존재하고, 뒤에 연산자가 -를 표현해야 한다.`라는 조건으로 음수를 판단하여야 한다. 이에 대한 처리는 굉장히 복잡하기 때문에 빈 문자열을 추가하여서 연산자와 피연산자를 우선적으로 구분하려 하였습니다.

- Formula result 함수 내 처리
    - Formula `result() -> Double?` 함수는 두개의 연산자 큐와 피연산자 큐를 통해서 연산 결과를 도출하는 함수이다.
    - 두개의 큐를 통해서 연산을 수행할 수 있는 데이터에 대해서 수행할 수 있는 로직을 작성하려고 하였다.
    - 하지만, 고민 되었던 점은 초기화를 통해서 받아온 원시 프로퍼티의 값을 dequeue를 통해서 데이터를 지우는 것과 프로퍼티 값을 제거하는 것을 고민하였다.
    - 이에 대해서 프로퍼티의 값을 수정하는 것은 입력 받은 데이터를 잃어버리는 일이라고 생각하여서 함수 내에서 변수를 생성하여서 활용할 수 있도록 하였다.

        ```swift
        private let operands: CalculatorItemQueue<Double>
            private let operators: CalculatorItemQueue<Operator>

            init(operands: [Double] = [], operators: [Operator] = []) {
                self.operands = CalculatorItemQueue(elements: operands)
                self.operators = CalculatorItemQueue(elements: operators)
            }

            ...

            func result() -> Double? {
                var operands = operands, operators = operators
                ...
            }
        }
        ```
- ExpressionParser 로직
    ```swift
    static func parse(from input: String) -> Formula {
        let otherSpecial: CharacterSet = ["^", "!", "@", "#", "$", "%", "&"]
        let removedSpecial = input.components(separatedBy: otherSpecial).joined()
        
        let removedPlain = removedSpecial.filter {
            Double(String($0)) != nil || Operator(rawValue: $0) != nil || $0 == " "
        }
    }
        
    ```
    - ExpressionParser의 로직 사용자의 입력을 받는 부분을 아직 구현하지 않았기 때문에 Edge Case에 다양한 입력 오류가 존재할 수 있는 부분을 추가하였습니다. 이런 부분에 대해서는 추가 구현을 한 후, 수정을 하면 되는 걸까요?

    ```swift
    static private func componenetsByOperators(from input: String) -> [String] {
        let operators = Operator.allCases.map { $0.rawValue }
        var result: String = input
        
        operators.forEach { result = result.split(with: $0).joined() }
        result = result.replacingOccurrences(of: "  ", with: "")
        
        return result.split(separator: " ").map { $0.description }
    }
    ```
    - 빈 문자열을 기준으로 피연산자와 연산자를 구분하였는데, 작성한 로직상 마지막 부분에 "  " 두개의 빈 문자열이 붙어있는 경우에 대해서 직접적으로 지워주는 것에 문제가 발생하는 부분이 있는 지 궁금합니다.
- Formula 로직
    ```swift
    func result() -> Double? {
        ...
        while !operands.isEmpty {
            ...
            
            do {
                calResult = try firstOperator.calculate(lhs: calResult, rhs: rhs)
            } catch {
                return nil
            }
        }
        
        return calResult
    }
    ```
    - result 함수 내에서 나눗셈 연산은 throws 함수를 호출하게 되어서 `do - try - catch` 구문을 사용하였습니다. 아직은 다른 오류가 존재하지 않지만, 추가적인 오류가 다양하게 발생하게 될 경우에는 내부에서 catch 구문으로 처리를 하여 값을 반환하는 부분이 적절한지, `throws` 함수로 선언하여서 외부에서 오류를 처리할 수 있도록 하는 것이 적절한지 궁금합니다.

### 📌 STEP 3
- 스크롤 뷰의 업데이트
    - 스크롤 뷰에 개별적인 뷰를 추가하고, 뷰를 밑으로 내리는 방식을 활용하여서 사용자에게 지속적으로 최근 추가된 값을 보여주도록 하려고 하였다.
    - 하지만, 스크롤 뷰에 뷰를 추가한 후 Offset을 지정 해주는 과정에서 가장 하단으로 내려가는 것이 아니라 다른 곳으로 이동하는 이슈가 발생하였다.
    - 이를 해결하기 위해서 스크롤 뷰와 뷰의 업데이트 관련하여서 공부하게 되었습니다.
    - 뷰는 자동적으로 업데이트 주기를 가지고 있지만, 이는 메인 루프 안에서 한번만 수행되도록 되어있습니다. 또한, 뷰의 업데이트 주기는 대체적으로 1/60초에 한번입니다.
    - 스크롤 뷰에 뷰를 추가하였다고 하여도 스크롤 뷰가 뷰를 업데이트 하는 것은 업데이트 주기에 맞춰서 수행하도록 됩니다. 그렇기 때문에 저희는 스크롤 뷰에서 `업데이트 주기를 기다리지 말고 지금 바로 업데이트 해줘`라고 명령을 할 수 있도록 해야합니다.
    - 그래서 `layoutIfNeeded` 메서드를 통해서 직접 바로 레이아웃을 업데이트 시키지 않고, Offset을 계산하여서 맨 마지막의 값으로 이동하지 않았습니다.
    - 결과적으로 스크롤 뷰의 레이아웃을 업데이트 하여서 최신 레이아웃의 상태로 변경한 후, Offset을 이동할 수 있도록 하였습니다.

## 📎 7. 참고 링크
- [Queue 데이터 타입 구현](https://woongsios.tistory.com/222)
- [뷰 레이아웃 업데이트 관련 Reference](https://medium.com/mj-studio/번역-ios-레이아웃의-미스터리를-파헤치다-2cfa99e942f9)
