import 'dart:ui';

import 'package:aurora/aurora.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:partyorganizer/components/person_avatar.dart';
import 'package:partyorganizer/pages/form_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xFF000000),
      systemNavigationBarDividerColor: Color(0xFF000000),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
      ),
      child: Stack(
        children: [
          Positioned(
            top: -10,
            left: -100,
            child: Aurora(
              size: 300,
              blur: 200,
              colors: [
                Theme.of(context).colorScheme.primary.withOpacity(1),
                Theme.of(context).colorScheme.tertiary,
              ],
            ),
          ),
          Positioned(
            top: -50,
            right: -50,
            child: Aurora(
              size: 200,
              blur: 200,
              colors: [
                Theme.of(context).colorScheme.secondary.withOpacity(1),
                Theme.of(context).colorScheme.surfaceTint,
              ],
            ),
          ),
          Positioned(
            bottom: -100,
            right: -250,
            child: Aurora(
              size: 600,
              blur: 500,
              colors: [
                Theme.of(context).colorScheme.tertiary.withOpacity(1),
                Theme.of(context).colorScheme.surfaceTint.withOpacity(1),
              ],
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              toolbarHeight: 60,
              scrolledUnderElevation: 0,
              flexibleSpace: Container(
                margin: const EdgeInsets.only(top: 36),
                child: Stack(
                  children: [
                    const Positioned(
                      left: 93,
                      child: PersonAvatar.fromName(
                        size: 48,
                        name: "Abner José Silva",
                      ),
                    ),
                    const Positioned(
                      left: 53,
                      child: PersonAvatar(
                        size: 48,
                        image:
                            "https://images.pexels.com/photos/3525908/pexels-photo-3525908.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                      ),
                    ),
                    const Positioned(
                      left: 13,
                      child: PersonAvatar(
                        size: 48,
                        image:
                            "https://images.pexels.com/photos/3745429/pexels-photo-3745429.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                      ),
                    ),
                    Positioned(
                      left: 153,
                      child: ClipRRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: IconButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                Theme.of(context)
                                    .colorScheme
                                    .primaryContainer
                                    .withOpacity(0.6),
                              ),
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                const CircleBorder(),
                              ),
                            ),
                            onPressed: () {},
                            icon: const Icon(
                              FluentIcons.add_24_filled,
                              color: Colors.white,
                              size: 28,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              actions: [
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  child: IconButton(
                    iconSize: 48,
                    onPressed: () {},
                    icon: const Icon(
                      FluentIcons.chevron_down_20_filled,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                ),
              ],
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 16, top: 16, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Party Organizer",
                        style: GoogleFonts.roboto(
                          color:
                              Theme.of(context).colorScheme.tertiaryContainer,
                          fontSize: 24,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        "Festa nome genérico".toUpperCase(),
                        maxLines: 2,
                        overflow: TextOverflow.fade,
                        style: GoogleFonts.oswald(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontSize: 52,
                          height: 1.2,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 40,
                  margin: const EdgeInsets.only(top: 16),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 16),
                        child: Chip(
                          side: const BorderSide(),
                          label: Text(
                            "Open bar",
                            style: GoogleFonts.roboto(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontSize: 16,
                            ),
                          ),
                          backgroundColor: Theme.of(context)
                              .colorScheme
                              .onPrimary
                              .withOpacity(0.4),
                          shape: const StadiumBorder(
                            side: BorderSide(),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 8),
                        child: Chip(
                          side: const BorderSide(),
                          label: Text(
                            "Funk",
                            style: GoogleFonts.roboto(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontSize: 16,
                            ),
                          ),
                          backgroundColor: Theme.of(context)
                              .colorScheme
                              .onPrimary
                              .withOpacity(0.4),
                          shape: const StadiumBorder(),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 8),
                        child: Chip(
                          side: const BorderSide(),
                          label: Text(
                            "Sertanejo",
                            style: GoogleFonts.roboto(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontSize: 16,
                            ),
                          ),
                          backgroundColor: Theme.of(context)
                              .colorScheme
                              .onPrimary
                              .withOpacity(0.4),
                          shape: const StadiumBorder(),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 8, right: 16),
                        child: Chip(
                          side: const BorderSide(),
                          label: Text(
                            "Eletrônica",
                            style: GoogleFonts.roboto(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontSize: 16,
                            ),
                          ),
                          backgroundColor: Theme.of(context)
                              .colorScheme
                              .onPrimary
                              .withOpacity(0.4),
                          shape: const StadiumBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 8,
                    itemBuilder: (context, index) => Slidable(
                      key: Key(index.toString()),
                      endActionPane: ActionPane(
                        dismissible: DismissiblePane(onDismissed: () {}),
                        motion: const DrawerMotion(),
                        closeThreshold: 0.5,
                        dragDismissible: false,
                        children: [
                          SlidableAction(
                            onPressed: (context) {},
                            backgroundColor:
                                Theme.of(context).colorScheme.surface,
                            icon: FluentIcons.edit_12_regular,
                          ),
                          SlidableAction(
                            autoClose: false,
                            onPressed: (context) {
                              try {
                                Slidable.of(context)?.dismiss(ResizeRequest(
                                    const Duration(
                                      milliseconds: 250,
                                    ),
                                    () {}));

                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: const Text('CEP removido'),
                                    backgroundColor:
                                        Theme.of(context).colorScheme.error,
                                  ),
                                );
                              } catch (e) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: const Text('Erro ao remover CEP'),
                                    backgroundColor:
                                        Theme.of(context).colorScheme.error,
                                  ),
                                );

                                debugPrint(e.toString());
                              }
                            },
                            backgroundColor:
                                Theme.of(context).colorScheme.error,
                            foregroundColor:
                                Theme.of(context).colorScheme.onError,
                            icon: FluentIcons.delete_20_regular,
                          ),
                        ],
                      ),
                      child: ListTile(
                        leading: const PersonAvatar.fromName(
                          size: 48,
                          name: "Matheus Silveira",
                        ),
                        title: Text(
                          "Abner José Silva",
                          style: GoogleFonts.roboto(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontSize: 18,
                          ),
                        ),
                        subtitle: Text(
                          "(11) 91111-1111",
                          style: GoogleFonts.roboto(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontSize: 14,
                          ),
                        ),
                        trailing: Icon(
                          FluentIcons.chevron_right_24_regular,
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            floatingActionButton: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.of(context).push(_createRoute());
                  },
                  backgroundColor: Theme.of(context)
                      .colorScheme
                      .tertiaryContainer
                      .withOpacity(0.5),
                  elevation: 0,
                  focusElevation: 0,
                  highlightElevation: 0,
                  hoverElevation: 0,
                  child: Icon(
                    FluentIcons.add_24_filled,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const FormPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
