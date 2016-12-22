module drawBasicShape(x1, y1, x2, y2, width)
{
	length = sqrt((x1-x2)*(x1-x2) + (y1-y2)*(y1-y2));
	if (width!=0.0) {
		square(size = [width, length], center = false);
		translate([width/2.0, 0, 0]) circle(d=width);
		translate([width/2.0, length, 0]) circle(d=width);
	}
}

module translateAndRotate(x1, y1, x2, y2, width)
{
	if (width != 0.0) {
		angle = atan((y2-y1)/(x2-x1)) +270;
		if (x2>=x1) {
			translate([x1, y1, 0.0]) rotate([0.0, 0.0, angle]) translate([-width/2.0, 0.0, 0.0]) scale([1.0, 1.0, 1.0]) drawBasicShape(x1, y1, x2, y2, width);
		}
		else {
			translate([x1, y1, 0.0]) rotate([0.0, 0.0, angle+180]) translate([-width/2.0, 0.0, 0.0]) scale([1.0, 1.0, 1.0]) drawBasicShape(x1, y1, x2, y2, width);		}
	}
}

$fn=50;

points18 = [
[75.77800000, 95.77800000, 0.00000000],
[124.22200000, 95.77800000, 0.37999672],
[124.22200000, 104.22200000, 0.37997788],
[75.77800000, 104.22200000, 0.37999548],
[75.77800000, 95.83800000, 0.37998140],
[75.48400000, 95.48400000, 0.00000000],
[124.51600000, 95.48400000, 0.37999746],
[124.51600000, 104.51600000, 0.37998977],
[75.48400000, 104.51600000, 0.37999868],
[75.48400000, 95.54400000, 0.37998644],
[75.19000000, 95.19000000, 0.00000000],
[124.81000000, 95.19000000, 0.38000060],
[124.81000000, 104.81000000, 0.38000021],
[75.19000000, 104.81000000, 0.37999939],
[75.19000000, 95.25000000, 0.38000344],
[75.53600000, 95.39000000, 0.00000000],
[75.94600000, 103.88900000, 0.00000000],
[76.11100000, 104.05400000, 0.37935605],
[76.52800000, 104.05400000, 0.38015610],
[75.94600000, 103.47200000, 0.37989934],
[75.94600000, 103.05500000, 0.38001190],
[76.94500000, 104.05400000, 0.37994651],
[77.36200000, 104.05400000, 0.38015610],
[75.94600000, 102.63800000, 0.37996589],
[75.94600000, 102.22100000, 0.38015610],
[77.77900000, 104.05400000, 0.37999966],
[78.19600000, 104.05400000, 0.38001190],
[75.94600000, 101.80400000, 0.38000201],
[75.94600000, 101.38700000, 0.38015610],
[78.61300000, 104.05400000, 0.38000362],
[79.03000000, 104.05400000, 0.38015610],
[75.94600000, 100.97000000, 0.38001859],
[75.94600000, 100.55300000, 0.38001190],
[79.44700000, 104.05400000, 0.38001785],
[79.86400000, 104.05400000, 0.38015610],
[75.94600000, 100.13600000, 0.38001726],
[75.94600000, 99.71900000, 0.38001190],
[80.28100000, 104.05400000, 0.38003640],
[80.69800000, 104.05400000, 0.38001190],
[75.94600000, 99.30200000, 0.38002534],
[75.94600000, 98.88500000, 0.38001190],
[81.11500000, 104.05400000, 0.38003252],
[81.53300000, 104.05400000, 0.37930814],
[75.94600000, 98.46700000, 0.37997836],
[75.94600000, 98.05000000, 0.38015610],
[81.95000000, 104.05400000, 0.37998072],
[82.36700000, 104.05400000, 0.38001190],
[75.94600000, 97.63300000, 0.37998939],
[75.94600000, 97.21600000, 0.38001190],
[82.78400000, 104.05400000, 0.37999079],
[83.20100000, 104.05400000, 0.38001190],
[75.94600000, 96.79900000, 0.37999789],
[75.94600000, 96.38200000, 0.38001190],
[83.61800000, 104.05400000, 0.37999868],
[84.03500000, 104.05400000, 0.38001190],
[75.95600000, 95.97600000, 0.38000275],
[76.34400000, 95.94600000, 0.37958004],
[84.45200000, 104.05400000, 0.38000229],
[84.86900000, 104.05400000, 0.38001190],
[76.76100000, 95.94600000, 0.38000754],
[77.17800000, 95.94600000, 0.38001190],
[85.28600000, 104.05400000, 0.38000229],
[85.70300000, 104.05400000, 0.38001190],
[77.59500000, 95.94600000, 0.38000754],
[78.01200000, 95.94600000, 0.38001190],
[86.12000000, 104.05400000, 0.38000229],
[86.53700000, 104.05400000, 0.38015610],
[78.42900000, 95.94600000, 0.38000229],
[78.84600000, 95.94600000, 0.38001190],
[86.95400000, 104.05400000, 0.38000754],
[87.37100000, 104.05400000, 0.38001190],
[79.26300000, 95.94600000, 0.38000229],
[79.68000000, 95.94600000, 0.38001190],
[87.78900000, 104.05400000, 0.37998940],
[88.20600000, 104.05400000, 0.38001190],
[80.09700000, 95.94600000, 0.37998415],
[80.51500000, 95.94600000, 0.37945200],
[88.62300000, 104.05400000, 0.38000229],
[89.04000000, 104.05400000, 0.38001190],
[80.93200000, 95.94600000, 0.38000754],
[81.34900000, 95.94600000, 0.38001190],
[89.45700000, 104.05400000, 0.38000229],
[89.87400000, 104.05400000, 0.38001190],
[81.76600000, 95.94600000, 0.38000754],
[82.18300000, 95.94600000, 0.38001190],
[90.29100000, 104.05400000, 0.38000229],
[90.70800000, 104.05400000, 0.38015610],
[82.60000000, 95.94600000, 0.38000229],
[83.01700000, 95.94600000, 0.38001190],
[91.12500000, 104.05400000, 0.38000754],
[91.54200000, 104.05400000, 0.38001190],
[83.43400000, 95.94600000, 0.38000229],
[83.85100000, 95.94600000, 0.38001190],
[91.95900000, 104.05400000, 0.38000754],
[92.37600000, 104.05400000, 0.38001190],
[84.26800000, 95.94600000, 0.38000229],
[84.68500000, 95.94600000, 0.38015610],
[92.79300000, 104.05400000, 0.38000229],
[93.21000000, 104.05400000, 0.38001190],
[85.10200000, 95.94600000, 0.38000754],
[85.51900000, 95.94600000, 0.38001190],
[93.62700000, 104.05400000, 0.38000229],
[94.04400000, 104.05400000, 0.38001190],
[85.93600000, 95.94600000, 0.38000754],
[86.35300000, 95.94600000, 0.38001190],
[94.46200000, 104.05400000, 0.37998415],
[94.87900000, 104.05400000, 0.38015610],
[86.77000000, 95.94600000, 0.37998415],
[87.18800000, 95.94600000, 0.37930814],
[95.29600000, 104.05400000, 0.38000754],
[95.71300000, 104.05400000, 0.38001190],
[87.60500000, 95.94600000, 0.38000229],
[88.02200000, 95.94600000, 0.38001190],
[96.13000000, 104.05400000, 0.38000754],
[96.54700000, 104.05400000, 0.38001190],
[88.43900000, 95.94600000, 0.38000229],
[88.85600000, 95.94600000, 0.38015610],
[96.96400000, 104.05400000, 0.38000229],
[97.38100000, 104.05400000, 0.38001190],
[89.27300000, 95.94600000, 0.38000754],
[89.69000000, 95.94600000, 0.38001190],
[97.79800000, 104.05400000, 0.38000229],
[98.21500000, 104.05400000, 0.38001190],
[90.10700000, 95.94600000, 0.38000754],
[90.52400000, 95.94600000, 0.38001190],
[98.63200000, 104.05400000, 0.38000229],
[99.04900000, 104.05400000, 0.38015610],
[90.94100000, 95.94600000, 0.38000229],
[91.35800000, 95.94600000, 0.38001190],
[99.46600000, 104.05400000, 0.38000754],
[99.88300000, 104.05400000, 0.38001190],
[91.77500000, 95.94600000, 0.38000229],
[92.19200000, 95.94600000, 0.38001190],
[100.30000000, 104.05400000, 0.38000754],
[100.71800000, 104.05400000, 0.37930814],
[92.60900000, 95.94600000, 0.37998415],
[93.02600000, 95.94600000, 0.38015610],
[101.13500000, 104.05400000, 0.37998415],
[101.55200000, 104.05400000, 0.38001190],
[93.44400000, 95.94600000, 0.38000229],
[93.86100000, 95.94600000, 0.38015610],
[101.96900000, 104.05400000, 0.38000229],
[102.38600000, 104.05400000, 0.38001190],
[94.27800000, 95.94600000, 0.38000754],
[94.69500000, 95.94600000, 0.38001190],
[102.80300000, 104.05400000, 0.38000229],
[103.22000000, 104.05400000, 0.38001190],
[95.11200000, 95.94600000, 0.38000754],
[95.52900000, 95.94600000, 0.38001190],
[103.63700000, 104.05400000, 0.38000229],
[104.05400000, 104.05400000, 0.38015610],
[95.94600000, 95.94600000, 0.38000229],
[96.36300000, 95.94600000, 0.38001190],
[104.47100000, 104.05400000, 0.38000754],
[104.88800000, 104.05400000, 0.38001190],
[96.78000000, 95.94600000, 0.38000229],
[97.19700000, 95.94600000, 0.38001190],
[105.30500000, 104.05400000, 0.38000754],
[105.72200000, 104.05400000, 0.38001190],
[97.61400000, 95.94600000, 0.38000229],
[98.03100000, 95.94600000, 0.38015610],
[106.13900000, 104.05400000, 0.38000229],
[106.55600000, 104.05400000, 0.38001190],
[98.44800000, 95.94600000, 0.38000754],
[98.86500000, 95.94600000, 0.38001190],
[106.97300000, 104.05400000, 0.38000229],
[107.39100000, 104.05400000, 0.37930814],
[99.28200000, 95.94600000, 0.37998940],
[99.69900000, 95.94600000, 0.38001190],
[107.80800000, 104.05400000, 0.37998415],
[108.22500000, 104.05400000, 0.38015610],
[100.11700000, 95.94600000, 0.38000229],
[100.53400000, 95.94600000, 0.38001190],
[108.64200000, 104.05400000, 0.38000754],
[109.05900000, 104.05400000, 0.38001190],
[100.95100000, 95.94600000, 0.38000229],
[101.36800000, 95.94600000, 0.38001190],
[109.47600000, 104.05400000, 0.38000754],
[109.89300000, 104.05400000, 0.38001190],
[101.78500000, 95.94600000, 0.38000229],
[102.20200000, 95.94600000, 0.38015610],
[110.31000000, 104.05400000, 0.38000229],
[110.72700000, 104.05400000, 0.38001190],
[102.61900000, 95.94600000, 0.38000754],
[103.03600000, 95.94600000, 0.38001190],
[111.14400000, 104.05400000, 0.38000229],
[111.56100000, 104.05400000, 0.38001190],
[103.45300000, 95.94600000, 0.38000754],
[103.87000000, 95.94600000, 0.38001190],
[111.97800000, 104.05400000, 0.38000229],
[112.39500000, 104.05400000, 0.38015610],
[104.28700000, 95.94600000, 0.38000229],
[104.70400000, 95.94600000, 0.38001190],
[112.81200000, 104.05400000, 0.38000754],
[113.22900000, 104.05400000, 0.38001190],
[105.12100000, 95.94600000, 0.38000229],
[105.53800000, 95.94600000, 0.38001190],
[113.64700000, 104.05400000, 0.37998940],
[114.06400000, 104.05400000, 0.38001190],
[105.95500000, 95.94600000, 0.37998415],
[106.37300000, 95.94600000, 0.37945200],
[114.48100000, 104.05400000, 0.38000229],
[114.89800000, 104.05400000, 0.38001190],
[106.79000000, 95.94600000, 0.38000229],
[107.20700000, 95.94600000, 0.38015610],
[115.31500000, 104.05400000, 0.38000229],
[115.73200000, 104.05400000, 0.38001190],
[107.62400000, 95.94600000, 0.38000754],
[108.04100000, 95.94600000, 0.38001190],
[116.14900000, 104.05400000, 0.38000229],
[116.56600000, 104.05400000, 0.38001190],
[108.45800000, 95.94600000, 0.38000754],
[108.87500000, 95.94600000, 0.38001190],
[116.98300000, 104.05400000, 0.38000229],
[117.40000000, 104.05400000, 0.38015610],
[109.29200000, 95.94600000, 0.38000229],
[109.70900000, 95.94600000, 0.38001190],
[117.81700000, 104.05400000, 0.38000754],
[118.23400000, 104.05400000, 0.38001190],
[110.12600000, 95.94600000, 0.38000229],
[110.54300000, 95.94600000, 0.38001190],
[118.65100000, 104.05400000, 0.38000754],
[119.06800000, 104.05400000, 0.38001190],
[110.96000000, 95.94600000, 0.38000229],
[111.37700000, 95.94600000, 0.38015610],
[119.48500000, 104.05400000, 0.38000229],
[119.90200000, 104.05400000, 0.38001190],
[111.79400000, 95.94600000, 0.38000754],
[112.21100000, 95.94600000, 0.38001190],
[120.32000000, 104.05400000, 0.37998415],
[120.73700000, 104.05400000, 0.38001190],
[112.62900000, 95.94600000, 0.38000754],
[113.04600000, 95.94600000, 0.38001190],
[121.15400000, 104.05400000, 0.38000229],
[121.57100000, 104.05400000, 0.38015610],
[113.46300000, 95.94600000, 0.38000229],
[113.88000000, 95.94600000, 0.38001190],
[121.98800000, 104.05400000, 0.38000754],
[122.40500000, 104.05400000, 0.38001190],
[114.29700000, 95.94600000, 0.38000229],
[114.71400000, 95.94600000, 0.38001190],
[122.82200000, 104.05400000, 0.38000754],
[123.23900000, 104.05400000, 0.38001190],
[115.13100000, 95.94600000, 0.38000229],
[115.54800000, 95.94600000, 0.38015610],
[123.65600000, 104.05400000, 0.38000229],
[124.04400000, 104.02500000, 0.37963728],
[115.96500000, 95.94600000, 0.37998455],
[116.38200000, 95.94600000, 0.38001190],
[124.05400000, 103.61800000, 0.37999868],
[124.05400000, 103.20100000, 0.38015610],
[116.79900000, 95.94600000, 0.37999203],
[117.21600000, 95.94600000, 0.38001190],
[124.05400000, 102.78400000, 0.37999701],
[124.05400000, 102.36700000, 0.38001190],
[117.63300000, 95.94600000, 0.37998939],
[118.05000000, 95.94600000, 0.38001190],
[124.05400000, 101.95000000, 0.37998780],
[124.05400000, 101.53300000, 0.38001190],
[118.46700000, 95.94600000, 0.37998597],
[118.88400000, 95.94600000, 0.38001190],
[124.05400000, 101.11600000, 0.37997562],
[124.05400000, 100.69800000, 0.37930814],
[119.30200000, 95.94600000, 0.38003429],
[119.71900000, 95.94600000, 0.38001190],
[124.05400000, 100.28100000, 0.38003640],
[124.05400000, 99.86400000, 0.38001190],
[120.13600000, 95.94600000, 0.38002811],
[120.55300000, 95.94600000, 0.38001190],
[124.05400000, 99.44700000, 0.38002999],
[124.05400000, 99.03000000, 0.38001190],
[120.97000000, 95.94600000, 0.38001859],
[121.38700000, 95.94600000, 0.38015610],
[124.05400000, 98.61300000, 0.38001957],
[124.05400000, 98.19600000, 0.38001190],
[121.80400000, 95.94600000, 0.38002091],
[122.22100000, 95.94600000, 0.38001190],
[124.05400000, 97.77900000, 0.37999966],
[124.05400000, 97.36200000, 0.38015610],
[122.63800000, 95.94600000, 0.37999592],
[123.05500000, 95.94600000, 0.38001190],
[124.05400000, 96.94500000, 0.37998907],
[124.05400000, 96.52800000, 0.38001190],
[123.47200000, 95.94600000, 0.37997240],
[123.88900000, 95.94600000, 0.38001190],
[124.05400000, 96.11100000, 0.37961375],
];

translate([0.0, 0.0, 7.60000000]) {
	linear_extrude(height = 0.40400000, center = false, convexity = 10, twist = 0) {
		union() {
			for( i=[0:len(points18)-2] ){ 
				x1 = points18[i][0];
				y1 = points18[i][1];
				x2 = points18[i+1][0];
				y2 = points18[i+1][1];
				width = points18[i+1][2];
				translateAndRotate(x1, y1, x2, y2, width);
			}
		}
	}
}
