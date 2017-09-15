<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.10/handlebars.min.js"></script>
<!-- bootstrap -->
<link type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
<!-- alpaca -->
<link type="text/css" href="https://code.cloudcms.com/alpaca/1.5.23/bootstrap/alpaca.min.css" rel="stylesheet"/>
<script type="text/javascript" src="https://code.cloudcms.com/alpaca/1.5.23/bootstrap/alpaca.min.js"></script>

</head>
<body>
<div id="loginfield"></div>
<script type="text/javascript">
Alpaca.setDefaultLocale("en_US");
$("#loginfield").alpaca({
    "schema": {
        "type": "object",
        "properties": {
            "username": {
                "type": "string",
                "title": "Username",
                "required": true,
                "pattern": "^[a-zA-Z0-9_]+$"
            },
            "password": {
                "type": "string",
                "title": "Password",
                "required": true,
                "pattern": "^[a-zA-Z0-9_]+$"
            }
        }
    },
    "options": {
        "renderForm": true,
        "form": {
            "attributes": {
                "action": "http://www.alpacajs.org/endpoints/echo.php",
                "method": "post"
            },
            "buttons": {
                "submit": {}
            }
        },
        "fields": {
            "username": {
                "size": 20,
                "label": "Username"
            },
            "password": {
                "type": "password",
                "size": 20,
                "label": "Password"
            }
        }
    },
    "data": [
        {"username": "quangthai","password": "123456"},{"username":"huynhnhu","password":"123456"}
        	]
    
    ,
    "view": {
        "parent": "bootstrap-create-horizontal",
        "fields": {
            "/username": {
                "messages": {
                    "en_US": {
                        "invalidPattern": "Vui lòng điền thông tin đăng nhập"
                    }
                }
            }
        }
    },
    "postRender": function(renderedField) {
        var form = renderedField.form;
        if (form) {
            form.registerSubmitHandler(function(e) {
                return (renderedField.isValid(true));
            });
        }
    
    }
});
</script>
</body>
</html>