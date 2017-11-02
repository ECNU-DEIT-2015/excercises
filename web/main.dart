// Copyright (c) 2017, meflyup. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.


// Copyright (c) 2017, meflyup. All rights reserved. Use of this source code 
// is governed by a BSD-style license that can be found in the LICENSE file. 

import 'dart:html';
import 'dart:math' as math; 
UListElement DoList;
ButtonElement deleteAll;
String stuname;

void main() { 
querySelector('#sample_text_id') 
..text = '点击点名' 
..onClick.listen(reverseText); 

DoList = querySelector('#list_id');  
DoList.onChange.listen(addToDoItem);
deleteAll= querySelector('#delete-all'); 
deleteAll.onClick.listen(deleteAllElements);

} 

void addToDoItem(Event e){
 var ToDo = new LIElement();
ToDo.text=stuname;
DoList.children.add(ToDo); 
}
void deleteAllElements(Event e) {
  DoList.children.clear();
}

void reverseText(MouseEvent event) { 
var randomNumber = new math.Random().nextInt(16); 
var stuNames = { 
1: '刘一', 2: '陈二', 3: '张三', 4: '李四', 5: '王五', 6: '赵六', 7: '孙七', 8: '周八', 9: '吴九', 10: '郑十', 11: '刘二', 12: '陈三', 13: '张四', 14: '李五', 15: '王六', 16: '赵七', 
}; 
querySelector("#sample_text_id").text='学号：'+randomNumber.toString() 
+' '+' '+' '+'姓名：'+stuNames[randomNumber]; 

stuname=stuNames[randomNumber];
addToDoItem(event);

} 