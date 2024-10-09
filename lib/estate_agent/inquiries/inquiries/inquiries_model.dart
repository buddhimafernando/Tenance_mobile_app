import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/inquiry_card/inquiry_card_widget.dart';
import 'inquiries_widget.dart' show InquiriesWidget;
import 'package:flutter/material.dart';

class InquiriesModel extends FlutterFlowModel<InquiriesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for inquiry_card component.
  late InquiryCardModel inquiryCardModel1;
  // Model for inquiry_card component.
  late InquiryCardModel inquiryCardModel2;
  // Model for inquiry_card component.
  late InquiryCardModel inquiryCardModel3;
  // Model for inquiry_card component.
  late InquiryCardModel inquiryCardModel4;
  // Model for inquiry_card component.
  late InquiryCardModel inquiryCardModel5;

  @override
  void initState(BuildContext context) {
    inquiryCardModel1 = createModel(context, () => InquiryCardModel());
    inquiryCardModel2 = createModel(context, () => InquiryCardModel());
    inquiryCardModel3 = createModel(context, () => InquiryCardModel());
    inquiryCardModel4 = createModel(context, () => InquiryCardModel());
    inquiryCardModel5 = createModel(context, () => InquiryCardModel());
  }

  @override
  void dispose() {
    inquiryCardModel1.dispose();
    inquiryCardModel2.dispose();
    inquiryCardModel3.dispose();
    inquiryCardModel4.dispose();
    inquiryCardModel5.dispose();
  }
}
