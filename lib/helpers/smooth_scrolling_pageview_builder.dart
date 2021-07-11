import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:web_portfolio/widgets/appbars/top_bar_desktop.dart';

class SmoothScrollingPageViewBuilder extends StatefulWidget {
  @override
  _SmoothScrollingPageViewBuilderState createState() => _SmoothScrollingPageViewBuilderState();
}

class _SmoothScrollingPageViewBuilderState extends State<SmoothScrollingPageViewBuilder> {
  final sink = StreamController<double>();
  final pager = PageController();

  @override
  void initState() {
    super.initState();
    throttle(sink.stream).listen((offset) {
      pager.animateTo(
        offset,
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      );
    });
  }

  @override
  void dispose() {
    sink.close();
    pager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
        'Portfolio website',
        style: Theme.of(context).textTheme.headline6,
      ),
      leading: Icon(
        Icons.change_history,
        size: 32,
        color: Theme.of(context).accentColor,
      ),
      actions: [
        TextButton(
          onPressed: () {},
          child: Text("tab 1", style: Theme.of(context).textTheme.headline6),
        ),
        TextButton(
          onPressed: () {},
          child: Text("tab 2", style: Theme.of(context).textTheme.headline6),
        ),
        TextButton(
          onPressed: () {},
          child: Text("tab 3", style: Theme.of(context).textTheme.headline6),
        ),
        TextButton(
          onPressed: () {},
          child: Text("tab 4", style: Theme.of(context).textTheme.headline6),
        ),
      ],
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Listener(
          onPointerSignal: _handlePointerSignal,
          child: _IgnorePointerSignal(
            child: PageView.builder(
              controller: pager,
              scrollDirection: Axis.vertical,
              itemCount: Colors.primaries.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  // TODO Add sections dynamically
                  child: Container(color: Colors.primaries[index]),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Stream<double> throttle(Stream<double> src) async* {
    double offset = pager.position.pixels;
    DateTime dt = DateTime.now();
    await for (var delta in src) {
      if (DateTime.now().difference(dt) > Duration(milliseconds: 200)) {
        offset = pager.position.pixels;
      }
      dt = DateTime.now();
      offset += delta;
      yield offset;
    }
  }

  void _handlePointerSignal(PointerSignalEvent e) {
    if (e is PointerScrollEvent && e.scrollDelta.dy != 0) {
      sink.add(e.scrollDelta.dy);
    }
  }
}

// workaround https://github.com/flutter/flutter/issues/35723
class _IgnorePointerSignal extends SingleChildRenderObjectWidget {
  _IgnorePointerSignal({Key? key, Widget? child}) : super(key: key, child: child);

  @override
  RenderObject createRenderObject(_) => _IgnorePointerSignalRenderObject();
}

class _IgnorePointerSignalRenderObject extends RenderProxyBox {
  @override
  bool hitTest(BoxHitTestResult result, {required Offset position}) {
    final res = super.hitTest(result, position: position);
    result.path.forEach((item) {
      final target = item.target;
      if (target is RenderPointerListener) {
        target.onPointerSignal = null;
      }
    });
    return res;
  }
}