import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'dart:io';
import 'dart:async';
import 'package:parrainage/tree.dart';

class Program extends StatefulWidget {
  @override
  _ProgramState createState() => _ProgramState();
}

class _ProgramState extends State<Program> {
  var par = [
    'KUETE JASTER',
    'NGUENDAM AROLD',
    'ARMAND BAYIHA',
    'MAKONGUE SAME',
    'KARLA EPALE',
    'TITALEM STEPHANE',
    'MENDOMO ARLANE',
    'GNEBIWO SORELLE',
    'NDJEPENDA JOSEPH',
    'KAMDEM LAETICIA',
    'ASSOMO ANGE',
    'FOTSO ULRICH',
    'NGOMSI NOLAN',
    'DICKA ERIC',
    'TOGO GRACE',
    'YEBCHUE VINCIANNE',
    'NGATCHUISSI DAN',
    'NYANGON ALLAN',
    'TCHOKOUAHA DARLAIN',
    'KENGNI ERNEST',
    'BISSECK LOUIS',
    'WOYAP PATRICK',
    'MOUEN RICHARD',
    'NGAMENI LYNX',
    'NGUIDJOL ARTHUR',
    'DIFFO BEKEN',
    'NGASSA LORIS',
    'MEKEMBOU WATCHMAN',
    'TSAKEM YAN-CEDRIC',
    'FOKA CHLOE',
    'METIAVE MORELLE',
    'ABENA ALBERT',
    'TAGNE JAMES',
    'FOSSO FRANCK',
    'WOGUIA JUSTIN',
    'HAPPI BEAUDUIN',
    'TOHOUO ARTHUR',
    'ABDOUL KADIR',
    'NOUNAWE NATHAN',
    'AOUE GERRY',
    'ADAMA HAMMAN',
    'FOADIENG CABREL',
    'MAHAMAT DJIBRIL',
    'JAMEIN WILFRIED',
    'MEMOGAN MYRIAM',
    'YEBCHUE OCEANNE',
    'TUEGNO WILFRIED',
    'NGASSA YANN ',
    'TAMDJOKOUEN HERMANN',
    'NANMEGNI GILLES',
    'NOGHA JULIENNE',
    'SOUOP ROLAND',
    'MOUDJOU SARAH',
    'MANDENG KATE',
    'LEMBE ANDREA',
    'AWOUKENG MORGAN',
    'AJAHOU TSAFACK',
    'AHMED MOUSTAPHA',
    'TSAFACK LAFLEUR',
    'LEUGUE FRANCK',
    'ELONGA MASSOMA',
    'HUGA CLOUD',
    'BOUCHEKA MYRICK',
    'FONJE AHMAD',
    'DJOKO YVAN',
    'SAMEDJEU ULRICH',
    'TCHAKOUNTE LESLIE',
    'NDOH MICHAEL',
    'DOUALLA CHRISTIAN',
    'MBEZELE WILLIAM',
    'TATHO ELISABETH',
    'NJAME ELODIE',
    'BISSE SERGE',
    'TCHOMTCHOUA CABREL',
    'DADA JOEL',
    'HAPPI MARIELLE',
    'MBEKAL ALICE',
    'FOTSO PARKER'
  ];
  var fil = [
    "ASSOGLO CLAUDEL",
    "TCHOUMI LUCRESSE",
    "BENGUE WILLIAM",
    "DJINGA SONIA",
    "DIPPUE CHRISTIAN",
    "DONGUE FRANSILIO",
    "DOUDOU OUMAR",
    "EKOM AMAELLE",
    "ELO JUNIOR",
    "ELOMBA EMILE",
    "ELONGUE STYVAXIR",
    "ESSAME DORIAN",
    "EVAGA MAXIME",
    "FENYOM STEICY",
    "FOUEDJEU PIERRE",
    "FOUEKO AUDREY",
    "FRANK EYANGO",
    "GOUETH JEANNE",
    "GUEULMOUDJI FELIX",
    "HELBA CLAUDE",
    "IKOB ANNE",
    "ITONG ISAAC",
    "KADIJA ALI",
    "KALLA DAVID",
    "KAMANI JURUIS",
    "KAMDEM ANDRE",
    "KENTSA MARYLENE",
    "KOME FALLONE",
    "KOUOTO MARC-ALEXANDRE",
    "KWELE AUDREY",
    "LEBOMO DYLANE",
    "MAGAHAM MARTINE",
    "MINIDJUI BIBIANE",
    "MOTSEBO KRIS",
    "MOUKAM MAX",
    "MOULIOM ZINEDINE",
    "MOUNPOU DAN",
    "MUKAM EMMANUEL",
    "NGANSO ANAIS",
    "NDIEMI IVAN",
    "NDONG JEAN CLAUDE",
    "NGONPA FLORY",
    "NGUEDIA DILOKO",
    "NGUI LOIC",
    "NHEYIM KEVIN",
    "NOUBISSI NANA",
    "NOUFENAME LORY",
    "NOUTADIE WILLY",
    "NTEP FRANK",
    "NYEMECK NOE",
    "NYEUGO LAETICIA",
    "ONDOA PASCALINE",
    "OUM NDJENG",
    "PEHADEU MARGUERITE",
    "POUTCHEU POUANI",
    "SOFACK KENFACK",
    "SOUEMBOT PAPIKI",
    "TAKA MAXIME",
    "TAMGNO PIERRE",
    "TCHOUWA RAPH",
    "TATCHEU JAURES",
    "TEGOUFO LYDERIC",
    "TEKAM OSWALD",
    "TENKE ANNE",
    "TEUNKWA YVAN",
    "TSAFACK RALPH",
    "TSAMO LUCREN",
    "TSEGANG TENE",
    "WAFO MANEL",
    "YAMTCHEU CLAUDEL",
    "YOUMBI LARRY",
    "ZEYAD MOHAMED",
    "TANKEU CLEMENTINE",
    "NZIE MOUMI",
    "KAMOKOUE SYLVAIN",
    "MBATCHOU YVAN",
    "TENGAM ISMAEL",
    "TAGNE TALLA ERNIS",
    "FOSSO MAFO BRENDA",
    "KWEMAIN TCHOUASSI",
    "MINKA KELBE",
    "TSAFACK JERRY",
    "DJEUGUEU NGALEU",
    "KAMDEM SIMO",
    "MBOMA MBOMA JOEL",
    "NKOUANDI RUDY",
    "TAPI BISIL"
  ];
  var parr = [];
  var par1, par2, fil1, fil2, parr1, parr2;
  var x = "1", y = "2";

  setparLength() {
    return par.length;
  }

  setfilLength() {
    return fil.length;
  }

  setparrLength() {
    return parr.length;
  }

  setparMax(int x) {
    return Random().nextInt(x);
  }

  setfilMax(int x) {
    return Random().nextInt(x);
  }

  setparrMax(int x) {
    return Random().nextInt(x);
  }

  bool _isTrue = false;
  bool _k = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/6.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 20),
            SafeArea(
                child: Center(
              child: Text(
                "Commençons par vous attribuer des parrains et marraines",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
            )),
            AnimatedCrossFade(
              firstChild: Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _isTrue = true;
                      });
                    },
                    child: Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
              secondChild: Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 300,
                        width: 400,
                        color: Colors.blue,
                        child: Center(
                          child: Text(
                            x,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        height: 300,
                        width: 400,
                        color: Colors.red,
                        child: Center(
                          child: Text(
                            y,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (setparLength() != 0) {
                          par1 = setparLength();
                          fil1 = setparLength();
                          par2 = setparMax(par1);
                          fil2 = setparMax(par1);
                          x = par[par2];
                          y = fil[fil2];

                          print("Parrain: " + x + " filleul: " + y + ".\n");
                          parr.add(par[par2]);
                          par.removeAt(par2);
                          fil.removeAt(fil2);
                        } else {
                          parr1 = setparrLength();
                          fil1 = setfilLength();
                          parr2 = setparMax(parr1);
                          fil2 = setfilMax(fil1);
                          x = parr[parr2];
                          y = fil[fil2];
                          print("Parrain: " + x + " filleul: " + y + ".\n");
                          parr.removeAt(parr2);
                          fil.removeAt(fil2);
                        }
                      });
                    },
                    child: Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
              crossFadeState: _isTrue
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              duration: Duration(seconds: 1),
            ),
          ],
        ),
      ),
    );
  }
}
