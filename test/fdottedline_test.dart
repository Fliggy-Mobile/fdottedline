import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:fdottedline/fdottedline.dart';

/// 模拟异步加载的组件（如网络图片）：
/// 初始尺寸为 0，加载完成后变为 [size]。
///
/// Simulates a widget that loads asynchronously (like a network
/// image): it starts with a zero size and grows to [size] once
/// "loaded".
class _AsyncLoadingChild extends StatefulWidget {
  const _AsyncLoadingChild({required this.size});

  final Size size;

  @override
  State<_AsyncLoadingChild> createState() => _AsyncLoadingChildState();
}

class _AsyncLoadingChildState extends State<_AsyncLoadingChild> {
  bool _loaded = false;

  @override
  void initState() {
    super.initState();
    Future<void>.delayed(const Duration(milliseconds: 100), () {
      if (mounted) {
        setState(() => _loaded = true);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!_loaded) {
      return const SizedBox(width: 0, height: 0);
    }
    return SizedBox(
      width: widget.size.width,
      height: widget.size.height,
      child: Container(color: Colors.blue),
    );
  }
}

void main() {
  Finder dottedLineBorder() {
    return find.descendant(
      of: find.byType(FDottedLine),
      matching: find.byType(CustomPaint),
    );
  }

  testWidgets('FDottedLine renders a dashed line with width/height',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: FDottedLine(
              color: Colors.black,
              width: 100,
              height: 2,
            ),
          ),
        ),
      ),
    );
    expect(dottedLineBorder(), findsOneWidget);
    expect(tester.getSize(dottedLineBorder()), const Size(100, 2));
  });

  testWidgets(
      'FDottedLine renders the border around a child once its size is ready',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: FDottedLine(
              color: Colors.black,
              corner: FDottedLineCorner.all(6),
              child: _AsyncLoadingChild(size: const Size(120, 80)),
            ),
          ),
        ),
      ),
    );

    // 子组件尚未“加载完成”，此时边框画布尺寸为 0，不会绘制出内容。
    //
    // The child hasn't "loaded" yet: the border canvas has a zero
    // size, so nothing is painted.
    expect(tester.getSize(dottedLineBorder()), Size.zero);

    await tester.pumpAndSettle();

    // 子组件尺寸就绪后，边框画布随子组件尺寸变化，正确包裹住子组件。
    //
    // Once the child has its real size, the border canvas follows
    // the child's size and wraps it correctly.
    expect(tester.getSize(dottedLineBorder()), const Size(120, 80));
  });

  testWidgets('FDottedLine renders the border around a static child',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: FDottedLine(
              color: Colors.black,
              child: SizedBox(
                width: 120,
                height: 80,
              ),
            ),
          ),
        ),
      ),
    );

    expect(tester.getSize(dottedLineBorder()), const Size(120, 80));
  });
}
