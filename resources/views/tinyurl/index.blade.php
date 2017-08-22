<!doctype html>
<html lang="zh-CN">
<head>
    <META charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>短链生成器-by zexeo</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <style type="text/css">
        h1 {
            margin-top: 100px;
            margin-bottom: 40px;
            text-align: center;
            font-size: 50px;
        }

        .col-lg-8 {
            margin: 0 auto;
            float: none;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>短链生成器</h1>
    <div class="col-lg-8">
        <form method="post" action="/tinyurls/create" role="form">
            {{csrf_field()}}
            <div class="input-group">
                <input name="url" type="url" class="form-control input-lg" placeholder="请输入URL链接">
                <span class="input-group-btn">
		        <button class="btn btn-success btn-lg" type="submit">生成</button>
		      </span>
            </div><!-- /input-group -->
        </form>
        <br><br>
        @if(isset($orginal))
            <h2>您查询的URL:
                <a href="{{$orginal}}" target="_blank">{{$orginal}}</a>
            </h2>
        @endif
        @if(isset($result))
            <h2>您的短链:
                <a href="{{$result}}" target="_blank">
                    {{$result}}
                </a>
            </h2>
            <img src="http://6du.in/?qr={{$result}}}">
        @endif
        @if (count($errors) > 0)
            <div class="alert alert-warning alert-dismissable">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
    </div><!-- /.col-lg-8 -->
</div>
</body>
</html>