class HomePageModel {
  HomePageModel({
    required this.id,
    required this.width,
    required this.height,
    required this.color,
    required this.blurHash,
    required this.description,
    required this.altDescription,
    this.urls,
    this.links,
    required this.likes,
    required this.likedByUser,
    required this.currentUserCollections,
    this.sponsorship,
    this.topicSubmissions,
    this.user,
  });

  final String id;
  final int width;
  final int height;
  final String color;
  final String blurHash;
  final String description;
  final String altDescription;
  final Urls? urls;
  final ModelLinks? links;
  final int likes;
  final bool likedByUser;
  final List<dynamic> currentUserCollections;
  final Sponsorship? sponsorship;
  final TopicSubmissions? topicSubmissions;
  final User? user;

  factory HomePageModel.fromJson(Map<String, dynamic> json) => HomePageModel(
        id: json["id"] ?? '',
        width: json["width"] ?? 0,
        height: json["height"] ?? 0,
        color: json["color"] ?? '',
        blurHash: json["blur_hash"] ?? '',
        description: json["description"] ?? '',
        altDescription: json["alt_description"] ?? '',
        urls: json["urls"] == null ? null : Urls.fromJson(json["urls"]),
        links:
            json["links"] == null ? null : ModelLinks.fromJson(json["links"]),
        likes: json["likes"] ?? 0,
        likedByUser: json["liked_by_user"] ?? false,
        currentUserCollections: json["current_user_collections"] == null
            ? []
            : List<dynamic>.from(
                json["current_user_collections"].map((x) => x)),
        sponsorship: json["sponsorship"] == null
            ? null
            : Sponsorship.fromJson(json["sponsorship"]),
        topicSubmissions: json["topic_submissions"] == null
            ? null
            : TopicSubmissions.fromJson(json["topic_submissions"]),
        user: json["user"] == null ? null : User.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "width": width,
        "height": height,
        "color": color,
        "blur_hash": blurHash,
        "description": description,
        "alt_description": altDescription,
        "urls": urls?.toJson(),
        "links": links?.toJson(),
        "likes": likes,
        "liked_by_user": likedByUser,
        "current_user_collections":
            List<dynamic>.from(currentUserCollections.map((x) => x)),
        "sponsorship": sponsorship?.toJson(),
        "topic_submissions": topicSubmissions?.toJson(),
        "user": user?.toJson(),
      };
}

class ModelLinks {
  ModelLinks({
    required this.self,
    required this.html,
    required this.download,
    required this.downloadLocation,
  });

  final String self;
  final String html;
  final String download;
  final String downloadLocation;

  factory ModelLinks.fromJson(Map<String, dynamic> json) => ModelLinks(
        self: json["self"]??'',
        html: json["html"]??'',
        download: json["download"]??'',
        downloadLocation: json["download_location"]??'',
      );

  Map<String, dynamic> toJson() => {
        "self": self,
        "html": html,
        "download": download,
        "download_location": downloadLocation,
      };
}

class Sponsorship {
  Sponsorship({
    required this.impressionUrls,
    required this.tagline,
    required this.taglineUrl,
     this.sponsor,
  });

  final List<String> impressionUrls;
  final String tagline;
  final String taglineUrl;
  final User? sponsor;

  factory Sponsorship.fromJson(Map<String, dynamic> json) => Sponsorship(
        impressionUrls:
           json["impression_urls"]== null ? []: List<String>.from(json["impression_urls"].map((x) => x)),
        tagline: json["tagline"]??'',
        taglineUrl: json["tagline_url"]??'',
        sponsor: json["sponsor"]  == null ? null :User.fromJson(json["sponsor"]),
      );

  Map<String, dynamic> toJson() => {
        "impression_urls": List<dynamic>.from(impressionUrls.map((x) => x)),
        "tagline": tagline,
        "tagline_url": taglineUrl,
        "sponsor": sponsor?.toJson(),
      };
}

class User {
  User({
    required this.id,
    required this.username,
    required this.name,
    required this.firstName,
    required this.lastName,
    required this.twitterUsername,
    required this.portfolioUrl,
    required this.bio,
    required this.location,
     this.links,
     this.profileImage,
    required this.instagramUsername,
    required this.totalCollections,
    required this.totalLikes,
    required this.totalPhotos,
    required this.acceptedTos,
    required this.forHire,
     this.social,
  });

  final String id;
  final String username;
  final String name;
  final String firstName;
  final String lastName;
  final String twitterUsername;
  final String portfolioUrl;
  final String bio;
  final String location;
  final UserLinks? links;
  final ProfileImage? profileImage;
  final String instagramUsername;
  final int totalCollections;
  final int totalLikes;
  final int totalPhotos;
  final bool acceptedTos;
  final bool forHire;
  final Social? social;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"] ??'',
        username: json["username"]??'',
        name: json["name"]??'',
        firstName: json["first_name"]??'',
        lastName: json["last_name"] ??'',
        twitterUsername:
            json["twitter_username"]??'',
        portfolioUrl:
            json["portfolio_url"] ??"",
        bio: json["bio"] ??"",
        location: json["location"]  ??"",
        links: json["links"] == null ? null : UserLinks.fromJson(json['links']),
        profileImage: json["profile_image"] == null ? null : ProfileImage.fromJson(json['profile_image']),
        instagramUsername: json["instagram_username"]??'',
        totalCollections: json["total_collections"]?? 0,
        totalLikes: json["total_likes"]?? 0,
        totalPhotos: json["total_photos"]?? 0,
        acceptedTos: json["accepted_tos"]?? false,
        forHire: json["for_hire"]?? false,
        social: json["social" ]== null ? null : Social.fromJson(json["social"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "name": name,
        "first_name": firstName,
        "last_name": lastName ,
        "twitter_username": twitterUsername ,
        "portfolio_url": portfolioUrl ,
        "bio": bio,
        "location": location ,
        "links": links?.toJson(),
        "profile_image": profileImage?.toJson(),
        "instagram_username":
            instagramUsername,
        "total_collections": totalCollections,
        "total_likes": totalLikes,
        "total_photos": totalPhotos,
        "accepted_tos": acceptedTos,
        "for_hire": forHire,
        "social": social?.toJson(),
      };
}

class UserLinks {
  UserLinks({
    required this.self,
    required this.html,
    required this.photos,
    required this.likes,
    required this.portfolio,
    required this.following,
    required this.followers,
  });

  final String self;
  final String html;
  final String photos;
  final String likes;
  final String portfolio;
  final String following;
  final String followers;

  factory UserLinks.fromJson(Map<String, dynamic> json) => UserLinks(
        self: json["self"]??'',
        html: json["html"]??'',
        photos: json["photos"]??'',
        likes: json["likes"]??'',
        portfolio: json["portfolio"]??'',
        following: json["following"]??'',
        followers: json["followers"]??'',
      );

  Map<String, dynamic> toJson() => {
        "self": self,
        "html": html,
        "photos": photos,
        "likes": likes,
        "portfolio": portfolio,
        "following": following,
        "followers": followers,
      };
}

class ProfileImage {
  ProfileImage({
    required this.small,
    required this.medium,
    required this.large,
  });

  final String small;
  final String medium;
  final String large;

  factory ProfileImage.fromJson(Map<String, dynamic> json) => ProfileImage(
        small: json["small"]??'',
        medium: json["medium"]??'',
        large: json["large"]??'',
      );

  Map<String, dynamic> toJson() => {
        "small": small,
        "medium": medium,
        "large": large,
      };
}

class Social {
  Social({
    required this.instagramUsername,
    required this.portfolioUrl,
    required this.twitterUsername,
    required this.paypalEmail,
  });

  final String instagramUsername;
  final String portfolioUrl;
  final String twitterUsername;
  final dynamic paypalEmail;

  factory Social.fromJson(Map<String, dynamic> json) => Social(
        instagramUsername: json["instagram_username"]??'',
        portfolioUrl:
            json["portfolio_url"] ?? '',
        twitterUsername:
             json["twitter_username"] ??'',
        paypalEmail: json["paypal_email"]??'',
      );

  Map<String, dynamic> toJson() => {
        "instagram_username":
            instagramUsername,
        "portfolio_url": portfolioUrl,
        "twitter_username": twitterUsername,
        "paypal_email": paypalEmail,
      };
}

class TopicSubmissions {
  TopicSubmissions();

  factory TopicSubmissions.fromJson(Map<String, dynamic> json) =>
      TopicSubmissions();

  Map<String, dynamic> toJson() => {};
}

class Urls {
  Urls({
    required this.raw,
    required this.full,
    required this.regular,
    required this.small,
    required this.thumb,
    required this.smallS3,
  });

  final String raw;
  final String full;
  final String regular;
  final String small;
  final String thumb;
  final String smallS3;

  factory Urls.fromJson(Map<String, dynamic> json) => Urls(
        raw: json["raw"]??"",
        full: json["full"]??'',
        regular: json["regular"]??'',
        small: json["small"]??'',
        thumb: json["thumb"]??'',
        smallS3: json["small_s3"]??'',
      );

  Map<String, dynamic> toJson() => {
        "raw": raw,
        "full": full,
        "regular": regular,
        "small": small,
        "thumb": thumb,
        "small_s3": smallS3,
      };
}
