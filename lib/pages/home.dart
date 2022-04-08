import 'package:flutter/material.dart';
import 'package:gsoc_githhub/pages/viewRepo.dart';
import 'package:http/http.dart'  as http;
import 'dart:convert';
import 'package:gsoc_githhub/modal/repo.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

Future<All> fetchRepos() async{
  final url = Uri.parse('https://api.github.com/users/fluttercommunity/repos');
  final response = await  http.get(url);

  if(response.statusCode == 200){
    print(response.body);
    return All.fromJson(json.decode(response.body));
  }else{
    throw Exception('Failed to fetch repos');
  }
}

class _HomePageState extends State<HomePage> {
Future<All>? futureRepos;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureRepos = fetchRepos();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Code'),
        backgroundColor: Colors.blue[900],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          child: FutureBuilder(
            future: futureRepos,
            builder: (BuildContext context, AsyncSnapshot<All> snapshot) {
              if(snapshot.hasData){
                List<Repo> repos = [];
                for(int i =0; i <snapshot.data!.repos!.length; i++){
                  repos.add(Repo(
                    name: snapshot.data!.repos![i].name,
                    description: snapshot.data!.repos![i].description,
                    htmlUrl: snapshot.data!.repos![i].htmlUrl,
                    stargazersCount: snapshot.data!.repos![i].stargazersCount,
                  ));
                }
                return ListView(
                  children: snapshot.data!.repos!.map((element) =>Card(
                    color: Colors.grey[200],
                    child: ListTile(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder:
                            (context)=>ViewRepo(element)));
                      },
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(element.name!,style: const TextStyle(fontSize: 25),),
                          Text(element.stargazersCount!.toString())
                        ],
                      ),
                      // subtitle: Column(
                      //   mainAxisAlignment: MainAxisAlignment.start,
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     Text(element.description ?? '',),
                      //
                      //   ],
                      // ),
                    ),
                  )).toList(),
                );
              }else if(snapshot.hasError){
                return const Center(
                  child: Text('Error')
                );
              }else{
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
