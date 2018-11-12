# CocoaPod

가끔씩 코코아 pod 같은 경우 update하는것이 좋음



$ brew update; brew upgrade; gem update; gem cleanup; pod repo update;





start with

1. go to the project

type: pod init

and open: vi podfile

or open with any text editor



```none
# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'createNewProject' do -> 프로젝트 명
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for createNewProject
	pod 'Alamofire' -> 이곳에 파일 이름을 넣으세요
	pod 'Kingfisher'

end

```

- once you type the name, at the terminal
- -> pod install



