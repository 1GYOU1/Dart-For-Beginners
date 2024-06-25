# Dart-for-Beginners

Dart 시작하기

### 📌 주요 기술 스택

<div style="display:flex;">
    <img src="https://img.shields.io/badge/Dart-0175C2?style=flat-square&logo=Dart&logoColor=white"/>
</div>

### 📌 배우는 이론

- Variables
- Data Types
- Functions
- Classes
- Syntax
- Constructors
- Inheritance
- Null Safety
- Mixins

<br>

## #0 INTRODUCTION

### #0.2 How To Learn

### 1. Dart 초기 세팅

- flutter를 설치하면 dart는 자동으로 같이 설치됨.

### ✔ Mac

- (brew 설치: https://brew.sh/index_ko)
<br> 
>$ brew install flutter

### ✔ window
- (chocolatey 설치: https://community.chocolatey.org/)
<br>
> $ choco install flutter

<br>

### 2. vscode extensions 설치
- Flutter 검색, 설치

<img width="783" alt="스크린샷 2024-06-24 오후 11 58 59" src="https://github.com/1GYOU1/Dart-for-Beginners/assets/90018379/7d819247-526d-4b24-a160-d8eed349d7c1">

<br>

### 3. vscode에서의 dart 사용법

하단 이미지와 같이 .dart 확장자의 파일을 생성하면 vscode 에디터에 Run | Debug 버튼이 나타나고, Run 실행하면 하단 터미널 창에서 결과 값을 보여줌.

![스크린샷 2024-06-22 오전 2 31 29](https://github.com/1GYOU1/Dart-for-Beginners/assets/90018379/f13b67b6-c00e-4ea6-8dab-d807f8dab884)

<br>
<br>

## #1 VARIABLES

### #1.0 Hello World

main함수

- main함수는 모든 Dart 프로그램의 Entry point이다.
- main 함수에서 쓴 코드가 호출된다. 
    - 만약 main이 없다면 실행이 되지 않는다.
- dart는 자동으로 세미콜론(;)을 붙여주지 않기 때문에 직접 붙여야 한다. 
    - 일부러 세미콜론을 안 쓸 때가 있기 때문

```dart
void main(){
    print("hello world");
}
```

<br>
<br>

### #1.1 The Var Keyword

#### 변수를 만드는 2가지 방법

- dart에서는 변수를 1. `var` 키워드 또는 2. `명시적 타입`을 사용해 만든다.

- 다른 타입의 변수는 서로 대입할 수 없다.

- 주로 함수나 메소드 내에서 `지역변수`를 선언할 때에는 var를 사용하는 것이 Dart 스타일가이드에서 권장하는 방식

- class에서 `변수`나 `프로퍼티(속성)`를 선언할 때는 `명시적 타입`을 지정하는 것이 일반적.

- 코드가 알아서 명시적 타입을 추론해주기도 함.


### 1. var 사용 - 방법 ①

- 함수나 메소드 내부에 지역변수를 선언할 때는 var를 사용

```dart
void main(){
    var name = "gyuwon";
}
```

### 2. 명시적 타입 사용 - 방법 ②

- class에서 변수나 property를 선언할 때는 타입을 지정

```dart
void main(){
    String name = "gyuwon";
}
```

### 3. 다른 타입의 변수는 서로 대입할 수 없다.

```dart
void main() {
    var name = "gyuwon"; // 방법 1
    String name = "gyou1"; // 방법 2
    name = "1gyou1 ";
}
```

<br>
<br>

### #1.2 Dynamic Type

- dart는 `여러 타입을 가질 수 있는` dynamic 타입을 지원한다. (해당 변수의 타입을 알 수 없을 때 주로 사용)

- 만약 변수를 선언할 때 아무런 값을 지정하지 않거나, 타입을 선언하지 않으면 자동적으로 dynamic 타입을 가진다.

- 대표적으로 타입을 알기가 힘들 때 사용한다. ex) json 작업

- dynamic 타입은 다양한 타입을 가질 수 있기 때문에 이상적으로는 사용을 피할 것.

```dart
void main() {
    var name = "gyou1";
    name = 12;
    name = true;
}

void main() {
    dynamic name = "gyou1"; // 상단과 동일, 타입 명시 버전
    name = 12;
    name = true;
}
```

<br>
<br>

### #1.3 Nullable Variables

### Null Safety
- Dart 버전이 업데이트 되면서 추가된 기능으로, 개발자가 null 값을 참조하지 못하도록 하는 것이 주요 목적이다.
- 기존에는 null 값을 참조하면 런타임 에러가 발생할 수 있었으나, Null Safety를 통해 컴파일 전에 오류를 방지할 수 있게 해줌.
    - (사용자가 앱을 사용하는 동안 발생하는 런타임 에러를 최소화하여 안전성 확보)
- Null Safety를 사용하면 변수가 null일 수 있는지 여부(nullable)를 명시적으로 나타내어 안전한 코드 작성을 지원함.

사용 예시
```dart
void main(){
    String? name = "gyou1"; // ? 물음표를 사용해 변수가 null일 수 있음을 선언.
    name = null;
}
```
<br>

### 1. null인데 `?` 안써주면 오류

`?` 로 null일 수 있음 선언을 안해주면 오류남

![스크린샷 2024-06-25 오후 11 14 14](https://github.com/1GYOU1/Dart-for-Beginners/assets/90018379/dec6d347-445b-474c-9321-130867d1041f)

### 2. null 값인지 if문으로 확인 필요
변수가 null값인지 아닌지 if문으로 확인 필요, 확인 안하면 오류

![스크린샷 2024-06-25 오후 11 22 12](https://github.com/1GYOU1/Dart-for-Beginners/assets/90018379/71cc4452-e1c5-4de5-85e1-8e8b3939c79f)

#### if문 작성 방법 ①
```dart
void main(){
    String? name = "gyou1";
    name = null;
    if(name != null){ // null인지 확인
      name.isNotEmpty; // 확인 후 실행
    }
}
```

#### if문 작성 방법 ②
```dart
void main(){
    String? name = "gyou1";
    name = null;
    name?.length; // null인지 확인 후 실행
}
```

<br>
<br>

### #1.4 Final Variables

#### Final

- var 또는 명시적 타입으로 변수를 만들어도 나중에 변수 값이 수정되는 경우가 생기는데, 
    <br>자바스크립트의 const처럼 한 번 정의된 변수를 수정할 수 없게 만들려면 `final` 사용하기.

사용 예시
```dart
void main(){
    final name = "gyou1"; // string 타입 자동 추론.
}
```
명시적 타입 작성 기재 버전
```dart
void main(){
    final String name = "gyou1";
}
```

<br>

#### final 변수 값 변경 시도 오류 예시
- 변수 수정 불가

![스크린샷 2024-06-25 오후 11 42 49](https://github.com/1GYOU1/Dart-for-Beginners/assets/90018379/99bb612b-97b1-4432-8910-0c571a337c11)

![스크린샷 2024-06-25 오후 11 41 38](https://github.com/1GYOU1/Dart-for-Beginners/assets/90018379/b518302a-4a05-470a-b3cb-a628b08b0758)


<br>
<br>

### #1.5 Late Variables

### late

- final이나 var 앞에 붙여줄 수 있는 수식어이다.
- late는 초기 데이터 없이 변수를 선언할 수 있게 해준다.
- 변수를 먼저 만들고, 데이터를 나중에 넣을 수 있게 해줌.
- data fetching 할 때 유용

<br>

사용 예시
```dart
void main(){
    late final String name;
    // do something, go to api
    name = 'gyou1';
}
```

### 1. final 사용으로, 최초 1회 데이터가 할당되면 late써도 다른 값으로 변경 못함.

![스크린샷 2024-06-25 오후 11 55 06](https://github.com/1GYOU1/Dart-for-Beginners/assets/90018379/280bc927-3f09-4216-99ea-612f71a79e99)


### 2. 최초 1회 값이 할당되기 전에는 데이터가 없기 때문에 접근 못함.

![스크린샷 2024-06-25 오후 11 57 08](https://github.com/1GYOU1/Dart-for-Beginners/assets/90018379/c431be9c-d10d-4455-9cf1-fe48b94efc61)

<br>

### late를 사용해야하는 이유

late를 사용하지 않고 빈 변수 생성한 예시 코드

```dart
void main() {
    final name; // 이렇게 변수 선언 가능하긴 함. 권장 XX
    name = 'nico';
}
```
- class 내의 인스턴스 변수가 final이면 만들면서 바로 할당해야하고, late final이면 만들고 난 후에 할당해도 됨.
    - final 변수는 선언되자마자 함수 실행, late 변수는 선언되어도 함수를 실행시키지 않고, 나중에 변수를 사용할 때 함수를 실행 시킴.
- api 사용에 있어서 null을 실수로 사용하는 것을 방지하는 기능적인 부분을 강조
- Nullable 타입이 아닌(?가 없는) 타입들은 빈 값(null)을 가질 수 없는데, 
    <br>late 키워드를 써줘서 사용하기 전에 할당한다고 알려주어 null-satefy가 보장됨.(안정성)
- 다른 함수에서 값을 변경할 수 있을 때 의미가 있다고 함. class 문법에서 사용하게 됨.

<br>

### late의 함수 실행 시점
- 다른 변수는 선언되자마자 함수 실행, late 변수는 선언되어도 함수를 실행시키지 않고, 
<br>나중에 변수를 사용할 때 함수를 실행 시킴.

#### 1. late는 추가 함수를 실행하지 않으면 작동 안함.

![스크린샷 2024-06-26 오전 12 20 00](https://github.com/1GYOU1/Dart-for-Beginners/assets/90018379/e8b339de-03f4-4660-b9df-7fe143afc671)

#### 2. late 추가 함수 실행시 작동

![스크린샷 2024-06-26 오전 12 20 36](https://github.com/1GYOU1/Dart-for-Beginners/assets/90018379/728ac1ff-bc43-4f96-914b-439593342430)

#### 3. final 사용하지 않아도 상단과 동일한 결과 - late가 아니면 즉시 실행

![스크린샷 2024-06-26 오전 12 27 01](https://github.com/1GYOU1/Dart-for-Beginners/assets/90018379/81feaab2-10f8-4fce-9106-8d65662e394e)

<br>
<br>

### #1.6 Constant Variables

```dart

```