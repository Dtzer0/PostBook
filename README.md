# PostBook
7th Highton "함께 __할 수 있는 학교"

### 기획의도
대주제에 맞는 소주제를 논의하다가 도서관 신간신청을 할 수 있는 서비스를 구축해보기로 하였다.

### UI
<p align="left"><img src="https://user-images.githubusercontent.com/66416524/161487478-fc4cd202-a2f7-4c14-81d3-636d4b952377.png"  width="200" height="414">
<img src="https://user-images.githubusercontent.com/66416524/161556190-13ff6236-670b-472d-ac04-693ee72772a3.png"  width="200" height="414">
<img src="https://user-images.githubusercontent.com/66416524/161554474-efba69fc-c934-40a6-a614-c792e2fd1e01.png"  width="200" height="414">

### 결과
Moya로 네트워킹을 시도했었다.
처음에는 enum, TargetType, JSON 양식에 문제가 없어서 Vc의 reloadData 구역이 잘못된줄 알았었다.
  
4/4일에 다시 같은 양식으로 다른 URL을 받아와서 시도해 봤는데 잘되었다. 
  <p align="left"><img src="https://user-images.githubusercontent.com/66416524/161653162-4c25941c-287d-4e56-8c5f-93b88c3711e4.png"  width="200" height="414">
  <img src="https://user-images.githubusercontent.com/66416524/161653206-2c7de00f-3abd-4072-a98a-e2abd54d6cc4.png"  width="200" height="414">

  
결론적으로는 네트워킹 코드 문제가 아니라 테이블에 띄우는걸 안짜서 그런 것 같다
    
다시 훑어보고 원인을 알게되니 엄청나게 허무하다
  
  https://polyester-acorn-10f.notion.site/Moya-cc3d5425c8b544ceac93a825d7ffdf99
