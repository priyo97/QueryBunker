function setup_table(){
	
	let json_data = [

		{
			topic: "What is this discussion forum about?",
			user_name: "priyo97",
			created_at: "33 mins",
			num_views: 6,
			num_comments: 5,
			num_votes: 0
		},

		{
			topic: "When is it starting?",
			user_name: "alex21",
			created_at: "59 mins",
			num_views: 4,
			num_comments: 3,
			num_votes: 0
		},

		{
			topic: "Who all can participate?",
			user_name: "evelyn21",
			created_at: "60 mins",
			num_views: 3,
			num_comments: 2,
			num_votes: 1
		}

	];

	let table = [];

	json_data.forEach(function(q){

		table.push(q);
	});

	localStorage.setItem("questions",JSON.stringify(table));
}

setup_table();
