<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<<<<<<< HEAD
    <title>Testing websockets</title>
<style type="text/css">
fieldset {
	width:290px;
=======
<title>Testing websockets</title>
<style type="text/css">
fieldset {
	width: 290px;
>>>>>>> branch 'master' of https://github.com/tony0033/Mini2.git
}
</style>

</head>

<body>
	<%
String id = (String)session.getAttribute("id");
if (id==null){ 
	id = session.getId().substring(0, 6);
}
<<<<<<< HEAD
%> 
    <fieldset>
        <textarea id="messageWindow" rows="10" cols="25" readonly="readonly" ></textarea>
        <br/>
        <input id="inputMessage" type="text"/>
        <input type="submit" value="send" onclick="send()" />
    </fieldset><script type="text/javascript">
=======
%>
	<fieldset>
		<textarea id="messageWindow" rows="10" cols="25" readonly="readonly"></textarea>
		<br /> <input id="inputMessage" type="text" /> <input type="submit"
			value="send" onclick="send()" />
	</fieldset>
	<script type="text/javascript">
>>>>>>> branch 'master' of https://github.com/tony0033/Mini2.git
    </script>
<<<<<<< HEAD
    </body>
    <script type="text/javascript">
        var textarea = document.getElementById("messageWindow");
        var webSocket = new WebSocket('ws://localhost:8888/broad/broadcasting');
        var inputMessage = document.getElementById('inputMessage');
    webSocket.onerror = function(event) {
      onError(event)
    };
    webSocket.onopen = function(event) {
      onOpen(event)
    };
    webSocket.onmessage = function(event) {
      onMessage(event)
    };
    function onMessage(event) {
    	var message = event.data.split("|");
    	var sender = message[0];
    	var content = message[1];
        textarea.value += sender + content + "\n";
    }
    function onOpen(event) {
        textarea.value += "채팅에 참여하셨습니다.\n";
    }
    function onError(event) {
      alert(event.data);
    }
    function send() {
        textarea.value += "나 : " + inputMessage.value + "\n";
        webSocket.send("<%= id%>" +":|" + inputMessage.value);
        inputMessage.value = "";
    }
    
  </script>
  
  
=======
</body>
<script type="text/javascript">
	var textarea = document.getElementById("messageWindow");
	var webSocket = new WebSocket('ws://localhost:8888/CommuProject/broadcasting');
	var inputMessage = document.getElementById('inputMessage');
	webSocket.onerror = function(event) {
		onError(event)
	};
	webSocket.onopen = function(event) {
		onOpen(event)
	};
	webSocket.onmessage = function(event) {
		onMessage(event)
	};
	function onMessage(event) {
		var message = event.data.split("|");
		var sender = message[0];
		var content = message[1];
		textarea.value += sender + content + "\n";
	}
	function onOpen(event) {
		textarea.value += "채팅에 참여하셨습니다.\n";
	}
	function onError(event) {
		alert(event.data);
	}
	function send() {
		textarea.value += "나 : " + inputMessage.value + "\n";
		webSocket.send("<%= id%>" + ":|" + inputMessage.value);
		inputMessage.value = "";
	}
</script>


>>>>>>> branch 'master' of https://github.com/tony0033/Mini2.git
</html>