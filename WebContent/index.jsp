<!DOCTYPE html>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.ipartek.formacion.hola.pojo.Ingrediente"%>
<%@page import="com.ipartek.formacion.hola.pojo.Receta"%>
<%@page import="java.util.ArrayList"%>
<html lang="es">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Web Recetas</title>

    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Theme CSS -->
    <link href="css/freelancer.min.css" rel="stylesheet">
     <!-- Custom CSS -->
    <link href="css/custom.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="page-top" class="index">

    <!-- Navigation -->
    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top navbar-custom">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="#page-top">WEB RECETAS</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li class="page-scroll">
                        <a href="#portfolio">Recetas</a>
                    </li>
                    <li class="page-scroll">
                        <a href="menu-del-dia.jsp">Menu del Dia</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#contact">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- Header -->
    <header>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <img class="img-responsive logo-home" src="img/profile.png" alt="logotip recetas app">
                    <div class="intro-text">
                        <span class="name">Komilones</span>
                        <hr class="star-light">
                        <span class="skills">Sencillo, facil y para toda la familia	</span>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Recetas Destacadas GRID SECTION -->
    <section id="portfolio">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Recetas Destacadas</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
            <%
            	ArrayList<Receta> recetas = new ArrayList<Receta>();
            	ArrayList<Ingrediente> ingredientes = new ArrayList<Ingrediente>();

            	ingredientes.add(new Ingrediente("pimiento verde", 0.5f, false));
            	ingredientes.add(new Ingrediente("Bonito", 500, false));
            	ingredientes.add(new Ingrediente("patatas", 4, false));
            	ingredientes.add(new Ingrediente("ajo", 1, false));
            
            	Receta marmitako = new Receta("Marmitako",ingredientes);
            	marmitako.setImagen("img/marmitako.jpg");
            	marmitako.setComensales(2);
            	marmitako.setDificultad("moderada");
            	marmitako.setTiempo(60);
            	marmitako.setDescripcion("Rico, Rico");
            	recetas.add(marmitako);
            	
            	ingredientes  = new ArrayList<Ingrediente>();
            	ingredientes.add(new Ingrediente("huevo", 3, false));
            	ingredientes.add(new Ingrediente("cebolla", 1, false));
            	ingredientes.add(new Ingrediente("patatas", 4, false));
            	
            	Receta tortilla = new Receta("Tortilla de Patata",ingredientes);
            	tortilla.setImagen("img/tortilla.jpg");
            	recetas.add(tortilla);
            	
            	ingredientes  = new ArrayList<Ingrediente>(); 
            	ingredientes.add(new Ingrediente("solomillo", 1, false));
            	ingredientes.add(new Ingrediente("ajo", 1, false));
            	ingredientes.add(new Ingrediente("patatas", 2, false));
            	Receta solomillo = new Receta("Solomillo", ingredientes);
            	solomillo.setImagen("img/solomillo.jpg");
            	recetas.add(solomillo);
            	
            	ingredientes  = new ArrayList<Ingrediente>();
            	ingredientes.add(new Ingrediente("chipirones", 1, false));
            	ingredientes.add(new Ingrediente("tinta", 1, false));
            	Receta chipirones = new Receta("Chipirones", ingredientes);
            	chipirones.setImagen("img/chipirones.jpg");
            	recetas.add(chipirones);
            	
            	ingredientes  = new ArrayList<Ingrediente>();
            	ingredientes.add(new Ingrediente("bacalao", 1, false));
            	ingredientes.add(new Ingrediente("ajo", 1, false));
            	ingredientes.add(new Ingrediente("guindilla", 0.5f, false));
            	Receta bacalao = new Receta("Bacalao", ingredientes);
            	bacalao.setImagen("img/bacalao.jpg");
            	recetas.add(bacalao);
            	
            	ingredientes  = new ArrayList<Ingrediente>();
            	ingredientes.add(new Ingrediente("mejillones", 6, false));
            	ingredientes.add(new Ingrediente("ajo", 1, false));
            	Receta mejillones = new Receta("mejillones", ingredientes);     
                mejillones.setImagen("img/mejillones.jpg");
                recetas.add(mejillones);
            	
            	Receta receta = null;
            	for (int i=0;i<recetas.size();i++){
            		receta = recetas.get(i);
            %>
                <div class="col-sm-4 portfolio-item">
                    <a href="#portfolioModal<%=i%>" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="<%=receta.getImagen()%>" class="img-responsive logo-home" alt="<%=receta.getTitulo()%>">
                    </a>
                </div>
            <%
            } 
            %>
            </div>
        </div>
    </section>

    <!-- About Section -->
    <section class="success" id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>About</h2>
                    <hr class="star-light">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-lg-offset-2">
                    <p>Freelancer is a free bootstrap theme created by Start Bootstrap. The download includes the complete source files including HTML, CSS, and JavaScript as well as optional LESS stylesheets for easy customization.</p>
                </div>
                <div class="col-lg-4">
                    <p>Whether you're a student looking to showcase your work, a professional looking to attract clients, or a graphic artist looking to share your projects, this template is the perfect starting point!</p>
                </div>
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <a href="#" class="btn btn-lg btn-outline">
                        <i class="fa fa-download"></i> Download Theme
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Contact Me</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
                    <!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->
                    <form name="sentMessage" id="contactForm" novalidate>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Name</label>
                                <input type="text" class="form-control" placeholder="Name" id="name" required data-validation-required-message="Please enter your name.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Email Address</label>
                                <input type="email" class="form-control" placeholder="Email Address" id="email" required data-validation-required-message="Please enter your email address.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Phone Number</label>
                                <input type="tel" class="form-control" placeholder="Phone Number" id="phone" required data-validation-required-message="Please enter your phone number.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Message</label>
                                <textarea rows="5" class="form-control" placeholder="Message" id="message" required data-validation-required-message="Please enter a message."></textarea>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <br>
                        <div id="success"></div>
                        <div class="row">
                            <div class="form-group col-xs-12">
                                <button type="submit" class="btn btn-success btn-lg">Send</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="text-center">
        <div class="footer-above">
            <div class="container">
                <div class="row">
                    <div class="footer-col col-md-4">
                        <h3>Location</h3>
                        <p>3481 Melrose Place
                            <br>Beverly Hills, CA 90210</p>
                    </div>
                    <div class="footer-col col-md-4">
                        <h3>Around the Web</h3>
                        <ul class="list-inline">
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-facebook"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-google-plus"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-twitter"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-linkedin"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-dribbble"></i></a>
                            </li>
                        </ul>
                    </div>
                    <div class="footer-col col-md-4">
                        <h3>About Freelancer</h3>
                        <p>Freelance is a free to use, open source Bootstrap theme created by <a href="http://startbootstrap.com">Start Bootstrap</a>.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-below">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        Copyright &copy; Your Website 2016
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
    <div class="scroll-top page-scroll hidden-sm hidden-xs hidden-lg hidden-md">
        <a class="btn btn-primary" href="#page-top">
            <i class="fa fa-chevron-up"></i>
        </a>
    </div>

	<%

	receta = null;
	for (int i=0;i<recetas.size();i++){
		receta = recetas.get(i);
	%>
    <!-- Portfolio Modals -->
    <div class="portfolio-modal modal fade" id="portfolioModal<%=i%>" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2><%=receta.getTitulo() %></h2>
                            <hr class="star-primary">
                            <img src="<%=receta.getImagen() %>" class="img-responsive img-centered" alt="<%=receta.getTitulo() %>">
                            <p><%=receta.getDescripcion() %></p>
                            <ul class="list-inline item-details">
                                <%                                
                                ingredientes= receta.getIngredientes();
                                for(int x=0; x<ingredientes.size();x++){
                                	out.print("<li>"+ingredientes.get(x).getNombre()+"</li>");
                                }
                                %>
                            </ul>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%
	}
    %>

    <!-- jQuery -->
    <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    <!-- Theme JavaScript -->
    <script src="js/freelancer.min.js"></script>

</body>

</html>
