void mapRun() {
  Map<num, String> map1 = {
    0: 'zero',
    1: 'one',
    2: 'two',
  };

  map1[3] = 'three';

  print({
    "map1": map1,
    "map1.length": map1.length,
    "map1[1]": map1[1], // 'one'
    "map1[\"1\"]": map1["1"], // null
    "map1[999]": map1[999],
  });
}
