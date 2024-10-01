import 'package:mockito/mockito.dart';
import 'package:state_management/presentation/blocs/bloc/movie_tabbed_bloc.dart';
import 'package:state_management/domain/usecases/get_coming_soon.dart';
import 'package:state_management/domain/usecases/get_playing_now.dart';
import 'package:state_management/domain/usecases/get_popular.dart';
import 'package:test/test.dart';

class GetPopularMock extends Mock implements GetPopular {}

class GetComingSoonMock extends Mock implements GetComingSoon {}

class GetPlayingNowMock extends Mock implements GetPlayingNow {}

main() {
  late GetPopularMock getPopular;
  late GetComingSoonMock getComingSoon;
  late GetPlayingNowMock getPlayingNow;
  late MovieTabbedBloc movieTabbedBloc;

  setUp(() {
    getPopular = GetPopularMock();
    getComingSoon = GetComingSoonMock();
    getPlayingNow = GetPlayingNowMock();
    movieTabbedBloc = MovieTabbedBloc(
      getPopular: getPopular,
      getComingSoon: getComingSoon,
      getPlayingNow: getPlayingNow,
    );
  });

  tearDown(() {
    movieTabbedBloc.close();
  });

  test('initialState should be MovieTabbedInitial', () {
    // assert
    expect(movieTabbedBloc.state,
        equals(const MovieTabbedInitial(currentTabIndex: 0)));
  }

//   group('MovieTabChangedEvent', () {
//     final tMovieModelList = <MovieModel>[];
//     final tCurrentTabIndex = 0;

//     test('should get data from the GetPopular use case', () async {
//       // arrange
//       when(() => getPopular(NoParams())).thenAnswer((_) async => Right(tMovieModelList));
//       // act
//       movieTabbedBloc.add(MovieTabChangedEvent(currentTabIndex: tCurrentTabIndex));
//       await untilCalled(() => getPopular(NoParams()));
//       // assert
//       verify(() => getPopular(NoParams()));
//     });

//     test('should emit [MovieTabChangedState] when data is gotten successfully', () async {
//       // arrange
//       when(() => getPopular(NoParams())).thenAnswer((_) async => Right(tMovieModelList));
//       // assert later
//       final expected = [
//         const MovieTabbedInitial(currentTabIndex: 0),
//         MovieTabChangedState(moviesList: tMovieModelList, currentTabIndex: tCurrentTabIndex),
//       ];
//       expectLater(movieTabbedBloc.stream, emitsInOrder(expected));
//       // act
//       movieTabbedBloc.add(MovieTabChangedEvent(currentTabIndex: tCurrentTabIndex));
//     });

//     test('should emit [MovieTabChangedError] when getting data fails', () async {
//       // arrange
//       when(() => getPopular(NoParams())).thenAnswer((_) async => Left(AppError(AppErrorType.api)));
//       // assert later
//       final expected = [
//         const MovieTabbedInitial(currentTabIndex: 0),
//         MovieTabChangedError(currentTabIndex: tCurrentTabIndex, errorType: AppErrorType.api),
//       ];
//       expectLater(movieTabbedBloc.stream, emitsIn);

// }
//     );
//   }
      );
}
