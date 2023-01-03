


import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:geolocator/geolocator.dart';

import '../models/direction_details_info.dart';
import '../models/driver_data.dart';
import '../models/user_model.dart';

final FirebaseAuth fAuth = FirebaseAuth.instance;

User? currentFirebaseUser;

UserModel? userModelCurrentInfo;

List dList = [];//Drivers key info list

List busList = [];

List staticbusList = [];

List dynamicbusList = [];

List BusListFortopThreeDynamicdrivers = [];

List BusListFortopThreeDynamicdriversRoutes = [];

List TimeFortopThreeDynamicdriversRoutes = [];

List TimeForstaticBus = [];

String? selectedStaticBus = "";

DirectionDetailsInfo? tripDirectionDetailsInfo;

String? chosenDriverId = "";

String cloudMessagingServerToken =  "key=AAAA8H50m_w:APA91bGutxKz1y_mRW9CLAxngB4saavtDEyzLklgfQG9IU3N3lnXjiSCaLnTrqmdoHeVnrArScy7iMKhjDfLh6Alq6j5XQcPkM1-Mm160girDYVZYSPbIKuWWy5SnF0KhldiTIjDEA69 ";

String userDropOffAddress = "";


StreamSubscription<Position>? streamSubscriptionPosition;
StreamSubscription<Position>? streamSubscriptionDriverLivePosition;

Position? driverCurrentPosition;

DriverData onlineDriverData = DriverData();