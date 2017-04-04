<%-- 
    Document   : commander
    Created on : 2 avr. 2017, 17:45:31
    Author     : dalym
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false&language=fr"></script>
<script src="../assets/js/app.js"></script>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?key=AIzaSyA6Or_1q5CIJ_nrbMOEE50Jjv3BVLnNyb8
"></script>
<script type="text/javascript">
function CalculDistance()
{
	//récupération des champs du formulaire
	var adr_dep=document.forms[0].depart.value;
	
	var adr_arr=document.forms[0].arrive.value;
	
	
	var origine=adr_dep;
	var destination=adr_arr;
	
	//requête de distance auprès du service DistanceMatrix, avec ici une seule adresse de départ et une seule d'arrivée
	var service = new google.maps.DistanceMatrixService();
	service.getDistanceMatrix(
	  {
		origins: [origine],
		destinations: [destination],
		travelMode: google.maps.TravelMode.DRIVING,
		unitSystem: google.maps.UnitSystem.METRIC,
		avoidHighways: false,
		avoidTolls: false
	  }, callback);
}
	
function callback(response, status)
{
	if (status != google.maps.DistanceMatrixStatus.OK)
	{
		alert('Erreur : ' + status); //message d'erreur du serveur distant GG Maps
	}
	else
	{
		//réponses du serveur (
		var origins = response.originAddresses;
		var destinations = response.destinationAddresses;
		for (var i = 0; i < origins.length; i++)
		{
			var results = response.rows[i].elements;
			var dep = origins[i];
			if(dep!='')
			{
				for (var j = 0; j < results.length; j++)
				{
					var element = results[j];
					var statut = element.status;
					var arr = destinations[j];
					if(statut=='OK')
					{
						var dist = element.distance.value;
						document.forms[0].distance.value=parseInt(dist/1000);//distance en km
					}
					else if(statut=='NOT_FOUND')
					{
						alert("impossible de localiser l'adresse d'arrivée");
					}
					else if(statut=='ZERO_RESULTS')
					{
						alert("impossible de calculer cette distance");
					}
				}
			}
			else
			{
				alert("impossible de localiser l'adresse de départ");
			}
		}
	}
}
</script>
</head>

<body class="connecter">
 

<jsp:include page="common/nav.jsp">
        <jsp:param name="active" value="commander"></jsp:param>
    </jsp:include>

<br><br><br><br><br>



<div class="container">
	<div class="row">
		<div class="col-xs-12 col-md-6 col-md-offset-3">
			<h2>Specifiez votre commande</h2>

<form class="simple_form form-horizontal"  action="/JustFast/commander" accept-charset="UTF-8" method="post"> <!-- servlet confirmation -->
	<input name="utf8" type="hidden" value="✓">
	<input type="hidden" name="_method" value="patch">
	<input type="hidden" name="authenticity_token" value="SmHVEouQdmYPKqwtrtlwEu8Tz0QTbpvgBEekrIMnbD0tEryTNkD6Nq0yiaJU6j2C3g7GgJWLws58wL8tCDYgJw==">
	<div class="form-group string optional ride_content">
		<label class="string optional col-sm-3 control-label" for="ride_content">Je veux envoyer un(e)</label>
		<div class="col-sm-9">
                    <input class="string optional input-lg form-control" placeholder="" type="text" name="objet" id="ride_content" required="required">
		</div>
	</div>
	<div class="form-group text optional ride_description">
		<label class="text optional col-sm-3 control-label" for="ride_description">Description</label>
		<div class="col-sm-9">
			<textarea rows="6" class="text optional form-control" placeholder="Précisez ici les caractéristiques du ou des biens à envoyer (dimensions, poids, fragilité...)" name="description"  required="required"></textarea>
		</div>
	</div>
	<div class="form-group string optional ride_address_from">
		<label class="string optional col-sm-3 control-label" for="ride_address_from">De</label>
		<div class="col-sm-9">
                    <input class="string optional address-autocomplete input-lg form-control" autocomplete="off" onkeypress="return event.keyCode !== 13;" placeholder="Lieu de départ" type="text" name="depart" required="required">
			<p class="help-block">Tapez l'adresse puis cliquez sur la bonne proposition</p>
		</div>
	</div>
	<div class="form-group string optional ride_address_to">
		<label class="string optional col-sm-3 control-label" for="ride_address_to">A</label>
		<div class="col-sm-9">
			<input class="string optional address-autocomplete input-lg form-control" autocomplete="off" onkeypress="return event.keyCode !== 13;" placeholder="Lieu d'arrivée" type="text" name="arrive"  required="required">
			<p class="help-block">Tapez l'adresse puis cliquez sur la bonne proposition</p>
		</div>
	</div>
	<div class="form-group hidden ride_distance">
		<div class="col-sm-9">
			<input class="hidden form-control" type="hidden" name="ride[distance]" id="ride_distance">
		</div>
	</div>
	<div class="form-group hidden ride_duration">
		<div class="col-sm-9">
			<input class="hidden form-control" type="hidden" name="ride[duration]" id="ride_duration">
		</div>
	</div>
	<div class="form-group hidden ride_overview_polyline">
		<div class="col-sm-9">
			<input class="hidden form-control" type="hidden" name="ride[overview_polyline]" id="ride_overview_polyline">
		</div>
	</div>
	<div class="form-group hidden ride_placeid_from">
		<div class="col-sm-9">
			<input value="" class="hidden form-control" type="hidden" name="ride[placeid_from]" id="ride_placeid_from">
		</div>
	</div>
	<div class="form-group hidden ride_placeid_to">
		<div class="col-sm-9">
			<input value="" class="hidden form-control" type="hidden" name="ride[placeid_to]" id="ride_placeid_to">
		</div>
	</div>
	<div class="form-group string optional ride_deadline">
		<label class="string optional col-sm-3 control-label" for="ride_deadline">A livrer de préférence avant le</label>
		<div class="col-sm-9">
			<input class="string optional input-lg form-control" data-provide="datepicker" data-date-format="dd/mm/yyyy" data-date-orientation="top left" data-date-language="fr" data-date-autoclose="true" data-date-start-date="24/03/2017" value="" placeholder="24/03/2017" type="date" name="avant"  required="required">
		</div>
	</div>
	<div class="form-group select optional ride_package">
		<label class="select optional col-sm-3 control-label" for="ride_package" required="true">*Poids</label>
		<div class="col-sm-9">
                    <input class="string required input-lg form-control" type="number" min="1" name="poids"  required="required">
		</div>
	</div>
	<div class="form-group select optional ride_package">
		<label class="select optional col-sm-3 control-label" for="ride_package" required="true">*Distance(Km)</label>
		<div class="col-sm-9">
                    <input class="string required input-lg form-control" type="text"  name="distance" readonly="true"   required="required">
		</div>
	</div>
	
	
		<div class="form-group"><input type="submit" name="commit" value="Passer à l'étape suivante" class="btn btn-success btn-lg pull-right" onclick="CalculDistance();">
		</div>
	</form>


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
<script type='text/javascript'>
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
$("#passwordfield").on("keyup",function(){
    if($(this).val())
        $(".glyphicon-eye-open").show();
    else
        $(".glyphicon-eye-open").hide();
    });
$(".glyphicon-eye-open").mousedown(function(){
                $("#passwordfield").attr('type','text');
            }).mouseup(function(){
            	$("#passwordfield").attr('type','password');
            }).mouseout(function(){
            	$("#passwordfield").attr('type','password');
            });
</script>



</body>
</html>
