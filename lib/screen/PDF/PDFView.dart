import 'package:flutter/material.dart';
import 'package:invoiceapp/screen/PDF/PDFGeneratorPage.dart';
import 'package:printing/printing.dart';

class Pdfview extends StatefulWidget {
  const Pdfview({super.key});

  @override
  State<Pdfview> createState() => _PdfviewState();
}

class _PdfviewState extends State<Pdfview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PdfPreview(
        build: (format) => pdfGeneratore(),
      ),
    );
  }
}
