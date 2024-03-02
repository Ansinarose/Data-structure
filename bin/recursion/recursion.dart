//**********************************************Reverse string***using RECURSION*******************************************************************

//  String Reversestring(String inputString){
//   if(inputString.isEmpty || inputString.length == 1){
//     return inputString;
//   }
//   return Reversestring(inputString.substring(1))+ inputString[0];
// }
// void main(){
//   String inputString = 'hello';
//   print(Reversestring(inputString));
// }


//****************************************************************Reverse of array using recursion*************************************************

 List<int> reversearray(List<int>array){
  if(array.isEmpty){
    return [];
  }
return  recursionhelper(array, 0, array.length-1);
}
List<int> recursionhelper(List<int> array,int start,int end){
  if(start >= end){
    return array;
  }
  int temp = array[start];
  array[start] = array[end];
  array[end] = temp;

  return recursionhelper(array, start+1, end-1);
}
void main(){
  List<int> array = [10,20,30,40,50];
  print(reversearray(array));
}                                           

//*****************************************************Factorial of a number**********************************************************************

// int factorial(int n){
//   if(n==0){
//     return 1;
//   }
//   return n*factorial(n-1);
// }
// void main(){
//   int number = 5;
//   print(factorial(number));
// }

  //****************************************************************Fibanocci**********************************************************************

// int Fibanocci(int n)    {
//   if(n==0 || n==1){
//     return n;
//   }
//   return Fibanocci(n-1)+ Fibanocci(n-2);
// }  
// void main(){
//   int number = 10;
//   print(Fibanocci(number));
// }                                      

//****************************************************sum of array using recursion***************************************************************

// int sumofarray(List<int> arr,int index){
//   if(arr.length == index){
// return 0;
//   }
//   return arr[index] + sumofarray(arr, index+1);
// }

// void main(){
//   List<int> arr = [10,20,30,40,50];
//   print(sumofarray(arr, 0));
// }

//********************************************multiplication of array using recursion*************************************************************

// int multiplication(List<int> arr, int index)      {
//   if(arr.length == index){
//     return 1;
//   }
//   return arr[index] * multiplication(arr, index+1);

// }           
//  void main(){
//   List<int> arr = [10,20,30,40,50];
//     print(multiplication(arr, 0));
//  }

//**************************************************subtraction of array using recursion***********************************************************

// int subtraction(List<int> array,int index)    {
//   if(index == array.length-1){
//     return 0;
//   }

//   return array[index] - subtraction(array, index+1);
// }                  
//  void main(){
//   List<int> array = [10, 20, 30, 40, 50];
//     print(subtraction(array, 0));
//  }

//************************************************division of array using recursion*************************************************************

//     double arrayDivision(List<int> arr, int index) {
//   if (index == arr.length - 1) {
//     return arr[index].toDouble(); // Base case: return the last element of the array as a double
//   }

//   return arr[index].toDouble() / arrayDivision(arr, index + 1);
// }

// void main() {
//   List<int> arr = [10, 20, 30, 40, 50];
//   print(arrayDivision(arr, 0)); // Output: 1.0416666666666665E-6
// }

//*************************************************delete element in the array using recursion*****************************************************
                                                 
// List<int> deleteelement(List<int> array,int target)   {
//   if(array.isEmpty){
//     return [];
//   }
//   if(array.first == target){
//     return array.sublist(1);
//   }else{
//     return [array.first] + deleteelement(array.sublist(1), target);
//   }
// }                                                             

// void main() {
//   List<int> array = [1, 2, 3, 4, 5];
//   int target = 3;

//   List<int> modifiedArr = deleteelement(array, target);

//   print(modifiedArr);
// }

//********************************************************printing many times using recursion**************************************************

// void printstatements(String statements, int n){
//   if(n == 0){
//     print('no values are there');
//   }
//   print(statements);
//   printstatements(statements, n-1);
// }                          
//  void main(){

// printstatements('hi dear how are you?', 100);
 //}

