public void setup() 
{
  String[] lines = {"beast","dough","happy","question","star","three","eagle","try"};
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord){
  
  if(sWord.length()<=0){return -1;}
for(int i=0;i<sWord.length();i++){
    if(sWord.substring(i,i+1).equals("a")||sWord.substring(i,i+1).equals("e")||sWord.substring(i,i+1).equals("i")||sWord.substring(i,i+1).equals("o")||sWord.substring(i,i+1).equals("u")){return i;}
  }
  return -1;
}


public String pigLatin(String sWord)

{
  if(findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  }
  if(sWord.substring(0,2).equals("qu")){
   return sWord.substring(2) + "quay"; 
  }
  if(findFirstVowel(sWord)==0){
    return sWord + "way";
  }
  else
  {
    return sWord.substring(findFirstVowel(sWord))+ sWord.substring(0,findFirstVowel(sWord)) + "ay";
  }
}
