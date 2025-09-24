import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'upgrade_plan_state.dart';

class UpgradePlanCubit extends Cubit<UpgradePlanState> {
  UpgradePlanCubit() : super(UpgradePlanInitial());
}
