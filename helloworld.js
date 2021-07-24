	var http=require('http');
	var dt=require('./dateModule');
	var url=require('url');
	var fs = require('fs');
	var mysql = require('mysql');
	var mysql_connection= mysql.createConnection({
		host:'172.17.0.1',
		user:'root',
		port:'3306',
		password:'kannak',
		database:"learn-node",
		//socketPath: '/var/run/mysqld/mysqlx.sock'
	});
	
	mysql_connection.connect(async function(err){
		if(err) throw err;
		console.log('mysql connected...');
	});
	
	const DeviceDetector = require('node-device-detector');
	const detector = new DeviceDetector;

	async function home(request,response){
		fs.readFile('home.html',function(err,data){
			response.writeHead(200,{'Content-Type':'text/html'});
			response.write(data);
			return response.end();
		});
	}

	async function saveDevice(request,response){
		var userAgent = request.headers['user-agent'];
			var device = detector.detect(userAgent);

			// var sqlQuery=devices.insert({
			// 	id:1,
			// 	os:JSON.stringify(device.os),
			// 	client_app:JSON.stringify(device.client),
			// 	device:JSON.stringify(device.device)
			// });

			var sqlQuery = "INSERT INTO devices (os,client_app,device) values (?)";
			var values = [JSON.stringify(device.os), JSON.stringify(device.client), JSON.stringify(device.device)];
			
			
			mysql_connection.query(sqlQuery,[values],function(err,result){
				if(err) throw err;
				console.log('device inserted...');
			});
		
			response.end();
	}

	async function listDevices(request,response){
		var sqlQuery="SELECT * FROM devices";
			
			response.writeHead(200,{'Content-Type':'text/html'});
			response.write('<html><head><style>table{width:60%;align:center} table td{border:1px solid silver;}</style></head><body><table><thead><th>ID</th><th>OS</th><th>CLIENT</th><th>DEVICE</th></thead><tbody>');
			
	
		
			await mysql_connection.query(sqlQuery,function(err,results){
				if(err) throw err;
				console.log('device list selcted...');
				results.forEach(function(row){
					var os=JSON.parse(row.os);
					var client=JSON.parse(row.client_app);
					var device=JSON.parse(row.device);
					response.write('<tr>');
						response.write('<td>');
							response.write(row.id.toString());
						response.write('</td>');
						response.write('<td>');
							response.write(os.name+" "+os.platform);
						response.write('</td>');
						response.write('<td>');
							response.write(client.name+" "+client.type+" "+client.version);
						response.write('</td>');
						response.write('<td>');
							response.write(device.brand+" "+device.model+" "+device.type);
						response.write('</td>');
					response.write('</tr>');
					response.write('</tbody></body></html>');
				});
				response.end();
			});

		

			
			
	}

	http.createServer(function(request,response){
		let requestedPage=url.parse(request.url,true).query.page;
		if(requestedPage=='home'){
			home(request,response);
		}

		if(requestedPage=='save-device'){
			
			saveDevice(request,response);
		}
		

		if(requestedPage=='list-devices'){
			listDevices(request,response);

		}
		//response.write(dt.dateMethod()+"\n");
		//response.write(request.url+"\n")
		//response.write(url.parse(request.url,true).query.word);
	}).listen(8080);
