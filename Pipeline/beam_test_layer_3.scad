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

points3 = [
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
[76.11100000, 95.94600000, 0.00000000],
[75.94600000, 96.11100000, 0.37961375],
[75.94600000, 96.52800000, 0.38001190],
[76.52800000, 95.94600000, 0.37989934],
[76.94500000, 95.94600000, 0.38001190],
[75.94600000, 96.94500000, 0.37998907],
[75.94600000, 97.36200000, 0.38001190],
[77.36200000, 95.94600000, 0.37999592],
[77.77900000, 95.94600000, 0.38001190],
[75.94600000, 97.77900000, 0.37999966],
[75.94600000, 98.19600000, 0.38001190],
[78.19600000, 95.94600000, 0.38000201],
[78.61300000, 95.94600000, 0.38015610],
[75.94600000, 98.61300000, 0.38000362],
[75.94600000, 99.03000000, 0.38015610],
[79.03000000, 95.94600000, 0.38001859],
[79.44700000, 95.94600000, 0.38001190],
[75.94600000, 99.44700000, 0.38001785],
[75.94600000, 99.86400000, 0.38015610],
[79.86400000, 95.94600000, 0.38001726],
[80.28100000, 95.94600000, 0.38015610],
[75.94600000, 100.28100000, 0.38002660],
[75.94600000, 100.69800000, 0.38001190],
[80.69800000, 95.94600000, 0.38002534],
[81.11500000, 95.94600000, 0.38001190],
[75.94600000, 101.11500000, 0.38003252],
[75.94600000, 101.53300000, 0.37930814],
[81.53300000, 95.94600000, 0.37997836],
[81.95000000, 95.94600000, 0.38015610],
[75.94600000, 101.95000000, 0.37998072],
[75.94600000, 102.36700000, 0.38001190],
[82.36700000, 95.94600000, 0.37998939],
[82.78400000, 95.94600000, 0.38001190],
[75.94600000, 102.78400000, 0.37999079],
[75.94600000, 103.20100000, 0.38001190],
[83.20100000, 95.94600000, 0.37999789],
[83.61800000, 95.94600000, 0.38001190],
[75.94600000, 103.61800000, 0.37999868],
[75.95600000, 104.02400000, 0.38033920],
[84.03500000, 95.94600000, 0.38000275],
[84.45200000, 95.94600000, 0.38001190],
[76.34400000, 104.05400000, 0.38000754],
[76.76100000, 104.05400000, 0.38001190],
[84.86900000, 95.94600000, 0.38000229],
[85.28600000, 95.94600000, 0.38015610],
[77.17800000, 104.05400000, 0.38000229],
[77.59500000, 104.05400000, 0.38001190],
[85.70300000, 95.94600000, 0.38000754],
[86.12000000, 95.94600000, 0.38001190],
[78.01200000, 104.05400000, 0.38000229],
[78.42900000, 104.05400000, 0.38001190],
[86.53700000, 95.94600000, 0.38000754],
[86.95400000, 95.94600000, 0.38001190],
[78.84600000, 104.05400000, 0.38000229],
[79.26300000, 104.05400000, 0.38015610],
[87.37100000, 95.94600000, 0.38000229],
[87.78900000, 95.94600000, 0.37930814],
[79.68000000, 104.05400000, 0.37998940],
[80.09700000, 104.05400000, 0.38001190],
[88.20600000, 95.94600000, 0.37998415],
[88.62300000, 95.94600000, 0.38001190],
[80.51500000, 104.05400000, 0.38000754],
[80.93200000, 104.05400000, 0.38001190],
[89.04000000, 95.94600000, 0.38000229],
[89.45700000, 95.94600000, 0.38015610],
[81.34900000, 104.05400000, 0.38000229],
[81.76600000, 104.05400000, 0.38001190],
[89.87400000, 95.94600000, 0.38000229],
[90.29100000, 95.94600000, 0.38015610],
[82.18300000, 104.05400000, 0.38000229],
[82.60000000, 104.05400000, 0.38001190],
[90.70800000, 95.94600000, 0.38000754],
[91.12500000, 95.94600000, 0.38001190],
[83.01700000, 104.05400000, 0.38000229],
[83.43400000, 104.05400000, 0.38015610],
[91.54200000, 95.94600000, 0.38000229],
[91.95900000, 95.94600000, 0.38001190],
[83.85100000, 104.05400000, 0.38000229],
[84.26800000, 104.05400000, 0.38015610],
[92.37600000, 95.94600000, 0.38000229],
[92.79300000, 95.94600000, 0.38001190],
[84.68500000, 104.05400000, 0.38000754],
[85.10200000, 104.05400000, 0.38001190],
[93.21000000, 95.94600000, 0.38000229],
[93.62700000, 95.94600000, 0.38001190],
[85.51900000, 104.05400000, 0.38000754],
[85.93600000, 104.05400000, 0.38001190],
[94.04400000, 95.94600000, 0.38000229],
[94.46200000, 95.94600000, 0.37945200],
[86.35300000, 104.05400000, 0.37998415],
[86.77000000, 104.05400000, 0.38001190],
[94.87900000, 95.94600000, 0.37998940],
[95.29600000, 95.94600000, 0.38001190],
[87.18800000, 104.05400000, 0.38000229],
[87.60500000, 104.05400000, 0.38001190],
[95.71300000, 95.94600000, 0.38000754],
[96.13000000, 95.94600000, 0.38001190],
[88.02200000, 104.05400000, 0.38000229],
[88.43900000, 104.05400000, 0.38015610],
[96.54700000, 95.94600000, 0.38000229],
[96.96400000, 95.94600000, 0.38001190],
[88.85600000, 104.05400000, 0.38000754],
[89.27300000, 104.05400000, 0.38001190],
[97.38100000, 95.94600000, 0.38000229],
[97.79800000, 95.94600000, 0.38001190],
[89.69000000, 104.05400000, 0.38000754],
[90.10700000, 104.05400000, 0.38001190],
[98.21500000, 95.94600000, 0.38000229],
[98.63200000, 95.94600000, 0.38015610],
[90.52400000, 104.05400000, 0.38000229],
[90.94100000, 104.05400000, 0.38001190],
[99.04900000, 95.94600000, 0.38000754],
[99.46600000, 95.94600000, 0.38001190],
[91.35800000, 104.05400000, 0.38000229],
[91.77500000, 104.05400000, 0.38001190],
[99.88300000, 95.94600000, 0.38000754],
[100.30000000, 95.94600000, 0.38001190],
[92.19200000, 104.05400000, 0.38000229],
[92.60900000, 104.05400000, 0.38015610],
[100.71800000, 95.94600000, 0.37998415],
[101.13500000, 95.94600000, 0.38001190],
[93.02600000, 104.05400000, 0.37998940],
[93.44400000, 104.05400000, 0.37930814],
[101.55200000, 95.94600000, 0.38000229],
[101.96900000, 95.94600000, 0.38001190],
[93.86100000, 104.05400000, 0.38000754],
[94.27800000, 104.05400000, 0.38001190],
[102.38600000, 95.94600000, 0.38000229],
[102.80300000, 95.94600000, 0.38015610],
[94.69500000, 104.05400000, 0.38000229],
[95.11200000, 104.05400000, 0.38001190],
[103.22000000, 95.94600000, 0.38000754],
[103.63700000, 95.94600000, 0.38001190],
[95.52900000, 104.05400000, 0.38000229],
[95.94600000, 104.05400000, 0.38001190],
[104.05400000, 95.94600000, 0.38000754],
[104.47100000, 95.94600000, 0.38001190],
[96.36300000, 104.05400000, 0.38000229],
[96.78000000, 104.05400000, 0.38015610],
[104.88800000, 95.94600000, 0.38000229],
[105.30500000, 95.94600000, 0.38001190],
[97.19700000, 104.05400000, 0.38000754],
[97.61400000, 104.05400000, 0.38001190],
[105.72200000, 95.94600000, 0.38000229],
[106.13900000, 95.94600000, 0.38001190],
[98.03100000, 104.05400000, 0.38000754],
[98.44800000, 104.05400000, 0.38001190],
[106.55600000, 95.94600000, 0.38000229],
[106.97300000, 95.94600000, 0.38015610],
[98.86500000, 104.05400000, 0.38000229],
[99.28200000, 104.05400000, 0.38001190],
[107.39100000, 95.94600000, 0.37998940],
[107.80800000, 95.94600000, 0.38001190],
[99.69900000, 104.05400000, 0.37998415],
[100.11700000, 104.05400000, 0.37930814],
[108.22500000, 95.94600000, 0.38000754],
[108.64200000, 95.94600000, 0.38001190],
[100.53400000, 104.05400000, 0.38000229],
[100.95100000, 104.05400000, 0.38015610],
[109.05900000, 95.94600000, 0.38000229],
[109.47600000, 95.94600000, 0.38001190],
[101.36800000, 104.05400000, 0.38000754],
[101.78500000, 104.05400000, 0.38001190],
[109.89300000, 95.94600000, 0.38000229],
[110.31000000, 95.94600000, 0.38001190],
[102.20200000, 104.05400000, 0.38000754],
[102.61900000, 104.05400000, 0.38001190],
[110.72700000, 95.94600000, 0.38000229],
[111.14400000, 95.94600000, 0.38015610],
[103.03600000, 104.05400000, 0.38000229],
[103.45300000, 104.05400000, 0.38001190],
[111.56100000, 95.94600000, 0.38000754],
[111.97800000, 95.94600000, 0.38001190],
[103.87000000, 104.05400000, 0.38000229],
[104.28700000, 104.05400000, 0.38001190],
[112.39500000, 95.94600000, 0.38000754],
[112.81200000, 95.94600000, 0.38001190],
[104.70400000, 104.05400000, 0.38000229],
[105.12100000, 104.05400000, 0.38015610],
[113.22900000, 95.94600000, 0.38000229],
[113.64700000, 95.94600000, 0.37930814],
[105.53800000, 104.05400000, 0.37998940],
[105.95500000, 104.05400000, 0.38001190],
[114.06400000, 95.94600000, 0.37998415],
[114.48100000, 95.94600000, 0.38001190],
[106.37300000, 104.05400000, 0.38000754],
[106.79000000, 104.05400000, 0.38001190],
[114.89800000, 95.94600000, 0.38000229],
[115.31500000, 95.94600000, 0.38015610],
[107.20700000, 104.05400000, 0.38000229],
[107.62400000, 104.05400000, 0.38001190],
[115.73200000, 95.94600000, 0.38000754],
[116.14900000, 95.94600000, 0.38001190],
[108.04100000, 104.05400000, 0.38000229],
[108.45800000, 104.05400000, 0.38001190],
[116.56600000, 95.94600000, 0.38000754],
[116.98300000, 95.94600000, 0.38001190],
[108.87500000, 104.05400000, 0.38000229],
[109.29200000, 104.05400000, 0.38015610],
[117.40000000, 95.94600000, 0.38000229],
[117.81700000, 95.94600000, 0.38001190],
[109.70900000, 104.05400000, 0.38000754],
[110.12600000, 104.05400000, 0.38001190],
[118.23400000, 95.94600000, 0.38000229],
[118.65100000, 95.94600000, 0.38001190],
[110.54300000, 104.05400000, 0.38000754],
[110.96000000, 104.05400000, 0.38001190],
[119.06800000, 95.94600000, 0.38000229],
[119.48500000, 95.94600000, 0.38015610],
[111.37700000, 104.05400000, 0.38000229],
[111.79400000, 104.05400000, 0.38001190],
[119.90200000, 95.94600000, 0.38000754],
[120.32000000, 95.94600000, 0.37930814],
[112.21100000, 104.05400000, 0.37998415],
[112.62900000, 104.05400000, 0.37930814],
[120.73700000, 95.94600000, 0.38000754],
[121.15400000, 95.94600000, 0.38001190],
[113.04600000, 104.05400000, 0.38000229],
[113.46300000, 104.05400000, 0.38015610],
[121.57100000, 95.94600000, 0.38000229],
[121.98800000, 95.94600000, 0.38001190],
[113.88000000, 104.05400000, 0.38000754],
[114.29700000, 104.05400000, 0.38001190],
[122.40500000, 95.94600000, 0.38000229],
[122.82200000, 95.94600000, 0.38001190],
[114.71400000, 104.05400000, 0.38000754],
[115.13100000, 104.05400000, 0.38001190],
[123.23900000, 95.94600000, 0.38000229],
[123.65600000, 95.94600000, 0.38015610],
[115.54800000, 104.05400000, 0.38000229],
[115.96500000, 104.05400000, 0.38001190],
[124.04400000, 95.97500000, 0.37998455],
[124.05400000, 96.38200000, 0.37976376],
[116.38200000, 104.05400000, 0.37999868],
[116.79900000, 104.05400000, 0.38001190],
[124.05400000, 96.79900000, 0.37999789],
[124.05400000, 97.21600000, 0.38001190],
[117.21600000, 104.05400000, 0.37999079],
[117.63300000, 104.05400000, 0.38015610],
[124.05400000, 97.63300000, 0.37998939],
[124.05400000, 98.05000000, 0.38001190],
[118.05000000, 104.05400000, 0.37998780],
[118.46700000, 104.05400000, 0.38001190],
[124.05400000, 98.46700000, 0.37997836],
[124.05400000, 98.88400000, 0.38001190],
[118.88400000, 104.05400000, 0.37997562],
[119.30200000, 104.05400000, 0.37945200],
[124.05400000, 99.30200000, 0.38002534],
[124.05400000, 99.71900000, 0.38015610],
[119.71900000, 104.05400000, 0.38002660],
[120.13600000, 104.05400000, 0.38001190],
[124.05400000, 100.13600000, 0.38002811],
[124.05400000, 100.55300000, 0.38015610],
[120.55300000, 104.05400000, 0.38001785],
[120.97000000, 104.05400000, 0.38015610],
[124.05400000, 100.97000000, 0.38001859],
[124.05400000, 101.38700000, 0.38001190],
[121.38700000, 104.05400000, 0.38001957],
[121.80400000, 104.05400000, 0.38015610],
[124.05400000, 101.80400000, 0.38000201],
[124.05400000, 102.22100000, 0.38015610],
[122.22100000, 104.05400000, 0.37999966],
[122.63800000, 104.05400000, 0.38001190],
[124.05400000, 102.63800000, 0.37999592],
[124.05400000, 103.05500000, 0.38015610],
[123.05500000, 104.05400000, 0.37994651],
[123.47200000, 104.05400000, 0.38015610],
[124.05400000, 103.47200000, 0.37989934],
[124.05400000, 103.88900000, 0.38001190],
[123.88900000, 104.05400000, 0.37961375],
];

translate([0.0, 0.0, 1.60000000]) {
	linear_extrude(height = 0.40400000, center = false, convexity = 10, twist = 0) {
		union() {
			for( i=[0:len(points3)-2] ){ 
				x1 = points3[i][0];
				y1 = points3[i][1];
				x2 = points3[i+1][0];
				y2 = points3[i+1][1];
				width = points3[i+1][2];
				translateAndRotate(x1, y1, x2, y2, width);
			}
		}
	}
}
