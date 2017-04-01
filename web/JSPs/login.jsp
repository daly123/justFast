<%-- 
    Document   : login
    Created on : 1 avr. 2017, 15:24:09
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
        <link href="/JustFast/assets/css/style1.css" rel="stylesheet">
        <link href="/JustFast/assets/css/style.css" rel="stylesheet">
        <link href="/JustFast/assets/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
    </head>

    <body class="connecter" >



        <jsp:include page="common/nav.jsp">
            <jsp:param name="active" value="login"></jsp:param>
        </jsp:include>

        <div class="login" bgcolor="FAFAFA">
            <h1><font color="black">Authentification</font></h1>
            <form action="/JustFast/login" method="POST">
                <input type="text" name="username" placeholder="Login" required="required" />
                <input type="password" name="password" placeholder="Mot de passe" required="required" />
                <button type="submit" class="btn btn-primary btn-block btn-large">Connexion</button>
            </form>
            <p>${error}</p>
            <br>
            <center>
                <a href="/ProjetJ2EE/ServletOubli" style="color:white;text-decoration:none;"><font color="black">Nouveau utilisateur? <font></a>
            </center>
        </div>






        <script type='text/javascript' src='/JustFast/assets/js/jquery.js'></script>
        <script type='text/javascript' src='/JustFast/assets/js/bootstrap.min.js'></script>
        <script type='text/javascript' src='/JustFast/assets/js/scrollReveal.js'></script>
        <script type='text/javascript'>
            jQuery(document).ready(function () {


                $(".top").click(function () {
                    $("html, body").animate({scrollTop: 0}, "slow");
                    return false;
                });
                $(".btMenu").click(function () {

                    if ($(".menu").children(".menuItem").css("display") == "none") {
                        $(".menu").children(".menuItem").slideDown();
                    }
                    else {
                        $(".menu").children(".menuItem").slideUp();
                    }
                });
                $(window).resize(function () {
                    if ($(window).innerWidth() > 900) {
                        $(".menu").children(".menuItem").css("display", "block");
                    }
                    else {
                        $(".menu").children(".menuItem").css("display", "none");
                    }
                });

                (function (k) {
                    'use strict';
                    k(['jquery'], function ($) {
                        var j = $.scrollTo = function (a, b, c) {
                            return $(window).scrollTo(a, b, c)
                        };
                        j.defaults = {axis: 'xy', duration: parseFloat($.fn.jquery) >= 1.3 ? 0 : 1, limit: !0};
                        j.window = function (a) {
                            return $(window)._scrollable()
                        };
                        $.fn._scrollable = function () {
                            return this.map(function () {
                                var a = this, isWin = !a.nodeName || $.inArray(a.nodeName.toLowerCase(), ['iframe', '#document', 'html', 'body']) != -1;
                                if (!isWin)
                                    return a;
                                var b = (a.contentWindow || a).document || a.ownerDocument || a;
                                return/webkit/i.test(navigator.userAgent) || b.compatMode == 'BackCompat' ? b.body : b.documentElement
                            })
                        };
                        $.fn.scrollTo = function (f, g, h) {
                            if (typeof g == 'object') {
                                h = g;
                                g = 0
                            }
                            if (typeof h == 'function')
                                h = {onAfter: h};
                            if (f == 'max')
                                f = 9e9;
                            h = $.extend({}, j.defaults, h);
                            g = g || h.duration;
                            h.queue = h.queue && h.axis.length > 1;
                            if (h.queue)
                                g /= 2;
                            h.offset = both(h.offset);
                            h.over = both(h.over);
                            return this._scrollable().each(function () {
                                if (f == null)
                                    return;
                                var d = this, $elem = $(d), targ = f, toff, attr = {}, win = $elem.is('html,body');
                                switch (typeof targ) {
                                    case'number':
                                    case'string':
                                        if (/^([+-]=?)?\d+(\.\d+)?(px|%)?$/.test(targ)) {
                                            targ = both(targ);
                                            break
                                        }
                                        targ = win ? $(targ) : $(targ, this);
                                        if (!targ.length)
                                            return;
                                    case'object':
                                        if (targ.is || targ.style)
                                            toff = (targ = $(targ)).offset()
                                }
                                var e = $.isFunction(h.offset) && h.offset(d, targ) || h.offset;
                                $.each(h.axis.split(''), function (i, a) {
                                    var b = a == 'x' ? 'Left' : 'Top', pos = b.toLowerCase(), key = 'scroll' + b, old = d[key], max = j.max(d, a);
                                    if (toff) {
                                        attr[key] = toff[pos] + (win ? 0 : old - $elem.offset()[pos]);
                                        if (h.margin) {
                                            attr[key] -= parseInt(targ.css('margin' + b)) || 0;
                                            attr[key] -= parseInt(targ.css('border' + b + 'Width')) || 0
                                        }
                                        attr[key] += e[pos] || 0;
                                        if (h.over[pos])
                                            attr[key] += targ[a == 'x' ? 'width' : 'height']() * h.over[pos]
                                    } else {
                                        var c = targ[pos];
                                        attr[key] = c.slice && c.slice(-1) == '%' ? parseFloat(c) / 100 * max : c
                                    }
                                    if (h.limit && /^\d+$/.test(attr[key]))
                                        attr[key] = attr[key] <= 0 ? 0 : Math.min(attr[key], max);
                                    if (!i && h.queue) {
                                        if (old != attr[key])
                                            animate(h.onAfterFirst);
                                        delete attr[key]
                                    }
                                });
                                animate(h.onAfter);
                                function animate(a) {
                                    $elem.animate(attr, g, h.easing, a && function () {
                                        a.call(this, targ, h)
                                    })
                                }}
                            ).end()
                        };
                        j.max = function (a, b) {
                            var c = b == 'x' ? 'Width' : 'Height', scroll = 'scroll' + c;
                            if (!$(a).is('html,body'))
                                return a[scroll] - $(a)[c.toLowerCase()]();
                            var d = 'client' + c, html = a.ownerDocument.documentElement, body = a.ownerDocument.body;
                            return Math.max(html[scroll], body[scroll]) - Math.min(html[d], body[d])
                        };
                        function both(a) {
                            return $.isFunction(a) || typeof a == 'object' ? a : {top: a, left: a}
                        }
                        return j
                    })
                }(typeof define === 'function' && define.amd ? define : function (a, b) {
                    if (typeof module !== 'undefined' && module.exports) {
                        module.exports = b(require('jquery'))
                    } else {
                        b(jQuery)
                    }
                }));

                $(".menu").children("li:nth-child(3)").click(function () {
                    $("body").scrollTo("#about", 600);

                });

                $(".menu").children("li:nth-child(4)").click(function () {
                    $("body").scrollTo("#mission", 600);
                });

                $(".menu").children("li:nth-child(5)").click(function () {

                    $("body").scrollTo("#whyus", 600);
                });

                $(".menu").children("li:nth-child(6)").click(function () {
                    $("body").scrollTo("#whychose", 600);
                });

            });

            (function ($) {
                window.scrollReveal = new scrollReveal();
            })();

        </script>
        <script type='text/javascript'>
            window.onscroll = function () {
                scrollFunction()
            };

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
