class ImageModel {
  String? id;
  String? slug;
  Map<String, dynamic>? alternativeSlugs;
  String? createdAt;
  String? updatedAt;
  String? promotedAt;
  int? width;
  int? height;
  String? color;
  String? blurHash;
  String? description;
  String? altDescription;
  List<dynamic>? breadcrumbs;
  Urls? urls;
  Links? links;
  int? likes;
  bool? likedByUser;
  List<dynamic>? currentUserCollections;
  Sponsorship? sponsorship;
  Map<String, dynamic>? topicSubmissions;
  String? assetType;
  User? user;

  ImageModel({
    this.id,
    this.slug,
    this.alternativeSlugs,
    this.createdAt,
    this.updatedAt,
    this.promotedAt,
    this.width,
    this.height,
    this.color,
    this.blurHash,
    this.description,
    this.altDescription,
    this.breadcrumbs,
    this.urls,
    this.links,
    this.likes,
    this.likedByUser,
    this.currentUserCollections,
    this.sponsorship,
    this.topicSubmissions,
    this.assetType,
    this.user,
  });

  factory ImageModel.fromJson(Map<String, dynamic> json) => ImageModel(
        id: json['id'] as String?,
        slug: json['slug'] as String?,
        alternativeSlugs: json['alternative_slugs'] as Map<String, dynamic>?,
        createdAt: json['created_at'] as String?,
        updatedAt: json['updated_at'] as String?,
        promotedAt: json['promoted_at'] as String?,
        width: json['width'] as int?,
        height: json['height'] as int?,
        color: json['color'] as String?,
        blurHash: json['blur_hash'] as String?,
        description: json['description'] as String?,
        altDescription: json['alt_description'] as String?,
        breadcrumbs: json['breadcrumbs'] as List<dynamic>?,
        urls: json['urls'] != null ? Urls.fromJson(json['urls']) : null,
        links: json['links'] != null ? Links.fromJson(json['links']) : null,
        likes: json['likes'] as int?,
        likedByUser: json['liked_by_user'] as bool?,
        currentUserCollections: json['current_user_collections'] as List<dynamic>?,
        sponsorship: json['sponsorship'] != null
            ? Sponsorship.fromJson(json['sponsorship'])
            : null,
        topicSubmissions: json['topic_submissions'] as Map<String, dynamic>?,
        assetType: json['asset_type'] as String?,
        user: json['user'] != null ? User.fromJson(json['user']) : null,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'slug': slug,
        'alternative_slugs': alternativeSlugs,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'promoted_at': promotedAt,
        'width': width,
        'height': height,
        'color': color,
        'blur_hash': blurHash,
        'description': description,
        'alt_description': altDescription,
        'breadcrumbs': breadcrumbs,
        'urls': urls?.toJson(),
        'links': links?.toJson(),
        'likes': likes,
        'liked_by_user': likedByUser,
        'current_user_collections': currentUserCollections,
        'sponsorship': sponsorship?.toJson(),
        'topic_submissions': topicSubmissions,
        'asset_type': assetType,
        'user': user?.toJson(),
      };
}

class Urls {
  String? raw;
  String? full;
  String? regular;
  String? small;
  String? thumb;
  String? smallS3;

  Urls({
    this.raw,
    this.full,
    this.regular,
    this.small,
    this.thumb,
    this.smallS3,
  });

  factory Urls.fromJson(Map<String, dynamic> json) => Urls(
        raw: json['raw'] as String?,
        full: json['full'] as String?,
        regular: json['regular'] as String?,
        small: json['small'] as String?,
        thumb: json['thumb'] as String?,
        smallS3: json['small_s3'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'raw': raw,
        'full': full,
        'regular': regular,
        'small': small,
        'thumb': thumb,
        'small_s3': smallS3,
      };
}

class Links {
  String? self;
  String? html;
  String? download;
  String? downloadLocation;

  Links({
    this.self,
    this.html,
    this.download,
    this.downloadLocation,
  });

  factory Links.fromJson(Map<String, dynamic> json) => Links(
        self: json['self'] as String?,
        html: json['html'] as String?,
        download: json['download'] as String?,
        downloadLocation: json['download_location'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'self': self,
        'html': html,
        'download': download,
        'download_location': downloadLocation,
      };
}

class Sponsorship {
  List<dynamic>? impressionUrls;
  String? tagline;
  String? taglineUrl;
  User? sponsor;

  Sponsorship({
    this.impressionUrls,
    this.tagline,
    this.taglineUrl,
    this.sponsor,
  });

  factory Sponsorship.fromJson(Map<String, dynamic> json) => Sponsorship(
        impressionUrls: json['impression_urls'] as List<dynamic>?,
        tagline: json['tagline'] as String?,
        taglineUrl: json['tagline_url'] as String?,
        sponsor: json['sponsor'] != null ? User.fromJson(json['sponsor']) : null,
      );

  Map<String, dynamic> toJson() => {
        'impression_urls': impressionUrls,
        'tagline': tagline,
        'tagline_url': taglineUrl,
        'sponsor': sponsor?.toJson(),
      };
}

class User {
  String? id;
  String? username;
  String? name;
  String? firstName;
  String? lastName;
  String? twitterUsername;
  String? portfolioUrl;
  String? bio;
  String? location;
  Map<String, dynamic>? links;
  ProfileImage? profileImage;
  String? instagramUsername;
  int? totalCollections;
  int? totalLikes;
  int? totalPhotos;
  int? totalPromotedPhotos;
  int? totalIllustrations;
  int? totalPromotedIllustrations;
  bool? acceptedTos;
  bool? forHire;
  Map<String, dynamic>? social;

  User({
    this.id,
    this.username,
    this.name,
    this.firstName,
    this.lastName,
    this.twitterUsername,
    this.portfolioUrl,
    this.bio,
    this.location,
    this.links,
    this.profileImage,
    this.instagramUsername,
    this.totalCollections,
    this.totalLikes,
    this.totalPhotos,
    this.totalPromotedPhotos,
    this.totalIllustrations,
    this.totalPromotedIllustrations,
    this.acceptedTos,
    this.forHire,
    this.social,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'] as String?,
        username: json['username'] as String?,
        name: json['name'] as String?,
        firstName: json['first_name'] as String?,
        lastName: json['last_name'] as String?,
        twitterUsername: json['twitter_username'] as String?,
        portfolioUrl: json['portfolio_url'] as String?,
        bio: json['bio'] as String?,
        location: json['location'] as String?,
        links: json['links'] as Map<String, dynamic>?,
        profileImage: json['profile_image'] != null
            ? ProfileImage.fromJson(json['profile_image'])
            : null,
        instagramUsername: json['instagram_username'] as String?,
        totalCollections: json['total_collections'] as int?,
        totalLikes: json['total_likes'] as int?,
        totalPhotos: json['total_photos'] as int?,
        totalPromotedPhotos: json['total_promoted_photos'] as int?,
        totalIllustrations: json['total_illustrations'] as int?,
        totalPromotedIllustrations: json['total_promoted_illustrations'] as int?,
        acceptedTos: json['accepted_tos'] as bool?,
        forHire: json['for_hire'] as bool?,
        social: json['social'] as Map<String, dynamic>?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'username': username,
        'name': name,
        'first_name': firstName,
        'last_name': lastName,
        'twitter_username': twitterUsername,
        'portfolio_url': portfolioUrl,
        'bio': bio,
        'location': location,
        'links': links,
        'profile_image': profileImage?.toJson(),
        'instagram_username': instagramUsername,
        'total_collections': totalCollections,
        'total_likes': totalLikes,
        'total_photos': totalPhotos,
        'total_promoted_photos': totalPromotedPhotos,
        'total_illustrations': totalIllustrations,
        'total_promoted_illustrations': totalPromotedIllustrations,
        'accepted_tos': acceptedTos,
        'for_hire': forHire,
        'social': social,
      };
}

class ProfileImage {
  String? small;
  String? medium;
  String? large;

  ProfileImage({
    this.small,
    this.medium,
    this.large,
  });

  factory ProfileImage.fromJson(Map<String, dynamic> json) => ProfileImage(
        small: json['small'] as String?,
        medium: json['medium'] as String?,
        large: json['large'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'small': small,
        'medium': medium,
        'large': large,
      };
}
