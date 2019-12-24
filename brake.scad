thickness=1;
depth=46;
attachmentUpperWidth=7;
attachmentLowerHeight=20;
attachmentToTailWidth=155;
attachmentToTailHeight=26;
attachmentToElevationEndWidth=50;
translate([0,attachmentLowerHeight,0]) {
    cube([attachmentUpperWidth,thickness,depth]);
}
translate([attachmentUpperWidth+1.1,attachmentLowerHeight+1,0]) {
    cylinder($fn = 100,h = depth, r1 = 1.5, r2 = 1.5, center = false);
}
translate([attachmentUpperWidth,0,0]) {
    cube([thickness,attachmentLowerHeight,depth]);
}
translate([attachmentUpperWidth,attachmentLowerHeight,0]) {
    lol=atan(attachmentToTailHeight/attachmentToElevationEndWidth);
    rotate(a=lol, v=[0,0,1])
    cube([sqrt(pow(attachmentToElevationEndWidth,2)+pow(attachmentToTailHeight,2)),thickness,depth]);
}
translate([attachmentUpperWidth+attachmentToElevationEndWidth-0.45,attachmentLowerHeight+attachmentToTailHeight,0]) {
    cube([attachmentToTailWidth-attachmentToElevationEndWidth,thickness,depth]);
}
echo(version=version());
