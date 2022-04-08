class IssueTo {
  int? id;
  String? nodeId;
  String? url;
  Actor? actor;
  String? event;
  dynamic commitId;
  dynamic commitUrl;
  String? createdAt;
  Issue? issue;
  dynamic performedViaGithubApp;

  IssueTo({this.id, this.nodeId, this.url, this.actor,
    this.event, this.commitId, this.commitUrl, this.createdAt, this.issue, this.performedViaGithubApp});

 factory  IssueTo.fromJson(Map<String, dynamic> json) {
   return IssueTo(
       id : json['id'],
       nodeId : json['node_id'],
       url : json['url'],
   actor : json['actor'] != null ? Actor.fromJson(json['actor']) : null,
   event : json['event'],
   commitId : json['commit_id'],
   commitUrl : json['commit_url'],
   createdAt : json['created_at'],
   issue : json['issue'] != null ? Issue.fromJson(json['issue']) : null,
   performedViaGithubApp : json['performed_via_github_app'],
   );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['node_id'] = nodeId;
    data['url'] = url;
    if (actor != null) {
      data['actor'] = actor!.toJson();
    }
    data['event'] = event;
    data['commit_id'] = commitId;
    data['commit_url'] = commitUrl;
    data['created_at'] = createdAt;
    if (issue != null) {
      data['issue'] = issue!.toJson();
    }
    data['performed_via_github_app'] = performedViaGithubApp;
    return data;
  }
}

class Actor {
  String? login;
  int? id;
  String? nodeId;
  String? avatarUrl;
  String? gravatarId;
  String? url;
  String? htmlUrl;
  String? followersUrl;
  String? followingUrl;
  String? gistsUrl;
  String? starredUrl;
  String? subscriptionsUrl;
  String? organizationsUrl;
  String? reposUrl;
  String? eventsUrl;
  String? receivedEventsUrl;
  String? type;
  bool? siteAdmin;

  Actor({this.login, this.id, this.nodeId, this.avatarUrl, this.gravatarId, this.url, this.htmlUrl, this.followersUrl, this.followingUrl, this.gistsUrl, this.starredUrl, this.subscriptionsUrl, this.organizationsUrl, this.reposUrl, this.eventsUrl, this.receivedEventsUrl, this.type, this.siteAdmin});

 factory Actor.fromJson(Map<String, dynamic> json) {
    return Actor(
        login : json['login'],
        id : json['id'],
        nodeId : json['node_id'],
        avatarUrl : json['avatar_url'],
        gravatarId : json['gravatar_id'],
        url : json['url'],
        htmlUrl : json['html_url'],
        followersUrl : json['followers_url'],
        followingUrl : json['following_url'],
        gistsUrl : json['gists_url'],
        starredUrl : json['starred_url'],
        subscriptionsUrl : json['subscriptions_url'],
        organizationsUrl : json['organizations_url'],
    reposUrl : json['repos_url'],
    eventsUrl : json['events_url'],
    receivedEventsUrl : json['received_events_url'],
    type : json['type'],
    siteAdmin : json['site_admin'],
    );  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['login'] = login;
    data['id'] = id;
    data['node_id'] = nodeId;
    data['avatar_url'] = avatarUrl;
    data['gravatar_id'] = gravatarId;
    data['url'] = url;
    data['html_url'] = htmlUrl;
    data['followers_url'] = followersUrl;
    data['following_url'] = followingUrl;
    data['gists_url'] = gistsUrl;
    data['starred_url'] = starredUrl;
    data['subscriptions_url'] = subscriptionsUrl;
    data['organizations_url'] = organizationsUrl;
    data['repos_url'] = reposUrl;
    data['events_url'] = eventsUrl;
    data['received_events_url'] = receivedEventsUrl;
    data['type'] = type;
    data['site_admin'] = siteAdmin;
    return data;
  }
}

// class Issue {
//   String? url;
//   String? repositoryUrl;
//   String? labelsUrl;
//   String? commentsUrl;
//   String? eventsUrl;
//   String? htmlUrl;
//   int? id;
//   String? nodeId;
//   int? number;
//   String? title;
//   Actor? user;
//   List<Null>? labels;
//   String? state;
//   bool? locked;
//   Null? assignee;
//   List<Null>? assignees;
//   Null? milestone;
//   int? comments;
//   String? createdAt;
//   String? updatedAt;
//   Null? closedAt;
//   String? authorAssociation;
//   Null? activeLockReason;
//   bool? draft;
//   PullRequest? pullRequest;
//   String? body;
//   Reactions? reactions;
//   String? timelineUrl;
//   Null? performedViaGithubApp;
//
//   Issue({this.url, this.repositoryUrl, this.labelsUrl, this.commentsUrl, this.eventsUrl, this.htmlUrl, this.id, this.nodeId, this.number, this.title, this.user, this.labels, this.state, this.locked, this.assignee, this.assignees, this.milestone, this.comments, this.createdAt, this.updatedAt, this.closedAt, this.authorAssociation, this.activeLockReason, this.draft, this.pullRequest, this.body, this.reactions, this.timelineUrl, this.performedViaGithubApp});
//
//   Issue.fromJson(Map<String, dynamic> json) {
//     url = json['url'];
//     repositoryUrl = json['repository_url'];
//     labelsUrl = json['labels_url'];
//     commentsUrl = json['comments_url'];
//     eventsUrl = json['events_url'];
//     htmlUrl = json['html_url'];
//     id = json['id'];
//     nodeId = json['node_id'];
//     number = json['number'];
//     title = json['title'];
//     user = json['user'] != null ? Actor.fromJson(json['user']) : null;
//
//     state = json['state'];
//     locked = json['locked'];
//     assignee = json['assignee'];
//
//     milestone = json['milestone'];
//     comments = json['comments'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//     closedAt = json['closed_at'];
//     authorAssociation = json['author_association'];
//     activeLockReason = json['active_lock_reason'];
//     draft = json['draft'];
//     pullRequest = json['pull_request'] != null ? PullRequest.fromJson(json['pull_request']) : null;
//     body = json['body'];
//     reactions = json['reactions'] != null ? Reactions.fromJson(json['reactions']) : null;
//     timelineUrl = json['timeline_url'];
//     performedViaGithubApp = json['performed_via_github_app'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['url'] = url;
//     data['repository_url'] = repositoryUrl;
//     data['labels_url'] = labelsUrl;
//     data['comments_url'] = commentsUrl;
//     data['events_url'] = eventsUrl;
//     data['html_url'] = htmlUrl;
//     data['id'] = id;
//     data['node_id'] = nodeId;
//     data['number'] = number;
//     data['title'] = title;
//     if (user != null) {
//       data['user'] = user!.toJson();
//     }
//     data['state'] = state;
//     data['locked'] = locked;
//     data['assignee'] = assignee;
//
//     data['milestone'] = milestone;
//     data['comments'] = comments;
//     data['created_at'] = createdAt;
//     data['updated_at'] = updatedAt;
//     data['closed_at'] = closedAt;
//     data['author_association'] = authorAssociation;
//     data['active_lock_reason'] = activeLockReason;
//     data['draft'] = draft;
//     if (pullRequest != null) {
//       data['pull_request'] = pullRequest!.toJson();
//     }
//     data['body'] = body;
//     if (reactions != null) {
//       data['reactions'] = reactions!.toJson();
//     }
//     data['timeline_url'] = timelineUrl;
//     data['performed_via_github_app'] = performedViaGithubApp;
//     return data;
//   }
// }

class PullRequest {
  String? url;
  String? htmlUrl;
  String? diffUrl;
  String? patchUrl;
  dynamic mergedAt;

  PullRequest({this.url, this.htmlUrl, this.diffUrl, this.patchUrl, this.mergedAt});

 factory PullRequest.fromJson(Map<String, dynamic> json) {
    return PullRequest(
        url : json['url'],
        htmlUrl : json['html_url'],
        diffUrl : json['diff_url'],
    patchUrl : json['patch_url'],
    mergedAt : json['merged_at'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['url'] = url;
    data['html_url'] = htmlUrl;
    data['diff_url'] = diffUrl;
    data['patch_url'] = patchUrl;
    data['merged_at'] = mergedAt;
    return data;
  }
}

class Reactions {
  String? url;
  int? totalCount;
  int? i;
  int? l;
  int? laugh;
  int? hooray;
  int? confused;
  int? heart;
  int? rocket;
  int? eyes;

  Reactions({this.url, this.totalCount, this.i, this.l, this.laugh, this.hooray, this.confused, this.heart, this.rocket, this.eyes});

factory Reactions.fromJson(Map<String, dynamic> json) {
  return Reactions(
      url : json['url'],
      totalCount : json['total_count'],
      i : json['+1'],
  l : json['-1'],
  laugh : json['laugh'],
  hooray : json['hooray'],
  confused : json['confused'],
  heart : json['heart'],
  rocket : json['rocket'],
  eyes : json['eyes'],
  );
}

Map<String, dynamic> toJson() {
  final Map<String, dynamic> data = Map<String, dynamic>();
  data['url'] = url;
  data['total_count'] = totalCount;
  data['+1'] = i;
  data['-1'] = l;
  data['laugh'] = laugh;
  data['hooray'] = hooray;
  data['confused'] = confused;
  data['heart'] = heart;
  data['rocket'] = rocket;
  data['eyes'] = eyes;
  return data;
}
}

class Issue {
  String? url;
  String? repositoryUrl;
  String? labelsUrl;
  String? commentsUrl;
  String? eventsUrl;
  String? htmlUrl;
  int? id;
  String? nodeId;
  int? number;
  String? title;
  List<dynamic>? labels;
  String? state;
  bool? locked;
  dynamic? assignee;
  List<dynamic>? assignees;
  dynamic milestone;
  int? comments;
  String? createdAt;
  String? updatedAt;
  String? closedAt;
  String? authorAssociation;
  dynamic activeLockReason;
  bool? draft;
  PullRequest? pullRequest;
  String? body;
  Reactions? reactions;
  String? timelineUrl;
  dynamic performedViaGithubApp;

  Issue({this.url, this.repositoryUrl, this.labelsUrl, this.commentsUrl,
    this.eventsUrl, this.htmlUrl, this.id, this.nodeId, this.number,
    this.title,  this.labels, this.state, this.locked,
    this.assignee, this.assignees, this.milestone, this.comments,
    this.createdAt, this.updatedAt, this.closedAt, this.authorAssociation,
    this.activeLockReason, this.draft, this.pullRequest, this.body,
    this.reactions, this.timelineUrl, this.performedViaGithubApp});


  factory Issue.fromJson(Map<String, dynamic> json) {
    return Issue(
        url : json['url'],
        repositoryUrl : json['repository_url'],
        labelsUrl : json['labels_url'],
        commentsUrl : json['comments_url'],
        eventsUrl : json['events_url'],
        htmlUrl : json['html_url'],
        id : json['id'],
        nodeId : json['node_id'],
        number : json['number'],
        title : json['title'],

    state : json['state'],
    locked : json['locked'],
    assignee : json['assignee'],

    milestone : json['milestone'],
    comments : json['comments'],
    createdAt : json['created_at'],
    updatedAt : json['updated_at'],
    closedAt : json['closed_at'],
    authorAssociation : json['author_association'],
    activeLockReason : json['active_lock_reason'],
    draft : json['draft'],
    pullRequest : json['pull_request'] != null ? PullRequest.fromJson(json['pull_request']) : null,
    body : json['body'],
    reactions : json['reactions'] != null ? Reactions.fromJson(json['reactions']) : null,
    timelineUrl : json['timeline_url'],
    performedViaGithubApp : json['performed_via_github_app'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['url'] = url;
    data['repository_url'] = repositoryUrl;
    data['labels_url'] = labelsUrl;
    data['comments_url'] = commentsUrl;
    data['events_url'] = eventsUrl;
    data['html_url'] = htmlUrl;
    data['id'] = id;
    data['node_id'] = nodeId;
    data['number'] = number;
    data['title'] = title;


    data['state'] = state;
    data['locked'] = locked;
    data['assignee'] = assignee;

    data['milestone'] = milestone;
    data['comments'] = comments;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['closed_at'] = closedAt;
    data['author_association'] = authorAssociation;
    data['active_lock_reason'] = activeLockReason;
    data['draft'] = draft;
    if (pullRequest != null) {
      data['pull_request'] = pullRequest!.toJson();
    }
    data['body'] = body;
    if (reactions != null) {
      data['reactions'] = reactions!.toJson();
    }
    data['timeline_url'] = timelineUrl;
    data['performed_via_github_app'] = performedViaGithubApp;
    return data;
  }
}

class AllIssue{
  List<IssueTo>? issues;

  AllIssue({this.issues});

  factory AllIssue.fromJson(List<dynamic> json){
    List<IssueTo> issues = [];

    issues = json.map((e)=>IssueTo.fromJson(e)).toList();
    return AllIssue(issues: issues);
  }
}
