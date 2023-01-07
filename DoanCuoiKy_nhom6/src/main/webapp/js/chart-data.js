var randomScalingFactor = function(){ return Math.round(Math.random()*1000)};

	
	var lineChartData = {
		labels : ["Tháng 1","Tháng 2","Tháng 3","Tháng 4","Tháng 5","Tháng 6","Tháng 7","Tháng 8","Tháng 9","Tháng 10","Tháng 11","Tháng 12"],
		datasets : [
			{
				label: "My First dataset",
				fillColor : "rgba(220,220,220,0.2)",
				strokeColor : "rgba(220,220,220,1)",
				pointColor : "rgba(220,220,220,1)",
				pointStrokeColor : "#fff",
				pointHighlightFill : "#fff",
				pointHighlightStroke : "rgba(220,220,220,1)",
				 // data : [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
			},
			{
				label: "My Second dataset",
				fillColor : "rgba(48, 164, 255, 0.2)",
				strokeColor : "rgba(48, 164, 255, 1)",
				pointColor : "rgba(48, 164, 255, 1)",
				pointStrokeColor : "#fff",
				pointHighlightFill : "#fff",
				pointHighlightStroke : "rgba(48, 164, 255, 1)",
				// data : [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
			}
		]

	}

	var barChartData = {
		labels : ["Tháng 1","Tháng 2","Tháng 3","Tháng 4","Tháng 5","Tháng 6","Tháng 7","Tháng 8","Tháng 9","Tháng 10","Tháng 11","Tháng 12"],
		datasets : [
			{
				fillColor : "rgba(220,220,220,0.5)",
				strokeColor : "rgba(220,220,220,0.8)",
				highlightFill: "rgba(220,220,220,0.75)",
				highlightStroke: "rgba(220,220,220,1)",
				// data : [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
			},
			{
				fillColor : "rgba(48, 164, 255, 0.2)",
				strokeColor : "rgba(48, 164, 255, 0.8)",
				highlightFill : "rgba(48, 164, 255, 0.75)",
				highlightStroke : "rgba(48, 164, 255, 1)",
				// data : [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
			}
		]

	}

	var pieData = [
			{
				value: 10,
				color:"#30a5ff",
				highlight: "#62b9fb",
				label: "Quý I"
			},
			{
				value: 20,
				color: "#ffb53e",
				highlight: "#fac878",
				label: "Quý II"
			},
			{
				value: 30,
				color: "#1ebfae",
				highlight: "#3cdfce",
				label: "Quý III"
			},
			{
				value: 40,
				color: "#f9243f",
				highlight: "#f6495f",
				label: "Quý IV"
			}

		];
			
	var doughnutData = [
				{
					value: 40,
					color:"#30a5ff",
					highlight: "#62b9fb",
					label: "Quý I"
				},
				{
					value: 10,
					color: "#ffb53e",
					highlight: "#fac878",
					label: "Quý II"
				},
				{
					value: 20,
					color: "#1ebfae",
					highlight: "#3cdfce",
					label: "Quý III"
				},
				{
					value: 30,
					color: "#f9243f",
					highlight: "#f6495f",
					label: "Quý IV"
				}

			];

	var radarData = {
		labels : ["Tháng 1","Tháng 2","Tháng 3","Tháng 4","Tháng 5","Tháng 6","Tháng 7","Tháng 8","Tháng 9","Tháng 10","Tháng 11","Tháng 12"],
	    datasets: [
	        {
	            label: "My First dataset",
	            fillColor: "rgba(220,220,220,0.2)",
	            strokeColor: "rgba(220,220,220,1)",
	            pointColor: "rgba(220,220,220,1)",
	            pointStrokeColor: "#fff",
	            pointHighlightFill: "#fff",
	            pointHighlightStroke: "rgba(220,220,220,1)",
	            data: [10, 10, 5, 15, 5, 10, 5, 10, 5, 10, 5, 10]
	        },
	        {
	            label: "My Second dataset",
	            fillColor : "rgba(48, 164, 255, 0.2)",
	            strokeColor : "rgba(48, 164, 255, 0.8)",
	            pointColor : "rgba(48, 164, 255, 1)",
	            pointStrokeColor : "#fff",
	            pointHighlightFill : "#fff",
	            pointHighlightStroke : "rgba(48, 164, 255, 1)",
	            data: [0, 0, 0, 0, 0, 0, 0]
	        }
	    ]
	};
	
	var polarData = [
		    {
		    	value: 10,
		    	color: "#1ebfae",
		    	highlight: "#38cabe",
		    	label: "Quý I"
		    },
		    {
		    	value: 20,
		    	color: "#ffb53e",
		    	highlight: "#fac878",
		    	label: "Quý II"
		    },
		    {
		    	value: 30,
		    	color:"#30a5ff",
		    	highlight: "#62b9fb",
		    	label: "Quý III"
		    },
		    {
		    	value: 40,
		    	color: "#f9243f",
		    	highlight: "#f6495f",
		    	label: "Quý IV"
		    }

	];

	var lineChartData2 = {
		labels : ["Tháng 1","Tháng 2","Tháng 3","Tháng 4","Tháng 5","Tháng 6","Tháng 7","Tháng 8","Tháng 9","Tháng 10","Tháng 11","Tháng 12"],
		datasets : [
			{
				label: "My First dataset",
				fillColor : "rgba(220,220,220,0.2)",
				strokeColor : "rgba(220,220,220,1)",
				pointColor : "rgba(220,220,220,1)",
				pointStrokeColor : "#fff",
				pointHighlightFill : "#fff",
				pointHighlightStroke : "rgba(220,220,220,1)",
				 // data : [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
			},
			{
				label: "My Second dataset",
				fillColor : "rgba(48, 164, 255, 0.2)",
				strokeColor : "rgba(48, 164, 255, 1)",
				pointColor : "rgba(48, 164, 255, 1)",
				pointStrokeColor : "#fff",
				pointHighlightFill : "#fff",
				pointHighlightStroke : "rgba(48, 164, 255, 1)",
				// data : [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
			}
		]

	}

