import 'package:book_summary_app/features/home_screen/domain/entities/link_entity.dart';
import 'package:book_summary_app/features/home_screen/domain/entities/primary_affiliate_link_entity.dart';

class LinksEntity {
  final String typename;
  final PrimaryAffiliateLinkEntity primaryAffiliateLink;
  final List<LinkEntity> secondaryAffiliateLinks;
  final List<dynamic> libraryLinks;
  final String overflowPageUrl;
  final LinkEntity seriesLink;

  const LinksEntity({
    required this.typename,
    required this.primaryAffiliateLink,
    required this.secondaryAffiliateLinks,
    required this.libraryLinks,
    required this.overflowPageUrl,
    required this.seriesLink,
  });
}
