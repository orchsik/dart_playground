void stringRun() {
  String str1 = "this is a string variable.";
  String str2 = "extra string. \n bla bla bla ~~";
  String str3 = """나는 자랑스러운 태극기 앞에
조국과 민족에 무궁한 영광을 위하여
몸과 마음을 받쳐
충성을 다할 것을 굳게 다짐합니다.""";

  print({
    "str1": str1,
    "str1+str2": str1 + str2,
    "using \$": "${str1.toUpperCase()} ${str2.toUpperCase()}",
    "str3": str3,
  });
}
