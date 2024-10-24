import 'package:elrn/features/elrn/presentation/bloc/rating/rating_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/loading_indicator.dart';
import '../../../../di.dart';
import '../bloc/rating/rating_event.dart';
import '../bloc/rating/rating_state.dart';

class RatingWidget extends StatefulWidget {
  final String lessonId;
  final bool canRate;
  final int lessonTypeId;

  const RatingWidget({super.key, required this.lessonId, required this.canRate, required this.lessonTypeId});

  @override
  State<RatingWidget> createState() => _RatingWidgetState();
}

class _RatingWidgetState extends State<RatingWidget> {
  final _bloc = sl<RatingBloc>();
  bool isRated = false;

  @override
  void initState() {
    super.initState();
    _bloc.add(RatingLoadEvent(lessonId: widget.lessonId));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _bloc,
      child: BlocConsumer<RatingBloc, RatingState>(listener: (context, state) {
        if (state is RatingLoadedState) {
          stars = state.rating.ratingId ?? 0;
        }
        print(state);
        if(state is RatedState){
          isRated = true;
          _bloc.add(RatingLoadEvent(lessonId: widget.lessonId));
        }
      }, builder: (context, state) {
        if (state is RatingLoadingState) {
          return Center(child: SizedBox(child: loadingIndicator(width: 50, height: 50)));
        }
        if (state is RatingErrorState) {
          return Icon(
            Icons.error,
            color: Colors.grey,
          );
        }
        if (state is RatingLoadedState) {
          return _ratingWidget();
        }
        return Container();
      }),
    );
  }

  int stars = 0;

  Widget _ratingWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, // Center the stars
      children: [
        for (int i = 0; i < 5; i++) ...[
          GestureDetector(
            onTap: () {
              if (!widget.canRate) {
                return;
              }
            if(isRated){
              return;
            }
              _bloc.add(RateLessonEvent(documentId: widget.lessonId, lessonTypeId: (widget.lessonTypeId).toString(), ratingId: i + 1));
            },
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: AnimatedScale(
                duration: const Duration(milliseconds: 300),
                scale: i < stars ? 1.3 : 1.0, // Scale up selected stars
                curve: Curves.easeInOut, // Smooth scaling curve
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 300),
                  opacity: i < stars ? 1.0 : 0.7, // Faded out for unselected stars
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    padding: const EdgeInsets.symmetric(horizontal: 6.0), // Add more space between stars
                    child: i < stars
                        ? Image.asset("assets/icons/star.png", width: 18, height: 18)
                        : Icon(
                            Icons.star,
                            size: 24, // Set star size
                            color: Colors.grey.shade400, // Color animation
                          ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }
}
