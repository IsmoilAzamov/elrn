
import 'package:elrn/core/constants/app_colors.dart';
import 'package:elrn/features/elrn/domain/entities/comment/comment_entity.dart';
import 'package:elrn/features/elrn/domain/repositories/rating_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/loading_indicator.dart';
import '../../../../di.dart';
import '../../data/index.dart';
import '../bloc/universal/comments_bloc.dart';
import 'error_widget.dart';

class CommentsWidget extends StatefulWidget {
  final String documentId;
  final int lessonTypeId;

  const CommentsWidget({super.key, required this.documentId, required this.lessonTypeId});

  @override
  State<CommentsWidget> createState() => _CommentsWidgetState();
}

class _CommentsWidgetState extends State<CommentsWidget> {
  RatingRepository ratingApiService = sl<RatingRepository>();
  final _bloc = sl<CommentsBloc>();

  final TextEditingController _commentController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _bloc.add(CommentsLoadEvent(documentId: widget.documentId));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => _bloc,
        child: BlocBuilder<CommentsBloc, CommentsState>(
          builder: (context, state) {
            if (state is CommentsLoadingState) {
              return Center(child: loadingIndicator());
            }
            if (state is CommentsErrorState) {
              return errorWidget(
                  text: state.message,
                  onPressed: () {
                    _bloc.add(CommentsLoadEvent(documentId: widget.documentId));
                  });
            }
            if (state is CommentsLoadedState) {
              return _buildComments(state.comments);
            }
            return errorWidget(
                text: "Something went wrong",
                onPressed: () {
                  _bloc.add(CommentsLoadEvent(documentId: widget.documentId));
                });
          },
        ));
  }

  Widget _buildComments(List<CommentEntity> comments) {
    Map<String, List<CommentEntity>> commentsByDate = {};

    // Group comments by date
    for (var comment in comments) {
      String dateString = dateFormatDate(comment.docOn ?? "");
      if (!commentsByDate.containsKey(dateString)) {
        commentsByDate[dateString] = [];
      }
      commentsByDate[dateString]!.add(comment);
    }

    return Container(
      constraints: BoxConstraints(minHeight: 100, maxHeight: comments.isNotEmpty?400 : 150),

      margin: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.dark
            ? AppColors.darkBlue.withOpacity(0.8)
            : AppColors.blueColor.withOpacity(0.8),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        border: Border.all(color: AppColors.lightBlue),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 2), // Shadow position
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Comment List
            Text(
              "paste_comment".tr(),
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              height: 0.8,
              decoration: BoxDecoration(color: AppColors.lightBlue, borderRadius: BorderRadius.circular(12)),
            ),
            if (comments.isNotEmpty)
              Expanded(
                child: ListView.builder(
                  controller: _scrollController,
                  shrinkWrap: true,
                  itemCount: commentsByDate.length,
                  itemBuilder: (context, index) {
                    String dateString = commentsByDate.keys.elementAt(index);
                    List<CommentEntity> dateComments = commentsByDate[dateString]!;

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        dateWidget(dateString), // Show the date once
                        ...dateComments.map(_buildComment).toList(), // Show all comments for that date
                      ],
                    );
                  },
                ),
              ),
            // Comment Input Section
            _buildCommentInputSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildCommentInputSection() {
    return Padding(
      padding: const EdgeInsets.only(top: 6.0),
      child: Row(
        children: [
          // Text input for new comment
          Expanded(
            child: TextField(
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              controller: _commentController,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                hintText: 'insert_comment'.tr(),
                filled: true,
                hintStyle: TextStyle(color: Colors.black54),
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8.0),
          // Send button
          GestureDetector(
            onTap: () async {
              if (_commentController.text.isEmpty) return;

              _bloc.add(CommentsCreateEvent(dto: {
                "docOn": dateReformat(DateTime.now()),
                "documentId": widget.documentId,
                "lessonTypeId": widget.lessonTypeId,
                "messageText": _commentController.text,
                "repliedMessageText": "",
                "repliedMessageId": null,
                "adminId": null,
                "userId": null,
                "id": 0
              }, documentId: widget.documentId));
              _commentController.clear();
              await Future.delayed(const Duration(milliseconds: 500));
              _scrollController.animateTo(_scrollController.position.maxScrollExtent, duration: const Duration(milliseconds: 200), curve: Curves.easeInOutCirc);
            },
            child: Container(
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: AppColors.blueColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Image.asset("assets/icons/send.png", width: 24, height: 24),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildComment(CommentEntity comment) {
    bool isReply = comment.repliedMessageId != null;

    return Align(
      alignment: isReply ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.75, minWidth: 100),
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        margin: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 0.0),
        decoration: BoxDecoration(
          color: isReply ? Colors.white : AppColors.middleBlue,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
            bottomLeft: isReply ? Radius.circular(0) : Radius.circular(16),
            bottomRight: isReply ? Radius.circular(16) : Radius.circular(0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Stack(
          children: [
            // Message text
            Padding(
              padding: const EdgeInsets.only(bottom: 2.0),
              child: Text(
                " ${comment.messageText ?? ""}       ",
                style: TextStyle(
                  color: isReply ? Colors.black87 : Colors.white,
                  fontSize: 16.0,
                  height: 1.4,
                ),
              ),
            ),

            // Time of the message
            Positioned(
              bottom: 0,
              right: 0,
              child: Text(
                dateFormatHour(comment.docOn ?? ""),
                style: TextStyle(
                  color: isReply ? Colors.black54 : Colors.white70,
                  fontSize: 11.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget dateWidget(String date) {
    return Text(date, style: const TextStyle( fontSize: 14.0));
  }
}

String dateFormatHour(String dateString) {


  // Remove the 'GMT' part from the string
  dateString = dateString.replaceAll('GMT', '').trim();

  // Define the date format based on the input string
  DateFormat dateFormat = DateFormat('EEE MMM dd yyyy HH:mm:ss Z');

  // Parse the string to DateTime
  DateTime date = dateFormat.parse(dateString);

  print(date); // Output: 2024-10-21 11:02:43.000
  return "${date.hour < 10 ? '0${date.hour}' : date.hour.toString()}:${date.minute < 10 ? '0${date.minute}' : date.minute.toString()}";
}

String dateFormatDate(String dateString) {

  // Remove the 'GMT' part from the string
  dateString = dateString.replaceAll('GMT', '').trim();

  // Define the date format based on the input string
  DateFormat dateFormat = DateFormat('EEE MMM dd yyyy HH:mm:ss Z');

  // Parse the string to DateTime
  DateTime date = dateFormat.parse(dateString);
  print(date.day);
  //if date is today return today, if date is yesterday return yesterday, else return date
  if (date.day == DateTime.now().day && date.month == DateTime.now().month && date.year == DateTime.now().year) {
    return "today".tr();
  } else if (date.day == DateTime.now().day - 1 && date.month == DateTime.now().month && date.year == DateTime.now().year) {
    return "yesterday".tr();
  }

  print(date); // Output: 2024-10-21 11:02:43.000
  return "${date.day < 10 ? '0${date.day}' : date.day.toString()}.${date.month < 10 ? '0${date.month}' : date.month.toString()}.${date.year}";
}

String dateReformat(DateTime dateTime) {
  // Define the desired format as "EEE MMM dd yyyy HH:mm:ss 'GMT'Z"
  DateFormat formatter = DateFormat("EEE MMM dd yyyy HH:mm:ss 'GMT'Z");

  // Format the given DateTime object to the desired string format
  return formatter.format(dateTime);
}
