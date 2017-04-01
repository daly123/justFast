<%-- 
    Document   : home
    Created on : 1 avr. 2017, 14:51:44
    Author     : dalym
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>
Just Fast Delivery service 
</title>
<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
<link href="/JustFast/assets/css/bootstrap.min.css" rel="stylesheet">
<link href="/JustFast/assets/css/style.css" rel="stylesheet">
<link href="/JustFast/assets/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>
<body>
 
    <jsp:include page="common/nav.jsp">
        <jsp:param name="active" value="home"></jsp:param>
    </jsp:include>
  <!-- WRAPPER STARTS HERE-->
<div class='wrapper'>
<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
<header><!-- HEADER STARTS HERE-->

<div class='container titles yomer-text-center'>
<h1 data-scroll-reveal="wait 0.25s, then enter top and move 40px over 1s">Just Fast, just the best</h1>
<div class='subhead'>
 <div class='buttons'>
<form method="POST" action="#">
      <div class="input-group mb-2 mr-sm-2 mb-sm-0">
    <input type="text" class="form-control" id="inlineFormInputGroup" placeholder="Entrez le numero de suivi ici"/>

                        <button type="button" class="btn btn-danger btn-lg">&nbsp&nbsp&nbsp Suivre &nbsp&nbsp&nbsp&nbsp</button>
					</div>
                    </form>
					
</div> 
</div>
</div>
<div class=" logos"><img src="/JustFast/assets/img/logos.png"></div>
 <a class="godown animate" href="#first">Down</a>
</header><!-- /HEADER ENDS HERE-->
<!-- ABOUT US STARTS HERE-->

<section class='aboutus' id='about'>
<div class='container'>
<div class="row">
                <div class="col-md-12 yomer-text-center">
                    <h2>Comment ça marche</h2>
                    <p class="bigtext">
        Expédiez dès aujourd’hui! Avec <font color="#cc3333">JF Delivery</font>, vous pouvez expédier un colis, avoir des tarifs d’envoi express,trouver des destinations et savoir un peu plus sur les envois.Nous sommes là pour vous accompagner et vous faire profiter de notre expertise.
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3 yomer-text-center">
                    <a class="icon-widget icon-follow" href="#" data-scroll-reveal="wait 0.25s, then enter top and move 70px over 1s">Share</a>
                    <h3>S'inscrire</h3>
                    <p>
                        Pour profiter de nos services professionnelles ,veuillez d'abord vous inscrire en introduisant quelques informations personelles qui seront utiles pour le traitement de vos commande ultérieurement.
                    </p>
                </div>
                <div class="col-md-3 yomer-text-center">
                    <a class="icon-widget icon-market" href="#" data-scroll-reveal="wait 0.25s, then enter top and move 70px over 1s">Follow</a>
                    <h3>Commander</h3>
                    <p>
                  Apres avoir connecter a votre compte créé précédemment, vous pouvez specifiez le contenu de votre colis,la destination,calculer les frais estimee de son expedition..
                    </p>
                </div>
                <div class="col-md-3 yomer-text-center">
                    <a class="icon-widget icon-recommend" href="#" data-scroll-reveal="wait 0.25s, then enter top and move 70px over 1s">Market</a>
                    <h3>Confirmer et Payer</h3>
                    <p>
                       Selon vos choix faits a l'etape precedente , vous obtiendrez les details de votre commande pour les revizer avant de confirmer 
                       la commande et payer ses frais.

                    </p>
                </div>
                <div class="col-md-3 yomer-text-center">
                    <a class="icon-widget icon-share" href="#" data-scroll-reveal="wait 0.25s, then enter top and move 70px over 1s">Recommend</a>
                    <h3>Suivre votre colis</h3>
                
                    <p>
                       Dès que vous confirmez et payez votre commande,vous pouvez désormais suivre l'etat et l'emplacement de votre colis en utilisant le numero de suivi que vous obtenez.
                    </p>
                    
                </div>                
            </div>

</div>

</section>
<!-- /ABOUT US ENDS HERE HERE-->
<!-- OUR MISSION STARTS HERE-->
<section class="ourmission " id='mission'>
        <div class="container">
            <div class="row">
                <div class="col-md-12 yomer-text-center">
                    <h3>“Notre dernier rapport annuel montre une augmentation du niveau de satisfaction de notre vaste clientèle avec une pourcentage qui touche la
                        95%.”</h3> 
                    <small>Daly mohamed, Co-fondateur de <font color="#7a42f4">JF</font></small>
                </div>
            </div>
        </div>
    </section>

<!--/ OUR MISSION ENDS HERE-->
<!--OUR FEATURE STARTS HERE-->
<section class="feature" id='whyus'>
        <div class="container">
            <div class="row">
                <div class="col-md-12 yomer-text-center">
                    <h2>Pourquoi Nous ?</h2>
                    <p class="bigtext">Nous offrons des services juges de haute qualite de la part de nos clients, avec les prix les plus competetitfs du marche.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    
                    <ul id="feature-tabs" class="nav nav-tabs" role="tablist">
                      <li role="presentation" class="active"><a href="#works" role="tab" data-toggle="tab">Inscription simple</a></li>
                      <li role="presentation"><a href="#webtools" role="tab" data-toggle="tab">atteindre plus de territoire</a></li>
                      <li role="presentation"><a href="#alerts" role="tab" data-toggle="tab">suivi des colis</a></li>
                      <li role="presentation"><a href="#mobile" role="tab" data-toggle="tab">notifications</a></li>                      
                      <li role="presentation"><a href="#analytics" role="tab" data-toggle="tab">reclamations</a></li>
                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane fade in active" id="works">
                            <div class="row">
                                <div class="col-md-4"><img src="/JustFast/assets/img/01_itjustworks_2x.png"></div>
                                <div class="col-md-8">
                                    <p>
                                      <font size="24">
                                        Avec un formulaire d'inscription simple, vous pouvez aisement nous rejoindre et profiter de nos services.
                                      </font>
									  
									  
									</p>
                                   
                                </div>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="webtools">
                            <div class="row">
                                <div class="col-md-4"><img src="/JustFast/assets/img/more_reach_2x.png"></div>
                                <div class="col-md-8">
                                    <p>
                                       <font size="24">
                                       lkahsldjfblajbsdf.
                                      </font>
									
									</p>
                                    
                                </div>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="alerts">
                            <div class="row">
                                <div class="col-md-4"><img src="/JustFast/assets/img/02_websitetools_2x.png"></div>
                                <div class="col-md-8">
                                    <p>
                                        <font size="24">
                                       lkahsldjfblajbsdf.
                                      </font>
									
									
									</p>
                                    
                                </div>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="mobile">
                            <div class="row">
                                <div class="col-md-4"><img src="/JustFast/assets/img/03_activityemail_2x.png"></div>
                                <div class="col-md-8">
                                    <p>
                                       <font size="24">
                                       lkahsldjfblajbsdf.
                                      </font>
								   </p>
                                    
                                </div>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="analytics">
                            <div class="row">
                                <div class="col-md-4"><img src="/JustFast/assets/img/04_analytics_2x.png"></div>
                                <div class="col-md-8">
                                    <p>
                                      
									  <font size="24">
                                       lkahsldjfblajbsdf.
                                      </font>

								   </p>                                    
                                    
                                </div>
                            </div>
                        </div>
                    </div>

                    
                </div>
            </div>
        </div>
    </section>
<!--/ OUR FEATURE ENDS  HERE-->
<!--WHY CHOSE STARTS HERE HERE-->

<section class="whychose " id='whychose'>
        <div class="container">
            <div class="row">
                <div class="col-md-12 yomer-text-center">
                    
            
                <div class="col-md-12 yomer-text-center">
                    <h3>“Être innovant ne signifie pas créer une invention technologique ou sortir un nouveau produit...c’est être capable de développer des stratégies de différenciation,ç'est ça notre but”</h3> 
                    <small>Dkhil nidhal, Co-Foundateur de  <font color="#bc091e">JF</font></small>
                </div>
            </div>
        </div>
		</div>
    </section>
	
	
	
	<!-- FOOTER STARTS HERE-->
<section class="testimonial " id='testimonial'>
        <div class="container">
             <div class="row">
                <div class="col-lg-12">
                    <div class="yomer-text-center">
                        <h2>Ce que nos clients pensent de nous</h2>
                        <p>Quelques témoignages a propos notre service.</p>
                    </div>
                    <div class="gap"></div>
                    <div class="row">
                        <div class="col-md-6">
                            <blockquote>
                                <p>Ce service incomparable nous a bien aidée à atteindre nos clients sur tous le territoire tunisien.</p>
                                <small>Directeur commercial de  <cite title="Source Title">Tunisianet</cite></small>
                            </blockquote>
                            <blockquote>
                                <p>Notre co-operation avec Just Fast etait un grand pas en avant pour notre societe et la qualite de notre service.</p>
                                <small>Directeur Marketing de <cite title="Source Title">MyTek</cite></small>
                            </blockquote>
                        </div>
                        <div class="col-md-6">
                            <blockquote>
                                <p>Grace a Just Fast,nous avons aboutit a atteindre beaucoup plus des clients et etendre notre clientele.</p>
                                <small> Responsable Marketing de<cite title="Source Title">Scoop informatique</cite></small>
                            </blockquote>
                            <blockquote>
                                <p>Just Fast nous a offert une nouvelle stratgie qui a mieux valorisee nos services.</p>
                                <small>Responsable commercial de <cite title="Source Title"> MicroMedia</cite></small>
                            </blockquote>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

<!--/ FOOTER ENDS HERE-->

<!-- SOCIAL STARTS HERE-->
<section class="social " id='social'>
        <div class="container">
            <div class="row">
                <div class="col-md-12 ">
                    <div class="social_icons">
          <ul>
            <li class="facebook"> <a href="www.facebook.com/mohamed.daly.5817" data-scroll-reveal="wait 0.25s, then enter top and move 40px over 1s"><i class="fa fa-facebook"></i> </a> </li>
            <li class="twitter"> <a href="#." data-scroll-reveal="wait 0.25s, then enter top and move 40px over 1s"><i class="fa fa-twitter"></i> </a> </li>
            <li class="googleplus"> <a href="#." data-scroll-reveal="wait 0.25s, then enter top and move 40px over 1s"><i class="fa fa-google"></i> </a> </li>
            <li class="linkedin "> <a href="#." data-scroll-reveal="wait 0.25s, then enter top and move 40px over 1s"><i class="fa fa-linkedin"></i> </a> </li>
          </ul>
        </div>
                </div>
            </div>
        </div>
    </section>

<!--/ SOCIAL ENDS HERE-->



</div> <!-- /WRAPPER ENDS HERE DESIGNED BY VIJAYAN PP-->
<script type='text/javascript' src='/JustFast/assets/js/jquery.js'></script>
<script type='text/javascript' src='/JustFast/assets/js/bootstrap.min.js'></script>
<script type='text/javascript' src='/JustFast/assets/js/scrollReveal.js'></script>
<script type='text/javascript'>
    jQuery(document).ready(function(){  
		
			
				$(".top").click(function(){
					$("html, body").animate({ scrollTop: 0 }, "slow");
					return false;
				});
				$(".btMenu").click(function(){
			
					if($(".menu").children(".menuItem").css("display") == "none"){
						$(".menu").children(".menuItem").slideDown();
					}
					else{
						$(".menu").children(".menuItem").slideUp();
					}
				});
				$(window).resize(function(){
					if($(window).innerWidth() > 900){
						$(".menu").children(".menuItem").css("display", "block");
					}
					else{
						$(".menu").children(".menuItem").css("display", "none");
					}
				});
				
				(function(k){'use strict';k(['jquery'],function($){var j=$.scrollTo=function(a,b,c){return $(window).scrollTo(a,b,c)};j.defaults={axis:'xy',duration:parseFloat($.fn.jquery)>=1.3?0:1,limit:!0};j.window=function(a){return $(window)._scrollable()};$.fn._scrollable=function(){return this.map(function(){var a=this,isWin=!a.nodeName||$.inArray(a.nodeName.toLowerCase(),['iframe','#document','html','body'])!=-1;if(!isWin)return a;var b=(a.contentWindow||a).document||a.ownerDocument||a;return/webkit/i.test(navigator.userAgent)||b.compatMode=='BackCompat'?b.body:b.documentElement})};$.fn.scrollTo=function(f,g,h){if(typeof g=='object'){h=g;g=0}if(typeof h=='function')h={onAfter:h};if(f=='max')f=9e9;h=$.extend({},j.defaults,h);g=g||h.duration;h.queue=h.queue&&h.axis.length>1;if(h.queue)g/=2;h.offset=both(h.offset);h.over=both(h.over);return this._scrollable().each(function(){if(f==null)return;var d=this,$elem=$(d),targ=f,toff,attr={},win=$elem.is('html,body');switch(typeof targ){case'number':case'string':if(/^([+-]=?)?\d+(\.\d+)?(px|%)?$/.test(targ)){targ=both(targ);break}targ=win?$(targ):$(targ,this);if(!targ.length)return;case'object':if(targ.is||targ.style)toff=(targ=$(targ)).offset()}var e=$.isFunction(h.offset)&&h.offset(d,targ)||h.offset;$.each(h.axis.split(''),function(i,a){var b=a=='x'?'Left':'Top',pos=b.toLowerCase(),key='scroll'+b,old=d[key],max=j.max(d,a);if(toff){attr[key]=toff[pos]+(win?0:old-$elem.offset()[pos]);if(h.margin){attr[key]-=parseInt(targ.css('margin'+b))||0;attr[key]-=parseInt(targ.css('border'+b+'Width'))||0}attr[key]+=e[pos]||0;if(h.over[pos])attr[key]+=targ[a=='x'?'width':'height']()*h.over[pos]}else{var c=targ[pos];attr[key]=c.slice&&c.slice(-1)=='%'?parseFloat(c)/100*max:c}if(h.limit&&/^\d+$/.test(attr[key]))attr[key]=attr[key]<=0?0:Math.min(attr[key],max);if(!i&&h.queue){if(old!=attr[key])animate(h.onAfterFirst);delete attr[key]}});animate(h.onAfter);function animate(a){$elem.animate(attr,g,h.easing,a&&function(){a.call(this,targ,h)})}}).end()};j.max=function(a,b){var c=b=='x'?'Width':'Height',scroll='scroll'+c;if(!$(a).is('html,body'))return a[scroll]-$(a)[c.toLowerCase()]();var d='client'+c,html=a.ownerDocument.documentElement,body=a.ownerDocument.body;return Math.max(html[scroll],body[scroll])-Math.min(html[d],body[d])};function both(a){return $.isFunction(a)||typeof a=='object'?a:{top:a,left:a}}return j})}(typeof define==='function'&&define.amd?define:function(a,b){if(typeof module!=='undefined'&&module.exports){module.exports=b(require('jquery'))}else{b(jQuery)}}));
				
				$(".menu").children("li:nth-child(3)").click(function(){
				$("body").scrollTo("#about", 600);
                				
				});
				
				$(".menu").children("li:nth-child(4)").click(function(){
				$("body").scrollTo("#mission", 600);
				});
				
				$(".menu").children("li:nth-child(5)").click(function(){
				
				$("body").scrollTo("#whyus", 600);
				});
				
				$(".menu").children("li:nth-child(6)").click(function(){
				$("body").scrollTo("#whychose", 600);
				});
				
			});

			(function($) {
      window.scrollReveal = new scrollReveal();
    })();
		

</script>
<script type="text/javascript">

        window.onscroll = function() {scrollFunction()};

function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        document.getElementById("myBtn").style.display = "block";
    } else {
        document.getElementById("myBtn").style.display = "none";
    }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
    document.body.scrollTop = 0; // For Chrome, Safari and Opera 
    document.documentElement.scrollTop = 0; // For IE and Firefox
}
</script>
</body>
</html>