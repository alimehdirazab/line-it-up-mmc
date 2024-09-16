part of 'view.dart';

class ScanQrPage extends StatelessWidget {
  const ScanQrPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScanQrView();
  }
}

class ScanQrView extends StatefulWidget {
  const ScanQrView({super.key});

  @override
  State<ScanQrView> createState() => _ScanQrViewState();
}

class _ScanQrViewState extends State<ScanQrView> {
  Barcode? result;
  MobileScannerController controller = MobileScannerController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void _onDetect(BarcodeCapture capture) {
    final barcode = capture.barcodes.first;
    setState(() {
      result = barcode;
    });

    controller.stop();
    final qrToken = barcode.rawValue;

    if (qrToken != null) {
      // do what you want with the qrToken
      context.pushPage(const LineSkipperPaymentPage());
    }
  }

  @override
  Widget build(BuildContext context) {
    return MobileScanner(
      controller: controller,
      onDetect: (BarcodeCapture capture) => _onDetect(capture),
    );
  }
}
