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


### 1. var 사용

- 함수나 메소드 내부에 지역변수를 선언할 때는 var를 사용

```dart
void main(){
    var name = "gyuwon"
}
```

### 2. 명시적 타입 사용

- class에서 변수나 property를 선언할 때는 타입을 지정

```dart
void main(){
    String name = "gyuwon"
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
