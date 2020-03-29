package com.naxian.util;

public class RandUtil {
    public static String getRandNum() {


    return String.valueOf(Math.round( (Math.random()*9+1)*100000));

}


   /* public static void main(String[] args) {

```
    System.out.println(getRandNum());
```

```
}*/


}

