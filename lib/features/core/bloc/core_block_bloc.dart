import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'core_block_event.dart';
part 'core_block_state.dart';

class CoreBlockBloc extends Bloc<CoreBlockEvent, CoreBlockState> {
  CoreBlockBloc() : super(CoreBlockInitial()) {
    on<CoreBlockEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
