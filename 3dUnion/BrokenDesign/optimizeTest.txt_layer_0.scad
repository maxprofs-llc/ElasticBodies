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
			translate([x1, y1, 0.0]) rotate([0.0, 0.0, angle]) translate([-width/2.0, 0.0, 0.0]) drawBasicShape(x1, y1, x2, y2, width);
		}
		else {
			translate([x1, y1, 0.0]) rotate([0.0, 0.0, angle+180]) translate([-width/2.0, 0.0, 0.0]) drawBasicShape(x1, y1, x2, y2, width);		}
	}
}

$fn=50;

points0 = [
[96.73300000, 98.99200000, 0.00000000],
[96.37600000, 99.31900000, 0.63198079],
[96.19100000, 99.73500000, 0.63329869],
[96.17200000, 100.23700000, 0.63250720],
[96.47900000, 100.85800000, 0.63243973],
[97.07200000, 101.13400000, 0.63284394],
[102.82600000, 101.14100000, 0.63265111],
[103.19000000, 101.19500000, 0.63309929],
[103.53000000, 101.30500000, 0.63272308],
[103.84700000, 101.47100000, 0.63181778],
[104.13200000, 101.68700000, 0.63250407],
[104.39000000, 101.96300000, 0.63287266],
[104.47200000, 102.07500000, 0.63080536],
[104.65200000, 102.40200000, 0.63324554],
[104.77100000, 102.74400000, 0.63250799],
[104.83100000, 103.09600000, 0.63230125],
[104.83100000, 103.45300000, 0.63309289],
[104.77100000, 103.80500000, 0.63331165],
[104.64700000, 104.16200000, 0.63255075],
[104.49400000, 104.44000000, 0.63216563],
[104.25900000, 104.73600000, 0.63267923],
[103.97900000, 104.98900000, 0.63318933],
[103.86500000, 105.06800000, 0.63081073],
[103.51200000, 105.25300000, 0.63263310],
[103.38300000, 105.30100000, 0.63455762],
[103.01000000, 105.38800000, 0.63282148],
[102.66700000, 105.41300000, 0.63224159],
[97.14100000, 105.41400000, 0.63262232],
[96.73200000, 105.54000000, 0.63240826],
[96.37600000, 105.86800000, 0.63217260],
[96.19100000, 106.28400000, 0.63237416],
[96.17200000, 106.78600000, 0.63286630],
[96.47900000, 107.40600000, 0.63271328],
[97.07100000, 107.68300000, 0.63297241],
[102.82600000, 107.69000000, 0.63260834],
[103.19000000, 107.74300000, 0.63315216],
[103.55000000, 107.86000000, 0.63182370],
[103.67500000, 107.91900000, 0.63267583],
[103.99400000, 108.12200000, 0.63227344],
[104.25900000, 108.36100000, 0.63348267],
[104.48200000, 108.64100000, 0.63197476],
[104.65400000, 108.95400000, 0.63286975],
[104.77100000, 109.29200000, 0.63222484],
[104.83100000, 109.64400000, 0.63263805],
[104.83000000, 110.00500000, 0.63352332],
[104.76800000, 110.37400000, 0.63256522],
[104.72800000, 110.50700000, 0.63050862],
[104.57400000, 110.85200000, 0.63255243],
[104.36500000, 111.16700000, 0.63255485],
[104.27500000, 111.27100000, 0.63497807],
[103.99400000, 111.52400000, 0.63243247],
[103.67500000, 111.72700000, 0.63243247],
[103.55000000, 111.78500000, 0.63392152],
[103.17100000, 111.90900000, 0.63246917],
[102.66700000, 111.96200000, 0.63248595],
[95.15800000, 111.96200000, 0.63258671],
[95.15800000, 110.95800000, 0.63271894],
[102.88900000, 110.95800000, 0.63259046],
[103.44800000, 110.73000000, 0.63306674],
[103.75600000, 110.26000000, 0.63202017],
[103.85400000, 109.74600000, 0.63331161],
[103.59800000, 109.02600000, 0.63234759],
[102.95100000, 108.68800000, 0.63248986],
[97.33300000, 108.68800000, 0.63260566],
[96.82900000, 108.63400000, 0.63249074],
[96.45000000, 108.51100000, 0.63259238],
[96.32500000, 108.45200000, 0.63224080],
[95.98900000, 108.23900000, 0.63346399],
[95.88200000, 108.15100000, 0.63100100],
[95.61000000, 107.86000000, 0.63292422],
[95.52800000, 107.74800000, 0.62993896],
[95.33600000, 107.39900000, 0.63292422],
[95.28600000, 107.27100000, 0.63544315],
[95.18600000, 106.88500000, 0.63235446],
[95.16900000, 106.74800000, 0.63336403],
[95.16900000, 106.37400000, 0.63249571],
[95.22900000, 106.01700000, 0.63233427],
[95.34600000, 105.68000000, 0.63282917],
[95.51900000, 105.36700000, 0.63246774],
[95.74100000, 105.08600000, 0.63155980],
[96.00600000, 104.84700000, 0.63331416],
[96.30800000, 104.65600000, 0.63292348],
[96.63800000, 104.51700000, 0.63194673],
[97.00200000, 104.43200000, 0.63295971],
[97.15400000, 104.41500000, 0.63429098],
[102.95200000, 104.40900000, 0.63254633],
[103.59800000, 104.07100000, 0.63274193],
[103.88200000, 103.27400000, 0.63251634],
[103.59800000, 102.47800000, 0.63255642],
[102.95100000, 102.13900000, 0.63206060],
[97.33300000, 102.13900000, 0.63264847],
[96.99000000, 102.11400000, 0.63224159],
[96.63700000, 102.03100000, 0.63256124],
[96.30800000, 101.89300000, 0.63361388],
[95.98900000, 101.69000000, 0.63243247],
[95.88200000, 101.60200000, 0.63100100],
[95.62400000, 101.32700000, 0.63393154],
[95.42600000, 101.02900000, 0.63206475],
[95.27200000, 100.68400000, 0.63271159],
[95.23200000, 100.55100000, 0.62964270],
[95.16900000, 100.17900000, 0.63393449],
[95.16900000, 99.80400000, 0.63119831],
[95.22200000, 99.48800000, 0.63346170],
[95.34500000, 99.13500000, 0.63260471],
[95.52900000, 98.80000000, 0.63303142],
[95.61000000, 98.68800000, 0.63051492],
[95.86600000, 98.41600000, 0.63319269],
[96.17000000, 98.18400000, 0.63257663],
[96.28900000, 98.11500000, 0.63270529],
[96.63800000, 97.96900000, 0.63231064],
[97.00200000, 97.88300000, 0.63262522],
[97.15400000, 97.86700000, 0.63467823],
[102.86000000, 97.86000000, 0.63259301],
[103.26800000, 97.73400000, 0.63250482],
[103.68300000, 97.35200000, 0.63210127],
[103.87300000, 96.65300000, 0.63298437],
[103.57900000, 95.91900000, 0.63248821],
[102.95200000, 95.59100000, 0.63259554],
[97.17400000, 95.58500000, 0.63257583],
[96.79000000, 95.52800000, 0.63231628],
[96.65300000, 95.48900000, 0.63336698],
[96.29000000, 95.33700000, 0.63301095],
[96.16600000, 95.26500000, 0.63059869],
[95.86800000, 95.03900000, 0.63264867],
[95.62400000, 94.77800000, 0.63298347],
[95.42600000, 94.48000000, 0.63223282],
[95.28000000, 94.15400000, 0.63295448],
[95.18600000, 93.78800000, 0.63261392],
[95.16900000, 93.65000000, 0.62988847],
[95.16900000, 93.27700000, 0.63396127],
[95.22900000, 92.92000000, 0.63233427],
[95.34600000, 92.58300000, 0.63282917],
[95.52800000, 92.25200000, 0.63297808],
[95.62200000, 92.12300000, 0.62908744],
[95.72500000, 92.00300000, 0.63490732],
[96.00300000, 91.75300000, 0.63267557],
[96.30900000, 91.55800000, 0.63139410],
[96.65300000, 91.41400000, 0.63342860],
[96.97000000, 91.33900000, 0.63279536],
[97.33300000, 91.31200000, 0.63280696],
[102.95100000, 91.31200000, 0.63261636],
[103.59800000, 90.97400000, 0.63240748],
[103.85400000, 90.25500000, 0.63286464],
[103.75600000, 89.74000000, 0.63251515],
[103.44800000, 89.27000000, 0.63234120],
[102.88800000, 89.04200000, 0.63232806],
[95.15800000, 89.04200000, 0.63263007],
[95.15800000, 88.03800000, 0.63253926],
[102.66900000, 88.04000000, 0.63259321],
[103.01200000, 88.06400000, 0.63217992],
[103.38300000, 88.15100000, 0.63246085],
[103.51200000, 88.19900000, 0.63455762],
[103.86500000, 88.38300000, 0.63326935],
[103.97900000, 88.46200000, 0.63037718],
[104.25900000, 88.71500000, 0.63350802],
[104.48100000, 88.99500000, 0.63275734],
[104.65400000, 89.30800000, 0.63213145],
[104.77100000, 89.64600000, 0.63239296],
[104.83100000, 89.99900000, 0.63180435],
[104.83100000, 90.37600000, 0.63388772],
[104.81400000, 90.51300000, 0.63292845],
[104.71400000, 90.89900000, 0.63235446],
[104.66400000, 91.02800000, 0.63130638],
[104.47200000, 91.37600000, 0.63307078],
[104.38800000, 91.49200000, 0.63039600],
[104.11800000, 91.77900000, 0.63338098],
[104.01100000, 91.86700000, 0.63186909],
[103.69200000, 92.07000000, 0.63243247],
[103.36300000, 92.20800000, 0.63361388],
[103.01000000, 92.29100000, 0.63256124],
[102.66700000, 92.31600000, 0.63224159],
[97.14100000, 92.31700000, 0.63263320],
[96.73200000, 92.44300000, 0.63198675],
[96.37600000, 92.77100000, 0.63192416],
[96.18300000, 93.20400000, 0.63316983],
[96.18300000, 93.76000000, 0.63330192],
[96.55300000, 94.38000000, 0.63251760],
[97.13300000, 94.58600000, 0.63255206],
[102.84600000, 94.59300000, 0.63263883],
[102.99500000, 94.60800000, 0.62952748],
[103.36300000, 94.69400000, 0.63271943],
[103.69200000, 94.83300000, 0.63301881],
[103.99400000, 95.02500000, 0.63210481],
[104.25900000, 95.26400000, 0.63331416],
[104.48100000, 95.54400000, 0.63292562],
[104.66400000, 95.87500000, 0.63227961],
[104.76800000, 96.17400000, 0.63327158],
[104.83000000, 96.54300000, 0.63240451],
[104.83100000, 96.90500000, 0.63217650],
[104.77100000, 97.25700000, 0.63246965],
[104.65400000, 97.59400000, 0.63384055],
[104.47200000, 97.92600000, 0.63155251],
[104.27500000, 98.17400000, 0.63300957],
[103.99400000, 98.42700000, 0.63243247],
[103.67500000, 98.62900000, 0.63209350],
[103.54600000, 98.69000000, 0.63239809],
[103.17100000, 98.81100000, 0.63323366],
[103.03000000, 98.83800000, 0.63203179],
[102.66700000, 98.86500000, 0.63313735],
[97.14100000, 98.86500000, 0.63262233],
[96.79000000, 98.97400000, 0.63196765],
[96.80200000, 100.10200000, 0.00000000],
[96.94200000, 100.38400000, 0.63246160],
[97.21100000, 100.51000000, 0.63200410],
[102.87200000, 100.51600000, 0.63267984],
[103.33300000, 100.58400000, 0.63297880],
[103.77300000, 100.72700000, 0.63224250],
[104.18300000, 100.94100000, 0.63243789],
[104.55100000, 101.22100000, 0.63265994],
[104.87300000, 101.56300000, 0.63271468],
[105.00000000, 101.73900000, 0.63192430],
[105.22500000, 102.14700000, 0.63188783],
[105.37900000, 102.58700000, 0.63353744],
[105.45600000, 103.04300000, 0.63221744],
[105.45600000, 103.50500000, 0.63314649],
[105.37900000, 103.96100000, 0.63260753],
[105.22400000, 104.40500000, 0.63182432],
[105.00800000, 104.79700000, 0.63305605],
[104.71700000, 105.16600000, 0.63247443],
[104.36800000, 105.48000000, 0.63276982],
[104.19000000, 105.60400000, 0.63246252],
[103.76700000, 105.82500000, 0.63253860],
[103.56300000, 105.90000000, 0.63113769],
[103.10400000, 106.00800000, 0.63266412],
[102.69000000, 106.03800000, 0.63343664],
[97.23500000, 106.03900000, 0.63255182],
[97.05200000, 106.09600000, 0.63454463],
[96.89400000, 106.24000000, 0.63294172],
[96.81100000, 106.42800000, 0.63213210],
[96.80200000, 106.65100000, 0.63224700],
[96.94200000, 106.93300000, 0.63188862],
[97.21000000, 107.05800000, 0.63445931],
[102.87200000, 107.06500000, 0.63259377],
[103.33300000, 107.13300000, 0.63297880],
[103.78000000, 107.27800000, 0.63248433],
[103.97600000, 107.37000000, 0.63323319],
[104.37300000, 107.62200000, 0.63201146],
[104.71700000, 107.93100000, 0.63266890],
[105.00400000, 108.29400000, 0.63225888],
[105.22700000, 108.69900000, 0.63248935],
[105.37900000, 109.13600000, 0.63234183],
[105.45600000, 109.59100000, 0.63351518],
[105.45500000, 110.05800000, 0.63243592],
[105.37700000, 110.51700000, 0.63242493],
[105.31500000, 110.72500000, 0.63190691],
[105.12400000, 111.15400000, 0.63274284],
[104.86400000, 111.54500000, 0.63292175],
[104.72200000, 111.70900000, 0.63218533],
[104.37300000, 112.02300000, 0.63289791],
[103.97600000, 112.27500000, 0.63213934],
[103.78000000, 112.36700000, 0.63323319],
[103.32600000, 112.51500000, 0.63223882],
[103.11200000, 112.55600000, 0.63419626],
[102.69000000, 112.58700000, 0.63268033],
[94.53300000, 112.58700000, 0.63257278],
[94.53300000, 110.33300000, 0.63263152],
[102.76700000, 110.33300000, 0.63255745],
[103.03200000, 110.22500000, 0.63386626],
[103.16500000, 110.02200000, 0.63292570],
[103.20800000, 109.79500000, 0.63162784],
[103.09100000, 109.46600000, 0.63208121],
[102.79800000, 109.31300000, 0.63414625],
[97.31000000, 109.31300000, 0.63254053],
[96.88800000, 109.28200000, 0.63268033],
[96.67400000, 109.24100000, 0.63447223],
[96.22000000, 109.09300000, 0.63211289],
[96.02400000, 109.00100000, 0.63323319],
[95.62100000, 108.74500000, 0.63220275],
[95.45400000, 108.60700000, 0.63320160],
[95.12700000, 108.25900000, 0.63209732],
[95.00000000, 108.08400000, 0.63397030],
[94.77000000, 107.66600000, 0.63271390],
[94.69000000, 107.46400000, 0.63135136],
[94.57100000, 107.00200000, 0.63273672],
[94.54400000, 106.78700000, 0.63280168],
[94.54400000, 106.32200000, 0.63297770],
[94.62100000, 105.86100000, 0.63211401],
[94.77300000, 105.42500000, 0.63306889],
[94.99600000, 105.02000000, 0.63274947],
[95.28300000, 104.65700000, 0.63225888],
[95.62700000, 104.34800000, 0.63253885],
[96.01700000, 104.10000000, 0.63281136],
[96.44400000, 103.92100000, 0.63196313],
[96.89700000, 103.81400000, 0.63255988],
[97.12100000, 103.79100000, 0.63274404],
[102.79800000, 103.78400000, 0.63262143],
[103.09100000, 103.63100000, 0.63378241],
[103.21800000, 103.27400000, 0.63175002],
[103.09100000, 102.91800000, 0.63263329],
[102.79800000, 102.76400000, 0.63337754],
[97.31000000, 102.76400000, 0.63256244],
[96.89600000, 102.73400000, 0.63343664],
[96.44400000, 102.62800000, 0.63268074],
[96.01700000, 102.44800000, 0.63137665],
[95.62100000, 102.19700000, 0.63361916],
[95.45400000, 102.05900000, 0.63292403],
[95.13200000, 101.71600000, 0.63186777],
[94.87600000, 101.33100000, 0.63261046],
[94.68500000, 100.90200000, 0.63274284],
[94.62300000, 100.69400000, 0.63218396],
[94.54400000, 100.23100000, 0.63276178],
[94.54400000, 99.76600000, 0.63310702],
[94.61900000, 99.32000000, 0.63243274],
[94.77200000, 98.88000000, 0.63198847],
[95.00000000, 98.46400000, 0.63254893],
[95.12700000, 98.28900000, 0.63369220],
[95.44600000, 97.95000000, 0.63240042],
[95.82300000, 97.66300000, 0.63320849],
[96.01100000, 97.55400000, 0.63067664],
[96.44400000, 97.37200000, 0.63275806],
[96.89700000, 97.26600000, 0.63269957],
[97.12100000, 97.24200000, 0.63249074],
[102.76500000, 97.23600000, 0.63263293],
[102.94800000, 97.17900000, 0.63391718],
[103.12700000, 97.01400000, 0.63048354],
[103.21500000, 96.69100000, 0.63332350],
[103.08400000, 96.36600000, 0.63240470],
[102.79800000, 96.21600000, 0.63344546],
[97.12800000, 96.20900000, 0.63261773],
[96.66000000, 96.14000000, 0.63293576],
[96.44600000, 96.08000000, 0.63047363],
[96.01100000, 95.89700000, 0.63323028],
[95.81900000, 95.78600000, 0.63191174],
[95.44900000, 95.50500000, 0.63343882],
[95.13200000, 95.16800000, 0.63236098],
[94.87600000, 94.78200000, 0.63162706],
[94.68800000, 94.36000000, 0.63316700],
[94.57100000, 93.90500000, 0.63250491],
[94.54400000, 93.69000000, 0.63307918],
[94.54400000, 93.22500000, 0.63297770],
[94.62100000, 92.76400000, 0.63211401],
[94.77300000, 92.32800000, 0.63306889],
[95.00000000, 91.91600000, 0.63194179],
[95.13100000, 91.73500000, 0.63432501],
[95.27800000, 91.56500000, 0.63112854],
[95.62400000, 91.25400000, 0.63270968],
[96.01800000, 91.00300000, 0.63238052],
[96.44600000, 90.82200000, 0.63320290],
[96.88800000, 90.71800000, 0.63250717],
[97.31000000, 90.68700000, 0.63268033],
[102.79800000, 90.68700000, 0.63255149],
[103.09100000, 90.53300000, 0.63319587],
[103.20800000, 90.20500000, 0.63338618],
[103.16500000, 89.97800000, 0.63188811],
[103.03200000, 89.77500000, 0.63317348],
[102.76600000, 89.66700000, 0.63251696],
[94.53300000, 89.66700000, 0.63260194],
[94.53300000, 87.41300000, 0.63257817],
[102.69000000, 87.41500000, 0.63263173],
[103.10500000, 87.44400000, 0.63207256],
[103.56300000, 87.55100000, 0.63316650],
[103.76700000, 87.62700000, 0.63026828],
[104.18900000, 87.84800000, 0.63355552],
[104.36800000, 87.97200000, 0.63012474],
[104.71700000, 88.28600000, 0.63289791],
[105.00400000, 88.64800000, 0.63318623],
[105.22700000, 89.05300000, 0.63261941],
[105.37900000, 89.49000000, 0.63221187],
[105.45600000, 89.94600000, 0.63260753],
[105.45600000, 90.41600000, 0.63227472],
[105.42900000, 90.63100000, 0.63280168],
[105.31000000, 91.09300000, 0.63273672],
[105.23000000, 91.29400000, 0.63369500],
[105.00000000, 91.71200000, 0.63233579],
[104.87000000, 91.89100000, 0.63299948],
[104.54600000, 92.23600000, 0.63203666],
[104.37900000, 92.37400000, 0.63292403],
[103.98300000, 92.62600000, 0.63312161],
[103.55600000, 92.80500000, 0.63183325],
[103.10400000, 92.91100000, 0.63255122],
[102.69000000, 92.94100000, 0.63358150],
[97.23500000, 92.94200000, 0.63255182],
[97.05200000, 92.99900000, 0.63423090],
[96.89400000, 93.14300000, 0.63266043],
[96.80800000, 93.33700000, 0.63273413],
[96.80800000, 93.58800000, 0.63229969],
[96.97400000, 93.86700000, 0.63280041],
[97.24100000, 93.96200000, 0.63242386],
[102.88000000, 93.96800000, 0.63254193],
[103.09900000, 93.99100000, 0.63362660],
[103.55600000, 94.09800000, 0.63302082],
[103.98300000, 94.27700000, 0.63196313],
[104.37300000, 94.52500000, 0.63281136],
[104.71700000, 94.83400000, 0.63266890],
[105.00400000, 95.19700000, 0.63212894],
[105.23000000, 95.60800000, 0.63352322],
[105.37700000, 96.03100000, 0.63262426],
[105.45500000, 96.49000000, 0.63229577],
[105.45600000, 96.95700000, 0.63256469],
[105.37900000, 97.41300000, 0.63234747],
[105.22700000, 97.85000000, 0.63221187],
[105.00000000, 98.26100000, 0.63296022],
[104.72200000, 98.61200000, 0.63269652],
[104.37300000, 98.92600000, 0.63289791],
[103.97700000, 99.17800000, 0.63273728],
[103.77600000, 99.27200000, 0.63135231],
[103.32700000, 99.41800000, 0.63323571],
[103.11200000, 99.45900000, 0.63228493],
[102.69000000, 99.49000000, 0.63268033],
[97.23500000, 99.49000000, 0.63255182],
[97.05200000, 99.54700000, 0.63360346],
[96.89400000, 99.69200000, 0.63093958],
[96.81100000, 99.87900000, 0.63516154],
[96.80400000, 100.04200000, 0.63205933],
[96.58700000, 100.33200000, 0.00000000],
[95.47100000, 111.46000000, 0.00000000],
[102.95000000, 111.44900000, 0.63264057],
[103.43100000, 111.28300000, 0.63251840],
[103.70400000, 111.14200000, 0.63263429],
[103.79100000, 111.07000000, 0.63056339],
[103.96300000, 110.86200000, 0.63457437],
[104.13100000, 110.60800000, 0.63161177],
[104.22900000, 110.41400000, 0.63335676],
[104.32600000, 109.96300000, 0.63278799],
[104.34600000, 109.68400000, 0.63144833],
[104.18700000, 109.16200000, 0.63274768],
[103.98900000, 108.75700000, 0.63272698],
[103.92000000, 108.67500000, 0.63347461],
[103.43000000, 108.36500000, 0.63247915],
[103.08000000, 108.21400000, 0.63228965],
[102.78900000, 108.18900000, 0.63224882],
[97.35200000, 108.18600000, 0.63264744],
[96.95100000, 108.16200000, 0.63279840],
[96.57000000, 108.00800000, 0.63251371],
[96.20800000, 107.80400000, 0.63199083],
[96.10900000, 107.71100000, 0.63257307],
[95.95400000, 107.47900000, 0.63368234],
[95.79900000, 107.18200000, 0.63239220],
[95.70100000, 106.93100000, 0.63303708],
[95.67500000, 106.79200000, 0.63183564],
[95.67700000, 106.41600000, 0.63197913],
[95.71100000, 106.14000000, 0.63205082],
[95.81200000, 105.88700000, 0.63260583],
[95.99700000, 105.55100000, 0.63281844],
[96.31000000, 105.24800000, 0.63286567],
[96.52100000, 105.09700000, 0.63254873],
[97.04000000, 104.92900000, 0.63258237],
[97.18100000, 104.91500000, 0.63371742],
[102.64800000, 104.91100000, 0.63262755],
[102.93500000, 104.90100000, 0.63193575],
[103.10700000, 104.87100000, 0.63206777],
[103.30700000, 104.79200000, 0.63252823],
[103.60400000, 104.63600000, 0.63235350],
[103.92300000, 104.42000000, 0.63261026],
[103.98900000, 104.34000000, 0.63317493],
[104.17600000, 103.96500000, 0.63372279],
[104.27700000, 103.67900000, 0.63222523],
[104.36100000, 103.32700000, 0.63251994],
[104.34700000, 103.13600000, 0.63091893],
[104.27700000, 102.87100000, 0.63321490],
[104.18500000, 102.61000000, 0.63210074],
[103.99000000, 102.20800000, 0.63252187],
[103.80900000, 102.04600000, 0.63416228],
[103.57600000, 101.89800000, 0.63219707],
[103.08000000, 101.66600000, 0.63271885],
[102.78900000, 101.64000000, 0.63229138],
[97.35200000, 101.63700000, 0.63265850],
[97.00200000, 101.61900000, 0.63214857],
[96.79200000, 101.55500000, 0.63200797],
[96.54200000, 101.44400000, 0.63190760],
[96.20800000, 101.25500000, 0.63299874],
[96.10900000, 101.16300000, 0.63400012],
[95.87400000, 100.78300000, 0.63293111],
[95.74500000, 100.50800000, 0.63222002],
[95.69900000, 100.38200000, 0.63097043],
[95.67200000, 100.13600000, 0.63278889],
[95.70100000, 99.62200000, 0.63306120],
[95.81000000, 99.34200000, 0.63279050],
[95.95200000, 99.05800000, 0.63106391],
[96.20500000, 98.79200000, 0.63342859],
[96.45400000, 98.58400000, 0.63240189],
[96.79300000, 98.44800000, 0.63355393],
[97.04000000, 98.38000000, 0.63108872],
[97.18100000, 98.36600000, 0.63371742],
[102.90800000, 98.35300000, 0.63257161],
[103.36300000, 98.22600000, 0.63319954],
[103.54400000, 98.13800000, 0.63171198],
[103.91500000, 97.82200000, 0.63307155],
[104.07500000, 97.64600000, 0.63190483],
[104.19300000, 97.38900000, 0.63209947],
[104.27400000, 97.12900000, 0.63300724],
[104.33200000, 96.86300000, 0.63249594],
[104.35600000, 96.58300000, 0.63232708],
[104.20000000, 96.09300000, 0.63274721],
[103.96600000, 95.63900000, 0.63234982],
[103.89600000, 95.56100000, 0.63320205],
[103.45700000, 95.28400000, 0.63342694],
[103.10700000, 95.12900000, 0.63188756],
[102.82000000, 95.09200000, 0.63235367],
[97.21100000, 95.08600000, 0.63262502],
[97.02000000, 95.06600000, 0.63347984],
[96.82000000, 95.01100000, 0.63200898],
[96.51100000, 94.89200000, 0.63227723],
[96.29200000, 94.77900000, 0.63217500],
[96.21200000, 94.71500000, 0.63404316],
[96.01900000, 94.46500000, 0.63303114],
[95.74700000, 93.99100000, 0.63214766],
[95.70000000, 93.84700000, 0.63445867],
[95.67600000, 93.61800000, 0.63087130],
[95.67600000, 93.31900000, 0.63386691],
[95.70500000, 93.06300000, 0.63152532],
[95.81200000, 92.79000000, 0.63298033],
[95.95100000, 92.51000000, 0.63290913],
[96.08500000, 92.35500000, 0.63200838],
[96.45600000, 92.03900000, 0.63257800],
[96.53600000, 91.99300000, 0.63384528],
[96.92500000, 91.85800000, 0.63216428],
[97.09300000, 91.82400000, 0.63381621],
[97.35200000, 91.81400000, 0.63149816],
[102.64800000, 91.81400000, 0.63268357],
[102.93500000, 91.80400000, 0.63193575],
[103.10600000, 91.77400000, 0.63308881],
[103.45700000, 91.61900000, 0.63152634],
[103.78500000, 91.42400000, 0.63265691],
[103.99000000, 91.24300000, 0.63313479],
[104.20000000, 90.80900000, 0.63236315],
[104.32400000, 90.42000000, 0.63342566],
[104.34600000, 90.24700000, 0.63270499],
[104.27800000, 89.77300000, 0.63309756],
[104.20400000, 89.52000000, 0.63104389],
[104.05800000, 89.27700000, 0.63373521],
[103.89800000, 89.05500000, 0.63255681],
[103.71800000, 88.86600000, 0.63209776],
[103.30500000, 88.66300000, 0.63202835],
[102.93800000, 88.55100000, 0.63261035],
[95.47100000, 88.54000000, 0.63265764],
];

translate([0.0, 0.0, 0.40000000]) {
	linear_extrude(height = 0.40000000, center = false, convexity = 10, twist = 0) {
		union() {
			for( i=[0:len(points0)-2] ){ 
				x1 = points0[i][0];
				y1 = points0[i][1];
				x2 = points0[i+1][0];
				y2 = points0[i+1][1];
				width = points0[i+1][2];
				translateAndRotate(x1, y1, x2, y2, width);
			}
		}
	}
}