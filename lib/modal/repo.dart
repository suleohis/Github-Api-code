
class All{
  List<Repo>? repos;

  All({this.repos});

  factory All.fromJson(List<dynamic> json){
    List<Repo> repos = [];

    repos = json.map((e)=>Repo.fromJson(e)).toList();
    return All(repos: repos);
  }
}
class Repo {
  int? id;
  String? nodeId;
  String? name;
  String? fullName;
  Owner? owner;
  bool? private;
  String? htmlUrl;
  String? description;
  bool? fork;
  String? url;
  String? archiveUrl;
  String? assigneesUrl;
  String? blobsUrl;
  String? branchesUrl;
  String? collaboratorsUrl;
  String? commentsUrl;
  String? commitsUrl;
  String? eventsUrl;
  String? forksUrl;
  String? issueCommentUrl;
  String? issueEventsUrl;
  String? issuesUrl;
  String? teamsUrl;
  String? treesUrl;
  String? homepage;
  int? forksCount;
  int? forks;
  int? stargazersCount;
  int? watchersCount;
  int? watchers;
  int? size;
  String? defaultBranch;
  int? openIssuesCount;
  int? openIssues;
  bool? isTemplate;
  List<String>? topics;
  bool? hasIssues;
  bool? hasProjects;
  bool? hasWiki;
  bool? hasPages;
  bool? hasDownloads;
  bool? archived;
  bool? disabled;
  String? visibility;
  String? pushedAt;
  String? createdAt;
  String? updatedAt;


  Repo(
      {this.id,
        this.nodeId,
        this.name,
        this.fullName,
        this.owner,
        this.private,
        this.htmlUrl,
        this.description,
        this.fork,
        this.url,
        this.archiveUrl,
        this.assigneesUrl,
        this.blobsUrl,
        this.branchesUrl,
        this.collaboratorsUrl,
        this.commentsUrl,
        this.commitsUrl,
        this.eventsUrl,
        this.forksUrl,
        this.issueCommentUrl,
        this.issueEventsUrl,
        this.issuesUrl,
        this.forksCount,
        this.forks,
        this.stargazersCount,
        this.watchersCount,
        this.watchers,
        this.size,
        this.defaultBranch,
        this.openIssuesCount,
        this.openIssues,
        this.isTemplate,
        this.topics,
        this.hasIssues,
        this.hasProjects,
        this.hasWiki,
        this.hasPages,
        this.hasDownloads,
        this.archived,
        this.disabled,
        this.visibility,
        this.pushedAt,
        this.createdAt,
        this.updatedAt,
        this.homepage,
        this.teamsUrl,
        this.treesUrl
       });

  factory Repo.fromJson(Map<String, dynamic> json){
    return Repo(
    id :json['id'],
    nodeId : json['node_id'],
    name :json['name'],
    fullName : json['full_name'],
    owner : json['owner'] != null ? Owner.fromJson(json['owner']) : null,
    private : json['private'],
    htmlUrl : json['html_url'],
    description : json['description'],
    fork : json['fork'],
    url : json['url'],
    archiveUrl : json['archive_url'],
    assigneesUrl : json['assignees_url'],
    blobsUrl : json['blobs_url'],
    branchesUrl : json['branches_url'],
    collaboratorsUrl : json['collaborators_url'],
    commentsUrl : json['comments_url'],
    commitsUrl : json['commits_url'],

    eventsUrl : json['events_url'],
    forksUrl : json['forks_url'],
      teamsUrl : json['teams_url'],
      treesUrl : json['trees_url'],
    issueCommentUrl : json['issue_comment_url'],
    issueEventsUrl : json['issue_events_url'],
    issuesUrl : json['issues_url'],
    forksCount : json['forks_count'],
    forks : json['forks'],
    stargazersCount : json['stargazers_count'],
    watchersCount : json['watchers_count'],
    watchers : json['watchers'],
    size : json['size'],
    defaultBranch : json['default_branch'],
    openIssuesCount : json['open_issues_count'],
    openIssues : json['open_issues'],
    isTemplate : json['is_template'],
    topics : json['topics'].cast<String>(),
    hasIssues : json['has_issues'],
    hasProjects : json['has_projects'],
    hasWiki : json['has_wiki'],
    hasPages : json['has_pages'],
    hasDownloads : json['has_downloads'],
    archived : json['archived'],
    disabled : json['disabled'],
    visibility : json['visibility'],
    pushedAt : json['pushed_at'],
    createdAt : json['created_at'],
    updatedAt : json['updated_at'],

    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['node_id'] = nodeId;
    data['name'] = name;
    data['full_name'] = fullName;
    if (owner != null) {
      data['owner'] = owner!.toJson();
    }
    data['private'] = private;
    data['html_url'] = htmlUrl;
    data['description'] = description;
    data['fork'] = fork;
    data['url'] = url;
    data['archive_url'] = archiveUrl;
    data['assignees_url'] = assigneesUrl;
    data['blobs_url'] = blobsUrl;
    data['branches_url'] = branchesUrl;
    data['collaborators_url'] = collaboratorsUrl;
    data['comments_url'] = commentsUrl;
    data['commits_url'] = commitsUrl;

    data['events_url'] = eventsUrl;
    data['forks_url'] = forksUrl;

    data['issue_comment_url'] = issueCommentUrl;
    data['issue_events_url'] = issueEventsUrl;
    data['issues_url'] = issuesUrl;

    data['teams_url'] = teamsUrl;
    data['trees_url'] = treesUrl;
    data['forks_count'] = forksCount;
    data['forks'] = forks;
    data['stargazers_count'] = stargazersCount;
    data['watchers_count'] = watchersCount;
    data['watchers'] = watchers;
    data['size'] = size;
    data['default_branch'] = defaultBranch;
    data['open_issues_count'] = openIssuesCount;
    data['open_issues'] = openIssues;
    data['is_template'] = isTemplate;
    data['topics'] = topics;
    data['has_issues'] = hasIssues;
    data['has_projects'] = hasProjects;
    data['has_wiki'] = hasWiki;
    data['has_pages'] = hasPages;
    data['has_downloads'] = hasDownloads;
    data['archived'] = archived;
    data['disabled'] = disabled;
    data['visibility'] = visibility;
    data['pushed_at'] = pushedAt;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;

    return data;
  }
}

class Owner {
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

  Owner(
      {this.login,
        this.id,
        this.nodeId,
        this.avatarUrl,
        this.gravatarId,
        this.url,
        this.htmlUrl,
        this.followersUrl,
        this.followingUrl,
        this.gistsUrl,
        this.starredUrl,
        this.subscriptionsUrl,
        this.organizationsUrl,
        this.reposUrl,
        this.eventsUrl,
        this.receivedEventsUrl,
        this.type,
        this.siteAdmin});

  factory Owner.fromJson(Map<String, dynamic> json) {
    return Owner(
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
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
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



