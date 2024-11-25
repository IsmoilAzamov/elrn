import 'dart:io';

import 'package:elrn/features/elrn/data/datasources/local/token_db_service.dart';
import 'package:elrn/features/elrn/domain/entities/reference/reference_entity.dart';
import 'package:elrn/features/elrn/presentation/bloc/documents/documents_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/widgets/loading_indicator.dart';
import '../../../../../di.dart';
import '../../../../../main.dart';
import '../../../data/index.dart';
import '../../bloc/documents/documents_bloc.dart';
import '../../bloc/documents/documents_event.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/error_widget.dart';
import '../../widgets/my_scaffold.dart';
import '../../widgets/no_item_widget.dart';
import '../courses/video_lesson/video_lesson_page.dart';
import 'package:http/http.dart' as http;

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
            BlocProvider(
                create: (context) => _bloc,
                child: BlocBuilder<DocumentsBloc, DocumentsState>(builder: (context, state) {
                  if (state is DocumentsLoadingState) {
                    return Expanded(child: Center(child: loadingIndicator()));
                  }
                  if (state is DocumentsErrorState) {
                    return errorWidget(
                      onPressed: () {
                        _bloc.add(DocumentsLoadEvent(programId: widget.programId));
                      },
                      text: state.message,
                    );
                  }
                  if (state is DocumentsLoadedState) {
                    if (state.certificates.isEmpty) {
                      return Expanded(
                        child: noItemWidget(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          text: "you_have_no_certificate".tr(),
                        ),
                      );
                    }
                    return _loadedUI(state.certificates);
                  }

                  return errorWidget(onPressed: () {}, text: 'something_went_wrong'.tr());
                })),

          ],
        ),
      ),
    );
  }
   Widget _loadedUI(List<ReferenceEntity> documents) {
     return Expanded(
       child: ListView.builder(
         itemCount: documents.length,
         itemBuilder: (context, index) => DocumentItem(
           item: documents[index],
         ),
       ),
     );
   }

}

class DocumentItem extends StatelessWidget {
  const DocumentItem({super.key, required this.item});

  final ReferenceEntity item;

  @override
  Widget build(BuildContext context) {
    bool isDark =prefs.getString("theme") != 'light';
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        color: isDark ? AppColors.darkBlue : AppColors.blueColor,
        border: Border.all(color: AppColors.lightBlue),
      ),
      child: ExpansionTile(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        dense: true,
        iconColor: AppColors.greenColor,
        textColor: AppColors.greenColor,
        collapsedTextColor: Colors.white,
        collapsedIconColor: Colors.white,
        leading: CircleAvatar(
          radius: 30,
          backgroundColor: AppColors.lightBlue,
          child: Image.asset(
            'assets/icons/globe.png',
            width: 32,
            height: 32,
          ),
        ),
        title: Text(
          item.title ?? "",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
        ),
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0), // (12.0),
            child: customDivider(height: 1),
          ),
          Container(
            constraints: const BoxConstraints(maxHeight: 400),
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: .0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.transparent
              ),
              child: PDFScreen(url: "$DOMAIN/api/MyCourse/GetMyReference/${item.courseId}")
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.title??"", style: const TextStyle(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 14)),
                const SizedBox(height: 8),
                Text("${item.startingDate ?? ""} - ${item.completingDate ?? ""}", style: const TextStyle(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 14)),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
            child: ElevatedButton(
              onPressed: () async {
                Uri uri = Uri.parse("$DOMAIN/api/MyCourse/GetMyReference/${item.courseId}");
                if (await canLaunchUrl(uri)) {
                  launchUrl(uri);
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.middleBlue,
              ),
              child: Text('download'.tr(), style: const TextStyle(color: Colors.white)),
            ),
          )
        ],
      ),
    );
  }
}









class PDFScreen extends StatefulWidget {
  final String url;

  const PDFScreen({super.key, required this.url});

  @override
  State<PDFScreen> createState() => _PDFScreenState();
}

class _PDFScreenState extends State<PDFScreen> {
  String? _localFilePath;
  int? _pages;
  int? _currentPage = 0;
  bool _isReady = false;
  late PDFViewController _pdfViewController;

  @override
  void initState() {
    super.initState();
    _downloadAndSavePDF();
  }

  Future<void> _downloadAndSavePDF() async {
    final filename = widget.url.substring(widget.url.lastIndexOf("/") + 1);
    final response = await http.get(Uri.parse(widget.url,
      //timeout: const Duration(seconds: 10),
    ),
    headers: {
      'Authorization': 'Bearer ${TokenService.accessToken}'

    }
    );
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/$filename');

    await file.writeAsBytes(response.bodyBytes);

    setState(() {
      _localFilePath = file.path;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _localFilePath == null
        ? loadingIndicator()
        : Stack(
      children: <Widget>[
        PDFView(
          filePath: _localFilePath!,
          autoSpacing: true,
          enableSwipe: true,
          swipeHorizontal: true,
          fitPolicy: FitPolicy.HEIGHT,
          backgroundColor: Colors.transparent,
          onRender: (pages) {
            setState(() {
              _pages = pages;
              _isReady = true;
            });
          },
          onViewCreated: (PDFViewController pdfViewController) {
            setState(() {
              _pdfViewController = pdfViewController;
            });
          },
          onPageChanged: (int? page, int? total) {
            setState(() {
              _currentPage = page;
            });
          },
        ),
        !_isReady
            ? loadingIndicator()
            : const Offstage(),
        Positioned(
          bottom: 10,
          left: 10,
          child: Row(
            children: [
              _currentPage != null && _currentPage! > 0
                  ? IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  _pdfViewController.setPage(_currentPage! - 1);
                },
              )
                  : Container(),
              _currentPage != null && _currentPage! < ((_pages ?? 1) - 1)
                  ? IconButton(
                icon: const Icon(Icons.arrow_forward),
                onPressed: () {
                  _pdfViewController.setPage(_currentPage! + 1);
                },
              )
                  : Container(),
            ],
          ),
        ),
      ],
    );
  }
}