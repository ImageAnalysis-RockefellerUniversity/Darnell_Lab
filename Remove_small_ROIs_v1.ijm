// This macto goes through a list of ROIs and deletes the one which are smaller than 
// a user-defined area threshold
//
// There should be one open image (thresholded image) and the corresponding ROIs

n = roiManager("count");
if(nImages==0 || n==0)
	exit("ERROR: There should be one open image and the corresponding ROIs in the ROI Manager");

for (i = n; i > 0; i--) {
    roiManager("select", i-1);
    List.setMeasurements;
    area = List.getValue("Area"); 
    if(area < 100)
	    roiManager("Delete");
}
