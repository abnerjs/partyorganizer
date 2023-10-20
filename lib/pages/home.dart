import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:partyorganizer/components/person_avatar.dart';

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
      systemNavigationBarColor: Color(0xFFc1b6b0),
      systemNavigationBarDividerColor: Color(0xFFc1b6b0),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).colorScheme.primary,
            Theme.of(context).colorScheme.secondary,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          toolbarHeight: 60,
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
                  child: IconButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Theme.of(context).colorScheme.primaryContainer,
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
              margin: const EdgeInsets.only(left: 16, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Party Organizer",
                    style: GoogleFonts.roboto(
                      color: Theme.of(context).colorScheme.onSecondary,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    "Insira o nome da festa",
                    style: GoogleFonts.roboto(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontSize: 52,
                      height: 1,
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
                      label: Text(
                        "Open bar",
                        style: GoogleFonts.roboto(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontSize: 16,
                        ),
                      ),
                      backgroundColor:
                          Theme.of(context).colorScheme.secondaryContainer,
                      shape: const StadiumBorder(),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 8),
                    child: Chip(
                      label: Text(
                        "Funk",
                        style: GoogleFonts.roboto(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontSize: 16,
                        ),
                      ),
                      backgroundColor:
                          Theme.of(context).colorScheme.secondaryContainer,
                      shape: const StadiumBorder(),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 8),
                    child: Chip(
                      label: Text(
                        "Sertanejo",
                        style: GoogleFonts.roboto(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontSize: 16,
                        ),
                      ),
                      backgroundColor:
                          Theme.of(context).colorScheme.secondaryContainer,
                      shape: const StadiumBorder(),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 8, right: 16),
                    child: Chip(
                      label: Text(
                        "Eletrônica",
                        style: GoogleFonts.roboto(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontSize: 16,
                        ),
                      ),
                      backgroundColor:
                          Theme.of(context).colorScheme.secondaryContainer,
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
                  child: ListTile(
                    leading: PersonAvatar.fromName(
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
                      "(18) 99736-1645",
                      style: GoogleFonts.roboto(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Theme.of(context).colorScheme.tertiary,
          child: Icon(
            FluentIcons.add_24_filled,
            color: Theme.of(context).colorScheme.onTertiary,
          ),
        ),
      ),
    );
  }
}
