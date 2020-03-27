import 'package:flutter/material.dart';
import 'package:top_ceo/api/api_service.dart';
import 'package:top_ceo/model/ceo.dart';

import 'about_screen.dart';
import 'detail_screen.dart';

class ListScreen extends StatefulWidget {
  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  ApiService apiService;

  @override
  void initState() {
    super.initState();
    apiService = ApiService();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top CEO'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AboutScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: FutureBuilder<List<Ceo>>(
        future: apiService.getCeo(),
        builder: (BuildContext context, AsyncSnapshot<List<Ceo>> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            List<Ceo> ceos = snapshot.data;

            return _buildListView(ceos);
          }
          if (snapshot.connectionState == ConnectionState.none) {
            return Center(
              child: Column(
                children: <Widget>[
                  CircularProgressIndicator(),
                  Text('Check Your Internet Connection'),
                ],
              ),
            );
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  ListView _buildListView(List<Ceo> ceos) {
    return ListView.separated(
      itemCount: ceos.length,
      separatorBuilder: (context, index) => Divider(),
      itemBuilder: (context, index) {
        Ceo ceo = ceos[index];

        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(ceo),
              ),
            );
          },
          child: ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage(ceo.imgQuote)),
            title: Text(ceo.name),
            subtitle: Text('CEO dari ${ceo.ceo}'),
          ),
        );
      },
    );
  }
}
