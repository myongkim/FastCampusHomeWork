# ARC 

FastCampus Day 20



Memory Management

Memory Management without ARC

1. GC (Garbage Collection)

2. 1. 정기적으로 garbage collector가 동작하여 더이상 사용되지 않는 메모리를 반환하는 방식
   2. Os x 에서만 지원했었으나 버전 10.8(mountain lion)부터 deprecated



1. MRR(Manual REtain- Release) / MRC (Manual Reference Counting)

2. 1. RC(Reference Counting)를 통해 메모리를 수동으로 관리하는 방식
   2. Retain / release / autorelease 등의 메모리 관리 코드를 직접 호출
   3. 개발자가 명시적으로 rc를 증가시키는 작업 수행

ARC(Automatic Reference Counting)



# UIScrollView

제한된 뷰의 크기보다 더 큰 크기를 가진 컨텐츠를 표한하기 위한 뷰



ContentSize

현재 보여지는 뷰에 관게없이 스크롤뷰가 표한할수 있는 전체 컨텐츠 크기



### Managing the content size and Offset

##### contentsize

 The size of the content view.



#### contentOffSet

the point at which the origin of the content view is offset from the origin of the scroll view



#### setContentOffset:animated:

sets the offset from the content view's origin that corresponds to the receiver's origin.



ScrollView has different constraint

first 

for the view, it has to add other variable like width and height, or vertically or horizontally



for the button, just need to make the size it will work. 



add new constraint

width and height























