# Flutter Clock - ByteDance Project

## lib结构（应用源文件） 

```css
lib ┬
	├ clock
		┬
		└ clock.dart
		└ clock_dial_painter.dart
		└ clock_face.dart
		└ clock_hands.dart
		└ clock_text.dart
		└ hand_hour.dart
		└ hand_minute.dart
		└ hand_second.dart
	├ Calendar
		┬
		└ calendar_tile.dart
		└ flutter_calendar.dart
	├ Screen
		┬
		└ first_screen.dart
		└ second_screen.dart
		└ third_screen.dart
	├ TODO-list
		┬
		└ new_todo_dialog.dart
		└ todo.dart
		└ todo_list.dart
		└ todo_list_screen.dart
	└ main.dart

```

## 文件介绍

### :file_cabinet: main.dart

**class MyApp extends StatelessWidget**

构建一个StatelessWidget无状态部件类，这个widget是应用程序的root widget，重写一个build方法，fa返回一个new出来的MaterialApp()对象。分别指定title、theme、home属性，home参数传入的就是与主界面相关的widget(new的一个 AppClock())。

**class AppClock extends StatelessWidget**

在无状态组件中，使用DefaultTabContrilloer来关联TabBar和TabBarView

对于Scaffold，分别封装了状态栏`AppBar` - TabBar，主体部分`body` - TabBarView。AppBar中为了防止在Android系统的状态栏或者iPhoneX的“齐刘海”放置元素，使用SafeArea部件来解决。TabBarView中children——视图组件的child为一个列表，一个选项卡对应一个视图。

### :file_folder: Screen   

### :file_cabinet: first_screen.dart

利用ListView组件来创建列表，通过设定SizedBox大小来固定Clock的位置。[参考代码](https://github.com/Ronak99/ClockApp/blob/master/lib/screens/second_screen.dart)

### :file_cabinet: second_screen.dart

重写build方法，返回一个new出来的MaterialApp()对象。对于home属性，通过new一个Container，body部分使用ListView来创建列表

```
P.S 创建ListView的目的是为了后续可以直接在日历栏下做备忘录，将整体布局分为日历以及对应日期的TO DO List两部分，目前未完成，但保留以ListView设置的样式。
```

### :file_cabinet: third_screen.dart

重写build方法，返回一个new出来的MaterialApp()对象。对于home属性，调用TodoListScreen()。

### :file_folder: TODO-list

### :file_cabinet: todo_list_screen.dart

用户点击+按钮，回调onPressed函数，从而触发\_addTodo函数，\_addTodo中的内容会被包含在setState调用中，这个调用会通知应用程序代办事项列表已更新。createState会在待办事项列表更新是被触发。

### :file_cabinet: new_todo_diialog.dart

采用AlertDialog组件-弹出框的形式来添加代办事件，添加或者取消添加操作

### :file_cabinet: todo.dart

定义Todo类，包括事件名称-string类型，以及代办事件是否完成-bool类型

### :file_cabinet: todo_list.dart

CheckboxListTile组件可同时返回待办事项名称以及勾选框，ToggleTodoCallback将todo以及isChecked进行传递。

### :file_folder: Calendar

### :file_cabinet: ​calendar_tile.dart

CalendarTile包括日期是否选择、时期、显示的日期等属性，在renderDteorDayofWeek中，初始化返回一个new的InkWell，根据所选择的日期，在选择日期上绘制选择圆圈。

### :file_cabinet: ​flutter_calendar.dart

**_CalendarState**中通过DateTime.now()来获取当前时间，根据是否选择非当前时期来重置initialCalendarDateOverride，并以此确定当前周的起始日期和终止日期、月份格式。

通过Flutter中的GridView来布局日历项，在子Widget列表处调用calendarBuilder()，根据日历展开与否，当前选择日期，确定日历的显示范围。

void nextMonth()函数、void previousMonth()函数、void nextWeek()函数、void previousWeek()函数，别用来计算当前选择日期下对应变化后的日历样式。

### :file_folder: clock

### :file_cabinet: hand_hour.dart

用paint函数绘制时针样式，以及旋转速率

### :file_cabinet: ​hand_minute.dart

用paint函数绘制分针样式，以及旋转速率

### :file_cabinet: hand_second.dart

用paint函数绘制秒针样式，以及旋转速率

### :file_cabinet: clock_hands.dart

根据当前时间更新指针的绘制

### :file_cabinet: clock_face.dart

绘制表盘以及调用CustomPaint()来绘制实时的表针信息

### :file_cabinet: clock.dart

获取系统时间对Clock进行初始化，调用ClockFace，来绘制clock。文件最后添加了一些美化效果，通过paint()函数来绘制钟表的腿和钟表的闹铃（可选择添加）。

## TO DO

:triangular_flag_on_post: 时钟界面美化 - 目前仅为朴素时钟效果，后续尝试可设置表盘样式等功能

:triangular_flag_on_post: 将to do list与日历连接在一起，实现ios日历类似功能

:triangular_flag_on_post:  增加闹钟、纪念日等功能

:triangular_flag_on_post: 优化美观界面，目前风格简约但美感不足

