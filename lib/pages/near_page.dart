import 'package:flutter/material.dart';
import 'package:flutter_list_detail/components/tool_appbar.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:flutter_svg/svg.dart';
import 'package:latlong2/latlong.dart';

class NearbyPage extends StatelessWidget {
  const NearbyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolAppBar(title: 'Nearby'),
      body: FlutterMap(
        options: MapOptions(center: LatLng(20.959902, 107.042542), zoom: 10),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'dev.css.flutter',
          ),
          MarkerLayer(
            markers: [
              Marker(
                  height: 60,
                  width: 100,
                  point: LatLng(20.959902, 107.042542),
                  builder: (context) {
                    return Column(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(14.0),
                            ),
                          ),
                          child: Text(
                            'Username',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        SvgPicture.asset(
                          'assets/icon/Location.svg',
                          height: 20,
                          width: 20,
                          colorFilter:
                              ColorFilter.mode(Colors.black, BlendMode.srcIn),
                        ),
                      ],
                    );
                  }),
            ],
          )
        ],
      ),
    );
  }
}
