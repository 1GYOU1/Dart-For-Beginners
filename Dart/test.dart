/*
  1.클래스를 Dart 언어를 사용하여 구현하시오
  (1) BroadCastProgram 클래스
  - title방송제목string
  - type 장르string
  - runningTime 방영시간 list

  (2) 생성자는 한줄로 작성
  (3) 메서드는 다음과 같은 것을 가짐
  - showType() 장르 출력
  - info() 다음과 같은 문장을 출력
  {타이틀}은 {방영시작시간}에서 {방영종료시간}까지 방영합니다.
  
  (4) 심화과정
    status()
   호출시 현재 시간기준으로 방영중인지 방영중이 아닌지 출력
*/

void main(){
  BroadCastProgram tvnSeoJin2 = const BroadCastProgram('서진이네2', '예능', ['20:40', '22:00']);

  tvnSeoJin2.showType();
  tvnSeoJin2.info();
  tvnSeoJin2.status();

  BroadCastProgram tvnIamSolo = const BroadCastProgram('나는 SOLO', '관찰 버라이어티', ['22:30', '23:50']);

    tvnIamSolo.showType();
    tvnIamSolo.info();
    tvnIamSolo.status();
}

class BroadCastProgram {
  final String title;
  final String type;
  final List<String> runningTime;
  const BroadCastProgram(this.title, this.type, this.runningTime);

  void showType(){
    print(type);
  }

  void info(){
    print('$title은 ${runningTime[0]}에서 ${runningTime[1]}까지 방영합니다.');
  }

  void status(){
    final DateTime now = DateTime.now();
    final int nowTimeMinutes = now.hour * 60 + now.minute;// 현재
    final List<String> startTime = runningTime[0].split(':');
    final List<String> endTime = runningTime[1].split(':');

    final int startTimeMinutes = int.parse(startTime[0]) * 60 + int.parse(startTime[1]);// 방영 시작 시간
    final int endTimeMinutes = int.parse(endTime[0]) * 60 + int.parse(endTime[1]);// 방영 종료 시간

    if(startTimeMinutes <= nowTimeMinutes && nowTimeMinutes < endTimeMinutes){
      print('현재 방영중입니다.');
    }else{
      print('지금은 방영 시간이 아닙니다.');
    }
  }
}