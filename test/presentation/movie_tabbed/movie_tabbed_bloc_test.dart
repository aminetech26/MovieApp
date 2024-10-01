import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:state_management/domain/entities/no_params.dart';
import 'package:state_management/presentation/blocs/bloc/movie_tabbed_bloc.dart';
import 'package:state_management/domain/usecases/get_coming_soon.dart';
import 'package:state_management/domain/usecases/get_playing_now.dart';
import 'package:state_management/domain/usecases/get_popular.dart';

class GetPopularMock extends Mock implements GetPopular {}

class GetComingSoonMock extends Mock implements GetComingSoon {}

class GetPlayingNowMock extends Mock implements GetPlayingNow {}

main() {
  late GetPopularMock getPopularMock;
  late GetComingSoonMock getComingSoonMock;
  late GetPlayingNowMock getPlayingNowMock;
  late MovieTabbedBloc movieTabbedBloc;

  setUp(() {
    print('setUp');
    getPopularMock = GetPopularMock();
    getComingSoonMock = GetComingSoonMock();
    getPlayingNowMock = GetPlayingNowMock();
    movieTabbedBloc = MovieTabbedBloc(
      getPopular: getPopularMock,
      getComingSoon: getComingSoonMock,
      getPlayingNow: getPlayingNowMock,
    );
  });

  // tearDown(() {
  //   movieTabbedBloc.close();
  // });

  // test('initialState should be MovieTabbedInitial', () {
  //   // assert
  //   expect(movieTabbedBloc.state,
  //       equals(const MovieTabbedInitial(currentTabIndex: 0)));
  // });

  blocTest<MovieTabbedBloc, MovieTabbedState>(
    'should emit [MovieTabbedInitial, MovieTabChangedState] state when playing now tab changed succeed',
    build: () {
      when(getPlayingNowMock.call(NoParams()))
          .thenAnswer((_) async => Right([]));
      return movieTabbedBloc;
    },
    act: (bloc) =>
        movieTabbedBloc.add(const MovieTabChangedEvent(currentTabIndex: 1)),
    expect: () => [
      isA<MovieTabbedInitial>(),
      isA<MovieTabChangedState>(),
    ],
    verify: (_) {
      verify(getPlayingNowMock.call(NoParams())).called(1);
    },
  );
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