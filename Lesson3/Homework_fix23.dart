main() {
  List <int> array = [1, 2, 3, 4, 2];

  var result = fix23(array);
  print(result);
}


List <int?> fix23(List <int> nums) {

  for(int i = 0; i < nums.length-1; i++){
    if(nums[i]==2){
      if(nums[i+1]==3){
        nums[i+1]=0;
      }
    }
  } return nums;
}