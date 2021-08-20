import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


class SmallVideoPage extends StatefulWidget {
  @override
  _SmallVideoPageState createState() => _SmallVideoPageState();
}

class _SmallVideoPageState extends State<SmallVideoPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: new AppBar(
        title: new Text('小视频'),
      ),

      body: buildGridView(),

      // //Regular GridView
      // body: GridView(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2,
      //     mainAxisSpacing: 5,
      //     crossAxisSpacing: 5,
      //     childAspectRatio: 1,
      //   ),
      //   children: <Widget>[
      //     Container(color: Colors.teal, width: 50, height: 50),
      //     Container(color: Colors.teal, width: 50, height: 50),
      //     Container(color: Colors.teal, width: 50, height: 50),
      //     Container(color: Colors.teal, width: 50, height: 50),
      //     Container(color: Colors.teal, width: 50, height: 50),
      //     Container(color: Colors.teal, width: 50, height: 50),
      //     Container(color: Colors.teal, width: 50, height: 50),
      //     Container(color: Colors.teal, width: 50, height: 50),
      //     Container(color: Colors.teal, width: 50, height: 50),
      //     Container(color: Colors.teal, width: 50, height: 50),
      //     Container(color: Colors.teal, width: 50, height: 50),
      //     Container(color: Colors.teal, width: 50, height: 50),
      //     Container(color: Colors.teal, width: 50, height: 50),
      //     Container(color: Colors.teal, width: 50, height: 50),
      //     Container(color: Colors.teal, width: 50, height: 50),
      //   ],
      // ),

      // // Extent GridView
      // body: GridView.extent(
      //   maxCrossAxisExtent: 100,
      //   mainAxisSpacing: 3,
      //   crossAxisSpacing: 3,
      //   childAspectRatio: 9.0 / 16.0,
      //   children: <Widget>[
      //     Container(color: Colors.teal, width: 50, height: 50),
      //     Container(color: Colors.teal, width: 50, height: 50),
      //     Container(color: Colors.teal, width: 50, height: 50),
      //     Container(color: Colors.teal, width: 50, height: 50),
      //     Container(color: Colors.teal, width: 50, height: 50),
      //     Container(color: Colors.teal, width: 50, height: 50),
      //     Container(color: Colors.teal, width: 50, height: 50),
      //     Container(color: Colors.teal, width: 50, height: 50),
      //     Container(color: Colors.teal, width: 50, height: 50),
      //     Container(color: Colors.teal, width: 50, height: 50),
      //     Container(color: Colors.teal, width: 50, height: 50),
      //     Container(color: Colors.teal, width: 50, height: 50),
      //     Container(color: Colors.teal, width: 50, height: 50),
      //     Container(color: Colors.teal, width: 50, height: 50),
      //     Container(color: Colors.teal, width: 50, height: 50),
      //   ],
      // ),

      // // Count GridView
      // body: GridView.count(
      //   crossAxisCount: 6,
      //   mainAxisSpacing: 3,
      //   crossAxisSpacing: 3,
      //   childAspectRatio: 9.0 / 16.0,
      //   children: <Widget>[
      //     Container(color: Colors.teal, width: 50, height: 50),
      //     Container(color: Colors.teal, width: 50, height: 50),
      //     Container(color: Colors.teal, width: 50, height: 50),
      //     Container(color: Colors.teal, width: 50, height: 50),
      //     Container(color: Colors.teal, width: 50, height: 50),
      //     Container(color: Colors.teal, width: 50, height: 50),
      //     Container(color: Colors.teal, width: 50, height: 50),
      //     Container(color: Colors.teal, width: 50, height: 50),
      //     Container(color: Colors.teal, width: 50, height: 50),
      //     Container(color: Colors.teal, width: 50, height: 50),
      //     Container(color: Colors.teal, width: 50, height: 50),
      //     Container(color: Colors.teal, width: 50, height: 50),
      //     Container(color: Colors.teal, width: 50, height: 50),
      //     Container(color: Colors.teal, width: 50, height: 50),
      //     Container(color: Colors.teal, width: 50, height: 50),
      //   ],
      // ),

      // // Custom GridView
      // body: GridView.custom(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 3,
      //     mainAxisSpacing: 3,
      //     crossAxisSpacing: 3,
      //     childAspectRatio: 9.0 / 16.0,
      //   ),
      //   childrenDelegate: SliverChildListDelegate(
      //     [
      //       Container(color: Colors.teal, width: 50, height: 50),
      //       Container(color: Colors.teal, width: 50, height: 50),
      //       Container(color: Colors.teal, width: 50, height: 50),
      //       Container(color: Colors.teal, width: 50, height: 50),
      //       Container(color: Colors.teal, width: 50, height: 50),
      //       Container(color: Colors.teal, width: 50, height: 50),
      //       Container(color: Colors.teal, width: 50, height: 50),
      //       Container(color: Colors.teal, width: 50, height: 50),
      //       Container(color: Colors.teal, width: 50, height: 50),
      //       Container(color: Colors.teal, width: 50, height: 50),
      //       Container(color: Colors.teal, width: 50, height: 50),
      //       Container(color: Colors.teal, width: 50, height: 50),
      //       Container(color: Colors.teal, width: 50, height: 50),
      //       Container(color: Colors.teal, width: 50, height: 50),
      //       Container(color: Colors.teal, width: 50, height: 50),
      //       Container(color: Colors.teal, width: 50, height: 50),
      //       Container(color: Colors.teal, width: 50, height: 50),
      //       Container(color: Colors.teal, width: 50, height: 50),
      //       Container(color: Colors.teal, width: 50, height: 50),
      //       Container(color: Colors.teal, width: 50, height: 50),
      //       Container(color: Colors.teal, width: 50, height: 50),
      //       Container(color: Colors.teal, width: 50, height: 50),
      //     ],
      //   ),
      // ),

      // // Builder GridView
      // body: GridView.builder(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 3,
      //     mainAxisSpacing: 3,
      //     crossAxisSpacing: 3,
      //     childAspectRatio: 9.0 / 16.0,
      //   ),
      //   itemBuilder: (BuildContext context, int index) {
      //     return Container(color: Colors.teal, width: 50, height: 50);
      //   },
      //   itemCount: 5,
      // ),

      // Actual video part on app

    );
  }

  List<String> initItemData() {
    List<String> data = [
      'https://storage.googleapis.com/coverr-main/mp4%2FHeaven.mp4',
      'https://storage.googleapis.com/coverr-main/Coverr_00008_Female_getting_cosy.mp4',
      'https://storage.googleapis.com/coverr-main/mp4%2Fcoverr-clear-water-1559888911402.mp4',
      'https://storage.googleapis.com/coverr-main/mp4%2Fcoverr-breathtaking-reflection-1572023479601.mp4',
      'https://storage.googleapis.com/coverr-main/mp4%2FHeaven.mp4',
      'https://storage.googleapis.com/coverr-main/Coverr_00008_Female_getting_cosy.mp4',
      'https://storage.googleapis.com/coverr-main/mp4%2Fcoverr-clear-water-1559888911402.mp4',
      'https://storage.googleapis.com/coverr-main/mp4%2Fcoverr-breathtaking-reflection-1572023479601.mp4',
      'https://storage.googleapis.com/coverr-main/mp4%2FHeaven.mp4',
      'https://storage.googleapis.com/coverr-main/Coverr_00008_Female_getting_cosy.mp4',
      'https://storage.googleapis.com/coverr-main/mp4%2Fcoverr-clear-water-1559888911402.mp4',
      'https://storage.googleapis.com/coverr-main/mp4%2Fcoverr-breathtaking-reflection-1572023479601.mp4',
    ];
    return data;
  }

  Widget buildGridView() {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 3,
      mainAxisSpacing: 3,
      padding: EdgeInsets.fromLTRB(4.0, 4.0, 4.0, 4.0),
      childAspectRatio: 9.0 / 16.0,
      children: initItemData().map(
        (data) {
          // return Container(child: Text(data));   // instead of container, need widget to wrap video.
          return VideoPage(data);
        },
      ).toList(),
    );
  }
}









class VideoPage extends StatefulWidget {
  String dataSource;
  VideoPage(this.dataSource);

  @override
  _VideoPageState createState() => _VideoPageState();
}



class _VideoPageState extends State<VideoPage> {

  late VideoPlayerController controller;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (controller.value.isPlaying) {
          controller.pause();
        } else {
          controller.play();
        }
      },
      child: Column(
        children: <Widget> [
          SizedBox(
            width: 300,
            height: 300,
            child: controller.value.isInitialized ? VideoPlayer(controller) : Container(color: Colors.teal),
          ),
          Visibility(
            visible: !controller.value.isInitialized,
            child: Container(
              height: 9,
              child: VideoProgressIndicator(
                controller,
                allowScrubbing: true,
                colors: VideoProgressColors(
                  playedColor: Colors.redAccent,
                  bufferedColor: Colors.white,
                  backgroundColor: Colors.grey,
                )
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    controller = VideoPlayerController.network(widget.dataSource);
    controller.initialize().then((_) => setState(() {}));
    controller.setVolume(1.0);
    controller.addListener(() {
      if (controller.value.hasError) {
        print(controller.value.errorDescription);
      }
    });
    super.initState();
  }
}

