import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppInput extends StatefulWidget {
  final String? label, hint, suffixIcon, prefixIcon;
  final bool withCuntryCode;
  const AppInput({
    super.key,
    this.label,
    this.hint,
    this.suffixIcon,
    this.prefixIcon,
    this.withCuntryCode = false,
  });

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  late int selectedCountryCode;
  final list = [10, 20, 30, 50];

  @override
  void initState() {
    super.initState();
    selectedCountryCode = list.first;
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (widget.withCuntryCode)
            DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff8E8EA9)),
                borderRadius: BorderRadius.circular(8),
              ),
              child: DropdownButton<int>(
                value: selectedCountryCode,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 3),
                items:
                    list
                        .map(
                          (e) => DropdownMenuItem(value: e, child: Text("$e")),
                        )
                        .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedCountryCode = value!;
                  });
                },
                dropdownColor: Color(0xffD9D9D9),
              ),
            ),
          SizedBox(width: 5),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                labelText: widget.label,
                hintText: widget.hint,
                prefixIcon:
                    widget.prefixIcon != null
                        ? SvgPicture.asset(
                          widget.prefixIcon!,
                          fit: BoxFit.scaleDown,
                        )
                        : null,
                fillColor: Color(0xffF4F7F6),
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Color(0xffF0E6DE)),
                ),
                suffixIcon:
                    widget.suffixIcon != null
                        ? SvgPicture.asset(
                          widget.suffixIcon!,
                          fit: BoxFit.scaleDown,
                        )
                        : null,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              style: TextStyle(color: Color(0xff8E8EA9)),
            ),
          ),
        ],
      ),
    );
  }
}
