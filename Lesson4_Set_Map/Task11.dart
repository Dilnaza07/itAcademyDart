main(){

  var list = [1,3,4,5,6,-2,7,-12,22];

  var [_,...nums,_] = list;
  print('nums: $nums');

  int sum = 0;

  // for(int i =0; i< nums.length; i++){
  //   sum += nums[i];
  // }

  for(var number in nums){sum += number;}

  print('sum: $sum');


  /*Извлеките все элементы списка кроме первого и
последнего и рассчитайте их сумму. Выведите в
терминал полученный результат.*/

}