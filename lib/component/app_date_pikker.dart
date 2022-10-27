import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';
import 'package:mal_learn/constant/colors.dart';
import 'package:mal_learn/constant/dimens.dart';

class AppDatePicker extends StatefulWidget {
  const AppDatePicker({
    super.key,
    required this.label,
    required this.onChanged,
    this.initialValue,
  });

  final String label;
  final Function(DateTime) onChanged;
  final DateTime? initialValue;

  @override
  State<AppDatePicker> createState() => _AppDatePickerState();
}

class _AppDatePickerState extends State<AppDatePicker> {
  late final _label = widget.label;
  late final _initialValue = widget.initialValue;
  late final _onChanged = widget.onChanged;

  late final _controller = TextEditingController(
    text: _initialValue != null
        ? DateFormat('yyyy年MM月d日').format(_initialValue!)
        : null,
  );

  bool _isShowingDatePicker = false;

  void quitDatePicker() {
    FocusManager.instance.primaryFocus?.unfocus();
    _isShowingDatePicker = false;
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      child: TextFormField(
        readOnly: true,
        controller: _controller,
        decoration: InputDecoration(
          labelText: _label,
          labelStyle: Theme.of(context).textTheme.subtitle1,
          contentPadding: const EdgeInsets.only(bottom: Dimens.paddingXS),
        ),
        style: const TextStyle(color: AppColors.black),
      ),
      onFocusChange: (_) {
        if (_isShowingDatePicker) {
          return;
        }

        _isShowingDatePicker = true;

        final now = DateTime.now();
        DatePicker.showDatePicker(
          context,
          locale: LocaleType.jp,
          minTime: DateTime(now.year - 120),
          maxTime: now,
          currentTime: DateTime(now.year - 16),
          onConfirm: (date) {
            _onChanged(date);
            _controller.value = _controller.value.copyWith(
              text: DateFormat('yyyy年MM月d日').format(date),
            );
            quitDatePicker();
          },
          onCancel: quitDatePicker,
        );
      },
    );
  }
}
