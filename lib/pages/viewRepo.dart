import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gsoc_githhub/modal/issue.dart';
import 'package:gsoc_githhub/modal/repo.dart';
import 'package:http/http.dart'  as http;
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class ViewRepo extends StatefulWidget {
  Repo repo;
  ViewRepo(this.repo,{Key? key}) : super(key: key);

  @override
  _ViewRepoState createState() => _ViewRepoState();
}

class _ViewRepoState extends State<ViewRepo> {
  bool isLoading = true;
  Future<AllIssue> fetchRepos(String message) async{
  final url = Uri.parse(message);
   final response = await  http.get(url).whenComplete(() {
    setState(() {
      isLoading = false;
    });
  });

  if(response.statusCode == 200){
    // print(response.body);
    final as = json.decode(response.body);

    return AllIssue.fromJson(json.decode(response.body));
  }else{
    throw Exception('Failed to fetch repos');
  }
}
  Future<AllIssue>? futureIssues;
  Repo repo = Repo();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    repo =widget.repo;
    String url = repo.issueEventsUrl!.replaceAll('{/number}', '');
    print(url);
   futureIssues = fetchRepos(url);

   print(repo.teamsUrl);
    // print(repo.issueCommentUrl);
    // print(repo.issueEventsUrl);
    // print(repo.hasIssues);
    // print(repo.openIssues);
    // print(repo.openIssuesCount);
    // print(repo.issuesUrl);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(repo.name!),
        backgroundColor: Colors.blue[900],
      ),
      body: isLoading ?
          const Center(
            child: CircularProgressIndicator(),
          )
          :
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            FutureBuilder(
              future: futureIssues,
              builder: (context, AsyncSnapshot<AllIssue> snapshot){
                if(snapshot.hasData){

                  List<IssueTo> iss = snapshot.data!.issues!;
                  int opened = 0;
                  int closed = 0;
                  print(iss.length);
                  for (var element in iss) {
                    if(element.issue!.state == 'open'){
                      opened++;
                      print('Opened: $opened');
                    }
                    if(element.issue!.state == 'closed'){
                      closed++;
                      print('Closed: $closed');
                    }
                  }
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Owner:',style: TextStyle( fontSize: 20,color: Colors.blue[800])),
                        ListTile(
                          leading:
                        repo.owner!.avatarUrl != null && repo.owner!.avatarUrl! !=''?
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:BorderRadius.circular(30),
                              color:Colors.grey[200],
                            ),
                            child: CircleAvatar(
                              radius: 30,
                              child: Image.network(repo.owner!.avatarUrl!),
                            ),
                          ): Container(
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.grey)
                          ),
                          child: const Icon(Icons.person),
                        ),
                          title: Text(repo.owner!.login!,style:const TextStyle( fontSize: 18)),
                        ),
                        Text('Description:',style: TextStyle( fontSize: 20,color: Colors.blue[800])),
                        const SizedBox(height: 5,),
                        Text(repo.description!,style: const TextStyle( fontSize: 18)),
                        const SizedBox(height: 10,),
                        Row(
                          children: [
                            const Text('Created At:',style: TextStyle( fontSize: 20),),
                            const SizedBox(width: 20,),
                            Text(DateFormat('yMMMEd').format(DateTime.parse(repo.createdAt!)),style: const TextStyle( fontSize: 20))
                          ],
                        ),
                        Row(
                          children: [
                            const Text('Updated At:',style: TextStyle( fontSize: 20),),
                            const SizedBox(width: 20,),
                            Text(DateFormat('yMMMEd').format(DateTime.parse(repo.updatedAt!)),style: const TextStyle( fontSize: 20))
                          ],
                        ),
                        Row(
                          children: [
                            const Text('Pushed At:',style: TextStyle( fontSize: 20),),
                            const SizedBox(width: 20,),
                            Text(DateFormat('yMMMEd').format(DateTime.parse(repo.pushedAt!)),style: const TextStyle( fontSize: 20))
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          children: [
                            const Text('Number of Issue:',style: TextStyle( fontSize: 20),),
                            const SizedBox(width: 20,),
                            Text(repo.openIssues.toString(),style: const TextStyle( fontSize: 20))
                          ],
                        ),
                        Row(
                          children: [
                            const Text('Number of Inactive Issue:',style: TextStyle( fontSize: 20),),
                            const SizedBox(width: 20,),
                            Text(closed.toString(),style: const TextStyle( fontSize: 20))
                          ],
                        ),
                        const SizedBox(height: 10,),
                        ElevatedButton(onPressed: (){
                          launch(repo.htmlUrl!);
                        },
                            child: const Text('Repository'),
                        style: ElevatedButton.styleFrom(primary: Colors.blue[900],onPrimary: Colors.white),
                        )
                      ],
                    ),
                  );
                }else{
                  print('no');
                  return Container();
                }
            },
            ),

          ],
        ),
      ),
    );
  }
}
