// This macro generates a band area ROI of user-defined thickness around each
// cell body ROI present in the ROI Manager and adds it to the ROI Manager.
// It then deletes the original cell body ROIs

// There should be one open image (thresholded image) and the corresponding ROIs

n = roiManager("count");
if(nImages==0 || n==0)
	exit("ERROR: There should be one open image and the corresponding ROIs in the ROI Manager");

for (i = 0; i < n; i++) {
    roiManager("select", i);
    run("Make Band...", "band=35");
    roiManager("Add");
}
roiManager("select", Array.getSequence(n));
roiManager("Delete");