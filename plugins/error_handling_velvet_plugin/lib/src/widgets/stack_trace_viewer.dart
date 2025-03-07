import 'package:error_handling_velvet_plugin/src/helper/stack_trace_parser.dart';
import 'package:error_handling_velvet_plugin/src/widgets/strack_trace_parsed_line_row.dart';
import 'package:flutter/material.dart';

class StackTraceViewer extends StatelessWidget {
  const StackTraceViewer({
    super.key,
    required this.stackTrace,
  });

  final StackTrace stackTrace;

  @override
  Widget build(BuildContext context) {
    final stackTraceLines = StackTraceParser(stackTrace).parse();

    return Expanded(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              'Stack'.toUpperCase(),
              style: const TextStyle(
                fontSize: 12,
                color: Colors.black87,
                letterSpacing: 1.2,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(color: Colors.black12),
                ),
              ),
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: stackTraceLines.length,
                itemBuilder: (context, index) {
                  final line = stackTraceLines[index];

                  return Column(
                    children: [
                      StrackTraceParsedLineRow(line: line),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
