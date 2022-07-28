//
//  ViewController.m
//  EntreGaudium
//
//  Created by Vinícius Henriques on 07/02/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    double lat = -22.90414;
    double lng = -43.17521;
    
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:lat
                                                              longitude:lng
                                                                   zoom:15];
    GMSMapView *mapView = [GMSMapView mapWithFrame:self.view.frame camera:camera];
    mapView.myLocationEnabled = YES;
    [self.mapView addSubview:mapView];

    // Creates a marker in the center of the map.
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = CLLocationCoordinate2DMake(lat, lng);
    [marker setIcon:[UIImage imageNamed:@"pin_user"]];
    marker.map = mapView;
}


@end
