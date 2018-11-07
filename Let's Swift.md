# Let's Swift 

Table Of contents: 

- Key Notes - 10: 10:20
- 사이드 프로젝트로 앱스토어 1위 공략하기 - 10:25 - 10:55
- iOS loves Ruby - 11:00 - 11:30
- 11:35 - 12:05 - TDS (Toss Design SyStem) v2 소개
- 12:05  - 13:00 - lunch time
- 13:00 - 13:30 - RxRIBs, 멀티플랫폼 아키텍처 with Rx
- 13:35  - 14:05 - ReactorKit으로 RxSwift 시작하기
- 14:10  - 14:40 - ReSwift와 함께 단방향 아키텍쳐
- 14:45 - 15:15 - ReSwift Internal
- 15:15 - 16:00 - Break
- 16:00 - 16:30 - GraphQL over Rest API
- 16:35 - 17:05 - SIMD & MPS in swift
- 17:10 - 17:40 - 미스터 선샤인
- 17:40 - 18:00 - 경품 추천







## Keynote 

#### by 김정



States of Union

앱 스토어, Ruby IOs 개발도구, 유아이 콤포넌트: TDS

RxSwift( ReactiveX) vs RESwift(Flux)

UNi-direction Architecture: RIBs, ReactorKit

GraphQL, SIMD & Metal

<미스터 션샤인>



워크숍

코드리뷰, 디버깅,  AI(ML), TDD



Swift Open-Source

###Swift 5 



ABi Stability

Async / Await

Other improvements

 - String
 - Standard Library
 - Foundation

Out of Scopes

- Generators, move-only types

###Swift-NIO

Event-Driven network application framework

for high performance protocol servers & clients

like Netty ( in Java)

server-side projects

- Vapor, kitura(IBM), smoke(Amazon)
- Size-Projects
- - protobuf, transport

###Swift-Syntax

/tools/SouceKitd.framework

- XPC 기반 소스 분석 도구 프레임워크 (c++)

Sourcekitten

- Framework + CLI: Interacting with sourcekit



/lib/Syntax

- c++기반 스위프트 문법 데이터 구조

swift-Syntax

- libsyntax  스위프트 네이티브 바인딩 오픈소스

###Swift- LSP

New open-source project

For a swift and C-family language service

Based on the LSP(language server protocol)

- xcode가 아닌 다른 개발 환경에서 작업이 가능해짐



# 사이드 프로젝트로 앱스토어 1위 공략하기 - 10:25 - 10:55

### by 노수진



네이버 웹툰에서 개발중

보안카드 위젯 만드신분



앱 출시 과정

아이디어 단계

앱 스토어 출시

초기 사용자 모집

입소문을 타고 성장



작고 재밌는 아이디어에서 시작하기



새 앱ㅇㄹ 다운로드 하는 이유

- 쓰고 있던 앱이 관리되지 않을때
- 더 (기능이 많은 , 적은, 이쁜, 편리한) 앱을 발견했을때
- 새 아이폰을 샀을때



비즈니스 모델 정하기



앱 리젝 받기

Rejected

- 앱기능의 문제
- 심각한 크래시 
- 사용성 문제
- 

Metadata Rejected

- 앱 스토어 정보 문제
- 허위 / 과대 광고, 부적잘한 스크린샷 앱 이름 문제 등등



사용자 모으기

- 지인들 및 인터넷에 지속적인 인터넷 홍보
- 어느 정도 다운로드 후 페북 광고 10만원 소비
- 한 유저가 등록비용은 $1.5 
- 앱 비용 $0.99 거기서 70프로가 수익이 남
- $0.693 vs $1.5 
- Redeem code 사용으로 블고거들에게 배포함



유저들과 소통하기

- 페이스북 페이지 만들기 
- MFMailComposeViewController 사용하면 앱 떠나지 않고 매일을 보낼수 있음 

Contact the app Review Team



앱스토어 리뷰 관리하기



### iOS loves Ruby - 11:00 - 11:30

by -김은영



ios 개발이 조금 더 편해지는 Ruby 활용법



일본에서 Minne에서 근무하고 있음



일본에서는 Ruby가 모든 language에서 사용하고 있음

즉 ios 에서도 Ruby를 사용함



Ruby? Gem?

- 객체 지향 프로그래밍 언어
- 순수 객체 지향 언어로 정수나 문자열등을 포함한 모든 데이터 형식 등 모든 것이 객체



### TDSv2

Toss에서 ios 개발자 이택규



Toss Design System



### RxRIBs, 멀티플랫폼 아키텍처 with Rx



Uber Ribs is multi-platform architecture

1. multi-platform architecture
2. router, inteactor, builder, presenter, and view
3. business logic determines the state tree



### GraphQL over Rest

#### The evolution of API Design



#### API



### Apple Employee in South Korea



MDM - mobile device management.

It is driven to B2B to use the mobile device and control the device by company.



It allows to install and block the app by the user. 

- 0 touch deployment. 

- cannot delete the apps
- cannot install certain apps
- do not need apple id to install
- 



