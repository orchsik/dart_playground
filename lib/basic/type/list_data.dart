void listRun() {
  List<num> nums = [1, 2, 3];
  const List<num> constNums = [1, 2, 3];
  final List<num> finalNums = [1, 2, 3];

  nums[1] = 222;
  finalNums[1] = 222; // 리스트 아이템은 변경 가능.
  finalNums.add(4);
  try {
    // finalNums = [3,2,1]; // final은 객체에 새로운 참조값 설정 못 한다.
    constNums[1] = 111; // const는 list 아이템까지 변경불가.
    constNums.add(4);
  } catch (e) {
    print(e); // Unsupported operation: Cannot modify an unmodifiable list
  }

  // 구조분해할당
  nums = [...nums, 4, 5, 6, 7, ...finalNums];
  try {
    // finalNums = [...finalNums]; // he final variable 'finalNums' can only be set once.
  } catch (e) {
    print(e);
  }

  print({
    "nums": nums,
    "nums[0]": nums[0],
    "nums.length": nums.length,
    "constNums": constNums,
    "finalNums": finalNums,
  });
}
