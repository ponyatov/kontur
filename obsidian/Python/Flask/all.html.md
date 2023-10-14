# `all.html`
#Flask 

- [[Python/Flask]]
	- [[static]]
	- [[templates]]
		- [[Python/Flask/all.html|all.html]]
		- [[Python/Flask/index.html|index.html]]

```html
<!DOCTYPE html>
<html lang="ru">
<head>
```
[[Bootstrap]] header
```html
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
```
```html
    <title>{{ env.head() }}</title>
    <link href="/static/logo.png" rel="shortcut icon">
```
[[Bootstrap]] dark theme
```html
    <link href="https://bootswatch.com/5/darkly/bootstrap.min.css" rel="stylesheet">
```
[[PEG.js]]
```html
    <link href="/static/highlight.css" rel="stylesheet">
```
[[css]]
```html
    <link href="/static/css.css" rel="stylesheet">
```
[[jQuery]]
```html
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    {% block head %}{% endblock %}
</head>
```
[[navbar]]
```html
<body>
    <div class="container-fluid">
        <nav class="navbar bg-dark">
            <img class="nav-logo" src="/static/logo.png">
            <span class="nav-brand">{{ env.head() }}</span>
            <pre id="localtime">date | time</pre>
        </nav>
        {% block body %}{% endblock %}
    </div>
</body>
```
[[Bootstrap]] script
```html
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>
```
[[SocketIO]]
```html
    <script src="https://cdnjs.cloudflare.com/ajax/libs/socket.io/4.0.1/socket.io.min.js"></script>
    <script>

    const sio = io();

    sio.on("localtime",(msg)=>{
        console.log("localtime",msg);
        $('#localtime').html(`${msg.date} | ${msg.time}`)
    })

    sio.on("reload",(msg)=>{
        console.log("reload",msg);
        document.location.reload();
    })

    </script>
```
[[PEG.js]]
```html
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pegjs/0.9.0/peg.min.js"></script>
    <script src="/static/highlight.js"></script>
```
custom script block
```html
    {% block script %}{% endblock %}
</html>
```
