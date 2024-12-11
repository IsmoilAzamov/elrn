import 'package:elrn/core/constants/app_colors.dart';
import 'package:elrn/features/elrn/domain/entities/certificate/certificate_entity.dart';
import 'package:elrn/features/elrn/presentation/pages/courses/video_lesson/video_lesson_page.dart';
import 'package:elrn/features/elrn/presentation/widgets/image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../../core/widgets/loading_indicator.dart';
import '../../../../../../../di.dart';
import '../../../../../main.dart';
import '../../../data/index.dart';
import '../../bloc/certificate/certificates_bloc.dart';
import '../../bloc/certificate/certificates_event.dart';
import '../../bloc/certificate/certificates_state.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/error_widget.dart';
import '../../widgets/my_scaffold.dart';
import '../../widgets/no_item_widget.dart';

class CertificatesPage extends StatefulWidget {
  final String programId;

  const CertificatesPage({super.key, required this.programId});

  @override
  State<CertificatesPage> createState() => _CertificatesPageState();
}

class _CertificatesPageState extends State<CertificatesPage> {
  final _bloc = sl<CertificatesBloc>();

  @override
  void initState() {
    _bloc.add(CertificatesLoadEvent(programId: widget.programId));
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
              title: "my_certificates".tr(),
              onBackPressed: () {
                Navigator.pop(context);
              },

            ),

            BlocProvider(
                create: (context) => _bloc,
                child: BlocBuilder<CertificatesBloc, CertificatesState>(builder: (context, state) {
                  if (state is CertificatesLoadingState) {
                    return Expanded(child: Center(child: loadingIndicator()));
                  }
                  if (state is CertificatesErrorState) {
                    return errorWidget(
                      onPressed: () {
                        _bloc.add(CertificatesLoadEvent(programId: widget.programId));
                      },
                      text: state.message,
                    );
                  }
                  if (state is CertificatesLoadedState) {
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

  Widget _loadedUI(List<CertificateEntity> certificates) {
    return Expanded(
      child: ListView.builder(
        itemCount: certificates.length,
        itemBuilder: (context, index) => CertificateItem(
          item: certificates[index],
        ),
      ),
    );
  }
}

class CertificateItem extends StatelessWidget {
  const CertificateItem({super.key, required this.item});

  final CertificateEntity item;

  @override
  Widget build(BuildContext context) {
    bool isDark = prefs.getString("theme") != 'light';
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
            width: double.infinity,
            constraints: const BoxConstraints(
              maxHeight: 300,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ImageWidget(

                url: "$DOMAIN/api/MyLesson/GetMyCertificate/${item.certificateFileId}",
                width: double.infinity,
                borderRadius: 12,
              ),
            ),
          ),
          // const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text("certificate_congratulations".tr(), style: const TextStyle(fontWeight: FontWeight.w500,color: Colors.white, fontSize: 14)),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
            child: ElevatedButton(
              onPressed: () async {
                Uri uri = Uri.parse("$DOMAIN/api/MyLesson/GetMyCertificate/${item.certificateFileId}");
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


