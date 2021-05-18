# Lisp_project
deleteall 함수를 정의하라.</br>
-	deleteall 함수는 두 인자 sex와 lis를 받아서, 리스트 lis 안에 있는 모든 sex를 제거하는 함수이다.</br>
(deleteall ‘b ‘(a b c b)) => (a c)</br>
(deleteall ‘b ‘(a b (c b) b)) => (a (c))</br>
(deleteall ‘(a b) ‘((a b) a b)) => (a b)</br>
union(합집합), intersection(교집합), difference(차집합) 함수를 정의하라</br>
(union ‘(a b c) ‘(a c d)) => (a b c d)</br>
(intersection ‘(a b c) ‘(a c d)) => (a c)</br>
(difference ‘(a b c) ‘(a c d)) => (b)</br>
-	결과 리스트에 나오는 각 원소는 리스트에 한 번만 나타나게 하라.</br>
-	결과 원소들의 순서는 의미가 없다.
