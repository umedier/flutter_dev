import 'package:flutter/material.dart';
import 'package:flutter_dev/codelabs/create_demo.dart';

import 'codelabs/start_namer.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("app"),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20.0),
        children: ListTile.divideTiles(context: context, tiles: <Widget>[
          // 静态方法 divideTiles 可以在 titles 之间添加分隔符
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://img2.baidu.com/it/u=872181564,3596895370&fm=253&fmt=auto&app=120&f=JPEG?w=800&h=800"),
            ),
            title: const Text('计数器'),
            subtitle: const Text('/create_demo'),
            trailing: const Icon(Icons.keyboard_arrow_right),
            // dense: true, //使文本更小，并将所有内容打包在一起
            contentPadding: const EdgeInsets.all(20), // content 内间距
            selected: true, // 如果选中列表的 item 项，那么文本和图标的颜色将成为主题的主颜色
            // enabled: false, // 通过将 enable 设置为 false，来禁止点击事件
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: const BorderSide(
                color: Colors.red,
                width: 2,
              ),
            ),
            onTap: () {
              // 单击
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CreateDemo(
                          title: "create_demo",
                        )),
              );
            },
            onLongPress: () {
              // 长按
            },
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://img2.baidu.com/it/u=872181564,3596895370&fm=253&fmt=auto&app=120&f=JPEG?w=800&h=800"),
            ),
            title: const Text('编写你的第一个程序'),
            subtitle: const Text('/codelaba/start_namer'),
            trailing: const Icon(Icons.keyboard_arrow_right),
            contentPadding: const EdgeInsets.all(20),
            selected: false,
            onTap: () {
              // 单击
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const StartNamer()),
              );
            },
          ),
        ]).toList(),
      ),
    );
  }
}
