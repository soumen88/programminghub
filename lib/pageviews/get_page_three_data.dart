import 'package:programminghub/pageviews/page_three_model.dart';

class GetPageThreeData{
  List<PageThreeModel> getData(){

    List<PageThreeModel> imagesDataList = [];

    PageThreeModel firstImage = PageThreeModel(
        imageId: 1,
        imageUrl: "https://fastly.picsum.photos/id/20/3670/2462.jpg?hmac=CmQ0ln-k5ZqkdtLvVO23LjVAEabZQx2wOaT4pyeG10I",
        title: "Graph Page",
        description: "Pie chart Graph along with phone."
    );

    PageThreeModel secondImage = PageThreeModel(
        imageId: 2,
        imageUrl: "https://fastly.picsum.photos/id/21/3008/2008.jpg?hmac=T8DSVNvP-QldCew7WD4jj_S3mWwxZPqdF0CNPksSko4",
        title: "Female Shoes",
        description: "Shoes that you can wear on parties."
    );

    PageThreeModel thirdImage = PageThreeModel(
        imageId: 3,
        imageUrl: "https://fastly.picsum.photos/id/22/4434/3729.jpg?hmac=fjZdkSMZJNFgsoDh8Qo5zdA_nSGUAWvKLyyqmEt2xs0",
        title: "Man Crossing",
        description: "Man crossing the road in late evening."
    );

    PageThreeModel fourthImage = PageThreeModel(
        imageId: 4,
        imageUrl: "https://fastly.picsum.photos/id/26/4209/2769.jpg?hmac=vcInmowFvPCyKGtV7Vfh7zWcA_Z0kStrPDW3ppP0iGI",
        title: "Mens accessories",
        description: "Imagine these accessories on your dressing table."
    );

    imagesDataList.add(firstImage);
    imagesDataList.add(secondImage);
    imagesDataList.add(thirdImage);
    imagesDataList.add(fourthImage);

    return imagesDataList;

  }
}