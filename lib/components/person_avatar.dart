import 'package:flutter/material.dart';

class PersonAvatar extends StatefulWidget {
  const PersonAvatar({super.key, this.size, this.image}) : name = null;

  const PersonAvatar.fromName({super.key, this.size, this.name}) : image = null;

  final double? size;
  final String? image;
  final String? name;

  @override
  State<PersonAvatar> createState() => _PersonAvatarState();
}

class _PersonAvatarState extends State<PersonAvatar> {
  @override
  Widget build(BuildContext context) {
    return widget.name != null
        ? _buildAvatarFromName(widget)
        : _buildAvatarFromImage(widget);
  }
}

Widget _buildAvatarFromName(widget) {
  return Material(
    shape: const CircleBorder(),
    clipBehavior: Clip.antiAlias,
    color: Colors.transparent,
    child: Ink(
      width: widget.size ?? 48.0,
      height: widget.size ?? 48.0,
      decoration: BoxDecoration(
        color: getColorFromName(widget.name.trim() ?? ""),
        shape: BoxShape.circle,
      ),
      child: InkWell(
        onTap: () {
          // Ação ao clicar
        },
        child: Center(
          child: Text(
            getNameInitials(widget.name.trim() ?? ""),
            style: const TextStyle(
              fontSize: 24.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
  );
}

Widget _buildAvatarFromImage(widget) {
  return Material(
    shape: const CircleBorder(),
    clipBehavior: Clip.antiAlias,
    color: Colors.transparent,
    child: Ink.image(
      image: NetworkImage(
        widget.image ?? "",
      ),
      width: widget.size ?? 48.0,
      height: widget.size ?? 48.0,
      fit: BoxFit.cover,
      child: InkWell(
        onTap: () {
          // Ação ao clicar
        },
      ),
    ),
  );
}

String getNameInitials(String name) {
  final List<String> names = name.split(" ");

  String initials = names.length > 1
      ? names.first.substring(0, 1) + names.last.substring(0, 1)
      : names.first.substring(0, 1);

  return initials.toUpperCase();
}

Color getColorFromName(String name) {
  var hash = 0;

  for (var i = 0; i < name.length; i++) {
    hash = name.codeUnitAt(i) + ((hash << 5) - hash);
  }

  var color = "FF";

  for (var i = 0; i < 3; i++) {
    final value = (hash >> (i * 8)) & 0xFF;
    color += ("00${value.toRadixString(16)}")
        .substring(value.toRadixString(16).length);
  }

  return Color(int.parse(color, radix: 16));
}
