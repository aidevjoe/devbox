import 'package:devbox/models/tool.dart';
import 'package:devbox/models/tool_type.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          mainAxisExtent: 230,
          maxCrossAxisExtent: 200.0,
          childAspectRatio: 1.0 //宽高比为2
          ),
      children: ToolType.values
          .map((e) => e.getToolItem)
          .map((e) => ToolCardView(
                item: e,
              ))
          .toList(),
    );
  }
}

class ToolCardView extends StatelessWidget {
  final ToolItem item;
  const ToolCardView({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).go(item.name),
      child: Card(
        margin: const EdgeInsets.all(10),
        elevation: 0,
        color: const Color(0x773b3b3d),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: const Color(0xbbD3D3D3)),
                  child: Icon(item.icon)),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              item.title,
              style: const TextStyle(fontSize: 14, color: Colors.white),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              item.subtitle,
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ]),
        ),
      ),
    );
  }
}
