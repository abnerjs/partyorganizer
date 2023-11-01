import 'dart:ui';

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:partyplanner/components/styled_text_field.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 10),
                height: MediaQuery.of(context).size.width,
                child: Ink.image(
                  image: const NetworkImage(
                    "https://images.pexels.com/photos/3525908/pexels-photo-3525908.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                  ),
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top + 8,
                  left: 16,
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(48)),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Ink(
                      decoration: const ShapeDecoration(
                        color: Color(0x40FFFFFF),
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        icon: const Icon(FluentIcons.chevron_left_16_filled),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top + 8,
                  left: MediaQuery.of(context).size.width - 48 - 16,
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(48)),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Ink(
                      decoration: const ShapeDecoration(
                        color: Color(0x40FFFFFF),
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        icon: const Icon(FluentIcons.edit_20_regular),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 30,
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width - 40,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 32,
                      right: 32,
                      bottom: 8,
                    ),
                    child: const StyledTextField(label: "Nome"),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 32,
                      right: 32,
                      bottom: 8,
                    ),
                    child: const StyledTextField(label: "Email"),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 32,
                      right: 32,
                      bottom: 8,
                    ),
                    child: const StyledTextField(label: "Número de celular"),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
