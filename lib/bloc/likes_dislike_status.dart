import 'package:bloc/bloc.dart';

// Eventos
abstract class LikeEvent {}

class IncrementLike extends LikeEvent {}

class IncrementDislike extends LikeEvent {}

// Estados
class LikeState {
  final int likes;
  final int dislikes;
  final double likePercentage;

  LikeState(this.likes, this.dislikes)
      : likePercentage =
            (likes + dislikes) == 0 ? 0 : likes / (likes + dislikes);
}

// BLoC
class LikeBloc extends Bloc<LikeEvent, LikeState> {
  LikeBloc() : super(LikeState(0, 0));

  Stream<LikeState> mapEventToState(LikeEvent event) async* {
    if (event is IncrementLike) {
      yield LikeState(state.likes + 1, state.dislikes);
    } else if (event is IncrementDislike) {
      yield LikeState(state.likes, state.dislikes + 1);
    }
  }
}
