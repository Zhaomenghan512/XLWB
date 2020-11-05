<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Add Your favicon here -->
    <!--<link rel="icon" href="img/favicon.ico">-->
    <title>星龙微标</title>
    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <!-- Animation CSS -->
    <link href="/css/animate.min.css" rel="stylesheet">
    <link href="/css/font-awesome.min.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- Custom styles for this template -->
    <link href="/css/style.css" rel="stylesheet">
  </head>
  <body id="page-top">
  <div class="navbar-wrapper">
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header page-scroll">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/login">星龙微标</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a class="page-scroll" href="#page-top">首页</a></li>
            <li><a href="/type/allType">产品列表</a></li>
            <li><a class="page-scroll" href="#Profile">公司简介</a></li>
            <li><a class="page-scroll" href="#testimonials">关于我们</a></li>
            <li><a class="page-scroll" href="#div">定制产品</a></li>
            <li><a class="page-scroll" href="#contact">联系我们</a></li>
          </ul>
        </div>
      </div>
    </nav>
  </div>
  <div id="inSlider" class="carousel slide carousel-fade" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#inSlider" data-slide-to="0" class="active"></li>
      <li data-target="#inSlider" data-slide-to="1"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <div class="container">
          <div class="carousel-caption">
            <h1>星龙微标</h1>
              <h3>主要经营</h3><br/>

            <p>垫片，螺母，六角螺丝，自攻丝，平机螺母</p>
            <p>

            </p>
          </div>
          <div class="carousel-image wow zoomIn">
            <img src="img/logo.png" width="700px" height="500px" alt="laptop"/>
          </div>
        </div>
        <!-- Set background for slide in css -->
        <div class="header-back one"></div>

      </div>
      <div class="item">
        <div class="container">
          <div class="carousel-caption blank">
            <h1>星龙微标</h1><h3>做你最好的合伙人.</h3>
            <p>地址：河北省邯郸市永年区</p>
            <p></p>
          </div>
        </div>
        <!-- Set background for slide in css -->
        <div class="header-back two"></div>
      </div>
    </div>
    <a class="left carousel-control" href="#inSlider" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#inSlider" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>

  <section id="Profile" class="container features">
    <div class="row">
      <div class="col-lg-12 text-center">
        <div class="navy-line"></div>
        <h1>门市坐标<br/> <span class="navy"> </span> </h1>
        <p>河北省-邯郸市-永年区-中国国际标准件产业城-C1-5</p>
      </div>
    </div>
    <div class="row">
      <div class="col-md-3 text-center wow fadeInLeft">
        <div>
          <h2>门牌</h2>
          <img src="img/menpai.jpg" class="img-responsive"/>
          <%--<p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus.</p>--%>
        </div>
        <div class="m-t-lg">
          <h2>门口</h2>
          <img src="img/men.jpg" class="img-responsive"/>
          <%--<p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus.</p>--%>
        </div>
      </div>
      <div class="col-md-6 text-center  wow zoomIn">
        <img src="img/perspective.png" width="977px" height="525px" alt="dashboard" class="img-rounded">
      </div>

    </div>
  </section>

  <section id="testimonials" class="navy-section testimonials">

    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center wow zoomIn">
          <i class="fa fa-comment big-icon"></i>
          <h1>
            顾客评价
          </h1>
          <div class="testimonials-text">
            <i>"诚信是你价格不菲的鞋子，踏遍千山万水，质量也应永恒不变。"</i>
          </div>
          <small>
            <strong>星龙微标&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2020-4-9</strong>
          </small>
        </div>
      </div>
    </div>

  </section>
  <section id="div" class="features">
    <form>
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <div class="navy-line"></div>
          <h1>产品定制</h1>
          <p>客户们的要求我们尽可能去满足. </p>
        </div>
      </div>
      <table>
        <th></th>
        <th></th>
        <th></th>
        <th></th>
        <tr>
          <lable></lable><td></td>
        </tr>
        <tr>
          <lable></lable><td></td>
        </tr>
        <tr>
          <lable></lable><td></td>
        </tr>
        <tr>
          <lable></lable><td></td>
        </tr>
      </table>
    </div>
    </form>
  </section>

  <section id="contact" class="gray-section contact">
    <div class="container">
      <div class="row m-b-lg">
        <div class="col-lg-12 text-center">
          <div class="navy-line"></div>
          <h1>联系我们</h1>
          <p>你我之间，信任是桥梁，沟通是信使。</p>
        </div>
      </div>
      <div class="row m-b-lg">
        <div class="col-lg-3 col-lg-offset-3">
          <address>
            <strong><span class="navy">工厂地址：</span></strong><br/>
            电话号码<br/>
            移动电话<br/>
            <abbr title="WeChat">微信号</abbr>
          </address>
        </div>
        <div class="col-lg-4">
          <p class="text-color">
            河北省邯郸市永年县洺阳村工业区星龙微标<br>    0310-6660989<br> 15226954714  15100466998<br> 15226954714  15100466998
          </p>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12 text-center">
          <a href="mailto:33631575@qq.com" class="btn btn-primary">发送电子邮件</a>
          <p class="m-t-sm">
            将你的建议说出来，我们必定改善。
          </p>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-8 col-lg-offset-2 text-center m-t-lg m-b-lg">
          <p><strong>&copy; 2020 星龙微标</strong><br/></p>
        </div>
      </div>
    </div>
  </section>

  <script src="/js/jquery-2.1.1.js"></script>
  <script src="/js/pace.min.js"></script>
  <script src="/js/bootstrap.min.js"></script>
  <script src="/js/classie.js"></script>
  <script src="/js/cbpAnimatedHeader.js"></script>
  <script src="/js/wow.min.js"></script>
  <script src="/js/inspinia.js"></script>
  </body>
</html>
