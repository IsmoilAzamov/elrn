import 'package:flutter/material.dart';

import '../../../../../di.dart';
import '../../../data/index.dart';
import '../../bloc/documents/documents_bloc.dart';
import '../../bloc/documents/documents_event.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/my_scaffold.dart';
import '../../widgets/no_item_widget.dart';

class DocumentsPage extends StatefulWidget {
  final String programId;

  const DocumentsPage({super.key, required this.programId});

  @override
  State<DocumentsPage> createState() => _DocumentsPageState();
}

class _DocumentsPageState extends State<DocumentsPage> {
   final _bloc = sl<DocumentsBloc>();

  @override
  void initState() {
     _bloc.add(DocumentsLoadEvent(programId: widget.programId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CurvedAppBar(
              title: "my_documents".tr(),
              onBackPressed: () {
                Navigator.pop(context);
              },
            ),
      Expanded(
        child: noItemWidget(
            onPressed: () {
          Navigator.pop(context);
        },

        text: "no_documents_text".tr(),
        ),
      ),
          ],
        ),
      ),
    );
  }


}

// class DocumentsItem extends StatelessWidget {
//   const DocumentsItem({super.key, required this.item});
//
//   final DocumentsEntity item;
//
//   @override
//   Widget build(BuildContext context) {
//     bool isDark = box.get('theme') == "dark";
//     return Container(
//       padding: const EdgeInsets.symmetric(vertical: 12),
//       margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
//       decoration: BoxDecoration(
//         borderRadius: const BorderRadius.all(Radius.circular(12)),
//         color: isDark ? AppColors.darkBlue : AppColors.blueColor,
//         border: Border.all(color: AppColors.lightBlue),
//       ),
//       child: SingleChildScrollView(
//         child: ExpansionTile(
//           shape: const RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(Radius.circular(12)),
//           ),
//           dense: true,
//           iconColor: AppColors.greenColor,
//           textColor: AppColors.greenColor,
//           collapsedTextColor: Colors.white,
//           collapsedIconColor: Colors.white,
//           leading: CircleAvatar(
//             radius: 30,
//             backgroundColor: AppColors.lightBlue,
//             child: Image.asset(
//               'assets/icons/globe.png',
//               width: 32,
//               height: 32,
//             ),
//           ),
//           title: Text(
//             item.title ?? "",
//             maxLines: 2,
//             overflow: TextOverflow.ellipsis,
//             style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
//           ),
//           expandedCrossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const SizedBox(height: 12),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0), // (12.0),
//               child: customDivider(height: 1),
//             ),
//             Container(
//               constraints: const BoxConstraints(maxHeight: 300),
//               width: double.infinity,
//               padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: .0),
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: ImageWidget(
//                   url: "$DOMAIN/api/MyLesson/GetMyDocuments/${item.certificateFileId}",
//                   width: double.infinity,
//                   borderRadius: 12,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
//               child: Text("certificate_congratulations".tr(), style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14)),
//             ),
//             const SizedBox(height: 12),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
//               child: ElevatedButton(
//                 onPressed: () async {
//                   Uri uri = Uri.parse("$DOMAIN/api/MyLesson/GetMyDocuments/${item.certificateFileId}");
//                   if (await canLaunchUrl(uri)) {
//                     launchUrl(uri);
//                   }
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: AppColors.middleBlue,
//                 ),
//                 child: Text('download'.tr(), style: const TextStyle(color: Colors.white)),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }


