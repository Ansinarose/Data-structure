


//*******************************************Replacing alphabet at the nth position*****************************************************************


// class Encryptor {
//   static String Change (String str, int key){
//   int newKey = key%26;
//   List<int> charArray = List<int> .filled(str.length, 0);
//   for(int i = 0;i< str.length; i++){
//     int letterPosition = str.codeUnitAt(i) + newKey;
//     if(letterPosition <=122){  
//       charArray[i] = letterPosition;
//     }else{
//       charArray[i] = 96+ letterPosition%122;
//     }
//   }
//   return String.fromCharCodes(charArray);
// }
// static void main (List<String> args){
//   String  value = 'hai';
//   print(Change(value, 2));
// }
// }
// void main(){
//   Encryptor.main([]);
// }

//**************************************************************Reverse string********************************************************************

// String Reversestring(String inputString){
//  return inputString.split('').reversed.join('');
// }
// void main(){
//   String inputString = 'hello';
//   print(Reversestring(inputString));
//}

//***************************************************Occurance of character in string*************************************************************

Map<String, int> countCharacters(String inputString){
  Map<String, int> charCount = {};
  if(inputString != null){
    for(int i=0;i<inputString.length; i++){
     String char= inputString[i];
     if(char != null){
      if(charCount.containsKey(char)){
        charCount[char] = charCount[char]! + 1;
      }else{
        charCount[char] = 1;
      }
     }
    }
  }return charCount;
}
    void main(){
      String inputString = 'hello';
      print(countCharacters(inputString));
    }
 //**************************************************SUM OF ARRAY***************************************************************************** */ 
// int sumofarray(List<int> array){
//   int sum=0;
//     for(int i=0;i<array.length;i++){
//       sum= sum+ array[i];
//     }
//     return sum;
// }
// void main(){
//   List<int> array = [11,2,3,4,5,6];
//   print(sumofarray(array));
// }
