//
//  AppResult.m
//  NSURLSessionPlayground
//
//  Created by Caleb Hicks on 5/26/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "App.h"

@implementation App

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    
//    {
//        advisories =     (
//        );
//        artistId = 284417353;
//        artistName = Apple;
//        artistViewUrl = "https://itunes.apple.com/us/artist/apple/id284417353?mt=12&uo=4";
//        artworkUrl100 = "http://is3.mzstatic.com/image/pf/us/r30/Purple5/v4/45/30/6b/45306b73-dcd2-ee0d-7cd5-3d51b4bd4137/mzl.phifdmrt.png";
//        artworkUrl512 = "http://is3.mzstatic.com/image/pf/us/r30/Purple5/v4/45/30/6b/45306b73-dcd2-ee0d-7cd5-3d51b4bd4137/mzl.phifdmrt.png";
//        artworkUrl60 = "http://is1.mzstatic.com/image/pf/us/r30/Purple7/v4/2d/74/59/2d74595b-03ee-5919-fcf0-bcf6433a8fa8/AppIcon60x60_U00402x.png";
//        averageUserRating = "3.5";
//        averageUserRatingForCurrentVersion = "4.5";
//        bundleId = "com.apple.store.Jolly";
//        contentAdvisoryRating = "4+";
//        currency = USD;
//        description = "Shop for Apple products and accessories, and get the most from your visits to the Apple Retail Store. Start your order on one device and finish it on another. Get items shipped to your door or choose to pick them up in store. Browse trending products. Read reviews for hundreds of accessories. Find your nearest Apple Retail Store and check out upcoming events. And make reservations for the Genius Bar and workshops. All from your iPad, iPhone, or iPod touch. \n\nAdditional features for iPhone:\n- Choose your favorite Apple Watch models by clicking the heart icon. They\U2019ll be saved in your account so you can compare them.\n- Use Apple Pay and check out with a single touch.\n- Check your iPhone upgrade pricing and easily purchase a new one (U.S. only).\n- While in an Apple Retail Store, quickly purchase accessories on your own with EasyPay (available in select countries).\n- Based on your location in the store, receive helpful information and fast access to store services on your iPhone Lock screen (U.S. only).";
//        features =     (
//                        iosUniversal
//                        );
//        fileSizeBytes = 22324247;
//        formattedPrice = Free;
//        genreIds =     (
//                        6012
//                        );
//        genres =     (
//                      Lifestyle
//                      );
//        ipadScreenshotUrls =     (
//                                  "http://a4.mzstatic.com/us/r30/Purple1/v4/49/34/97/49349775-d607-c6c0-109e-cde232e2c194/screen480x480.jpeg",
//                                  "http://a5.mzstatic.com/us/r30/Purple5/v4/66/cf/7a/66cf7a8c-ec36-0a81-b23a-bf3f6562a485/screen480x480.jpeg",
//                                  "http://a2.mzstatic.com/us/r30/Purple7/v4/2a/34/3d/2a343dcd-7df9-815c-631f-33ec37cbd323/screen480x480.jpeg",
//                                  "http://a1.mzstatic.com/us/r30/Purple5/v4/1e/90/9d/1e909d4b-e734-07a8-bd87-a89577235410/screen480x480.jpeg",
//                                  "http://a2.mzstatic.com/us/r30/Purple7/v4/33/ab/e6/33abe646-3ddb-fdb3-c76b-2d665af75c76/screen480x480.jpeg"
//                                  );
//        isGameCenterEnabled = 0;
//        kind = software;
//        languageCodesISO2A =     (
//                                  NB,
//                                  CS,
//                                  NL,
//                                  EN,
//                                  FR,
//                                  DE,
//                                  HU,
//                                  IT,
//                                  JA,
//                                  KO,
//                                  PL,
//                                  PT,
//                                  RU,
//                                  ZH,
//                                  ES,
//                                  SV,
//                                  ZH,
//                                  TR
//                                  );
//        minimumOsVersion = "7.0";
//        price = 0;
//        primaryGenreId = 6012;
//        primaryGenreName = Lifestyle;
//        releaseDate = "2010-06-15T11:31:33Z";
//        releaseNotes = "- Use Touch ID to view orders, access EasyPay receipts, and make reservations at an Apple Store.\n- Support for two-step verification, giving you extra security for your Apple ID.\n- Apple Store app now available in Turkey, Brazil, Mexico, Singapore, New Zealand, Taiwan, Malaysia, Philippines, United Arab Emirates, Belgium, Denmark, Finland, Austria, Ireland, Luxembourg, Norway, Czech Republic, Hungary, Poland and Portugal.";
//        screenshotUrls =     (
//                              "http://a4.mzstatic.com/us/r30/Purple1/v4/d9/67/24/d967240d-de53-c048-52d2-4731cb864828/screen1136x1136.jpeg",
//                              "http://a2.mzstatic.com/us/r30/Purple7/v4/3f/bf/f1/3fbff1a0-47b2-c9d7-e412-f64945be0dbf/screen1136x1136.jpeg",
//                              "http://a5.mzstatic.com/us/r30/Purple5/v4/fe/dd/4f/fedd4f8d-4417-9716-1fe4-0d9296ab8a5f/screen1136x1136.jpeg",
//                              "http://a5.mzstatic.com/us/r30/Purple5/v4/14/e4/09/14e40943-9e0e-ce51-6e75-d72983d2a30a/screen1136x1136.jpeg",
//                              "http://a3.mzstatic.com/us/r30/Purple5/v4/e2/da/12/e2da12e7-d83b-8063-ee83-42eb23b069ce/screen1136x1136.jpeg"
//                              );
//        sellerName = "Apple Inc.";
//        supportedDevices =     (
//                                iPhone6Plus,
//                                iPhone5,
//                                iPadMini4G,
//                                iPadThirdGen,
//                                iPadMini,
//                                iPadThirdGen4G,
//                                iPad2Wifi,
//                                iPad23G,
//                                iPhone5c,
//                                iPhone5s,
//                                iPadFourthGen,
//                                iPadFourthGen4G,
//                                iPhone4S,
//                                iPhone6,
//                                iPhone4,
//                                iPodTouchFifthGen
//                                );
//        trackCensoredName = "Apple Store";
//        trackContentRating = "4+";
//        trackId = 375380948;
//        trackName = "Apple Store";
//        trackViewUrl = "https://itunes.apple.com/us/app/apple-store/id375380948?mt=8&uo=4";
//        userRatingCount = 53351;
//        userRatingCountForCurrentVersion = 52;
//        version = "3.3";
//        wrapperType = software;
//    }
    
    self = [super init];
    if (self) {
        self.appName = dictionary[@"trackName"];
        self.appDescription = dictionary[@"description"];
        self.developer = dictionary[@"artistName"];
    }
    return self;
}

@end
