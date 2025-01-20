import 'package:error_handling_velvet_plugin/src/helper/stack_trace_parser.dart';
import 'package:flutter/material.dart';
import 'package:velvet_support/velvet_support.dart';

class StrackTraceParsedLineRow extends StatelessWidget {
  const StrackTraceParsedLineRow({super.key, required this.line});

  final StackTraceParsedLine line;

  List<Widget> get textWidgets {
    final textWidgets0 = <Widget>[];

    for (var i = 0; i < line.functionName!.split('.').length; i++) {
      textWidgets0.add(
        Text(
          line.functionName!.split('.')[i],
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      );

      if (i < line.functionName!.split('.').length - 1) {
        textWidgets0.add(
          const Text(
            '.',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black87,
              fontSize: 14,
            ),
          ),
        );
      }
    }

    return textWidgets0;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          left: BorderSide(
            color: Colors.black12,
            width: 1.0,
          ),
          right: BorderSide(
            color: Colors.black12,
            width: 1.0,
          ),
          bottom: BorderSide(
            color: Colors.black12,
            width: 1.0,
          ),
        ),
      ),
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${line.fileUri!.after('package:')}:${line.lineNumber!}',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 4.0),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            // Function name on a new line
            Wrap(
              direction: Axis.horizontal,
              children: textWidgets,
            ),
          ],
        ),
      ),
    );
  }
}
