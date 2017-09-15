<!--  
<html>
<!-- dependencies (jquery, handlebars and bootstrap) -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.10/handlebars.min.js"></script>
<!-- bootstrap -->
<link type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
<!-- alpaca -->
<link type="text/css" href="https://code.cloudcms.com/alpaca/1.5.23/bootstrap/alpaca.min.css" rel="stylesheet"/>
<script type="text/javascript" src="https://code.cloudcms.com/alpaca/1.5.23/bootstrap/alpaca.min.js"></script>
<body>
<div> <li><a href ="jsp/user/welcome.jsp" >Welcome </a></li>
	<li><a href ="jsp/user/login.jsp" >Login </a></li>
	<li><a href ="jsp/user/home.jsp" >Home </a></li>
	

</div>
<div id="form1"></div>
<script type="text/javascript">
$("#form1").alpaca({
    "schema": {
        "title": "What do you think of Alpaca?",
        "type": "object",
        "properties": {
            "name": {
                "type": "string",
                "title": "Name"
            },
            "ranking": {
                "type": "string",
                "title": "Ranking",
                "enum": ['excellent', 'not too shabby', 'alpaca built my hotrod']
            }
        }
    }
});
</script>
<div id="field1"></div>
<script type="text/javascript">
$("#field1").alpaca({
	 "schema": {
	"title":"Customer Profile",
    "description":"Alpaca Farm Ice Cream Customer Profile Form.",
    "type":"object",
    "properties":{
        "name":{
            "title":"Name",
            "description":"Enter your full name.",
            "type":"string",
            "required":true
        },
        "age":{
            "title":"Age",
            "description":"Enter your age.",
            "type":"number"
        },
        "gender":{
            "title":"Gender",
            "type":"string",
            "enum":[
                "Male",
                "Female"
            ],
            "required": true
        },
        "photo":{
            "title":"Photo",
            "description":"Upload your profile picture.",
            "type":"string",
            "format":"uri"
        },
        "member":{
            "title":"Member",
            "type":"boolean",
            "description":"Are you a member?"
        },
        "icecream":{
            "title":"Favorite",
            "type":"string",
            "enum":[
                "Vanilla",
                "Chocolate",
                "Coffee",
                "Strawberry",
                "Mint"
            ]
        },
        "phone":{
            "title":"Home Phone",
            "type":"string",
			"format":"phone"
        },
        "address":{
            "title":"Home Address",
            "type":"any"
        			}
        }
        }
        });
</script>
</body>
</html>
-->