<%--
  Created by IntelliJ IDEA.
  User: OS
  Date: 3/1/2023
  Time: 9:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content=""/>
    <meta name="author" content=""/>
    <meta name="robots" content=""/>
    <meta name="description" content="Blissful Coffee Admin"/>
    <meta property="og:title" content="Blissful Coffee Admin"/>
    <meta property="og:description" content="Blissful Coffee Admin"/>
    <meta property="og:image" content="https://davur.dexignzone.com/xhtml/page-error-404.html"/>
    <meta name="format-detection" content="telephone=no">
    <title>Blissful Coffee Admin </title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="../template/images/icon/logo.png">
    <link href="../template/vendor/jqvmap/css/jqvmap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../template/vendor/chartist/css/chartist.min.css">
    <link href="../template/vendor/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet">
    <link href="../template/css/style.css" rel="stylesheet">
    <link href="../template/2.0/LineIcons.css" rel="stylesheet">
    <link href="../template/vendor/owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="../css/index.css" rel="stylesheet">

    <link href="../css/login.css" rel="stylesheet">
    <link rel="stylesheet" href="../template/vendor/chartist/css/chartist.min.css">
    <link href="../template/css/style.css" rel="stylesheet">

    <!-- Daterange picker -->
    <link href="../template/vendor/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
    <!-- Clockpicker -->
    <link href="../template/vendor/clockpicker/css/bootstrap-clockpicker.min.css" rel="stylesheet">
    <!-- asColorpicker -->
    <link href="../template/vendor/jquery-asColorPicker/css/asColorPicker.min.css" rel="stylesheet">
    <!-- Material color picker -->
    <link href="../template/vendor/bootstrap-material-datetimepicker/css/bootstrap-material-datetimepicker.css" rel="stylesheet">
    <!-- Pick date -->
    <link rel="stylesheet" href="../template/vendor/pickadate/themes/default.css">
    <link rel="stylesheet" href="../template/vendor/pickadate/themes/default.date.css">

    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body>
<!-- Required vendors -->
<script src="../template/vendor/global/global.min.js"></script>
<script src="../template/vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
<script src="../template/vendor/chart.js/Chart.bundle.min.js"></script>
<script src="../template/js/custom.min.js"></script>
<script src="../template/js/deznav-init.js"></script>

<!-- Counter Up -->
<script src="../template/vendor/waypoints/jquery.waypoints.min.js"></script>
<script src="../template/vendor/jquery.counterup/jquery.counterup.min.js"></script>

<!-- Apex Chart -->
<script src="../template/vendor/apexchart/apexchart.js"></script>

<!-- Chart piety plugin files -->
<script src="../template/vendor/peity/jquery.peity.min.js"></script>

<!-- Dashboard 1 -->
<script src="../template/js/dashboard/dashboard-1.js"></script>
<script src="../template/vendor/owl-carousel/owl.carousel.js"></script>
<script>
    function widgetCarousel() {

        /*  testimonial one function by = owl.carousel.js */
        jQuery('.widget-carousel').owlCarousel({
            loop: false,
            margin: 30,
            nav: true,
            autoplay: true,
            autoplaySpeed: 3000,
            navSpeed: 3000,
            paginationSpeed: 3000,
            slideSpeed: 3000,
            smartSpeed: 3000,
            dots: false,
            navText: ['<i class="fa fa-caret-left"></i>', '<i class="fa fa-caret-right"></i>'],
            responsive: {
                0: {
                    items: 1
                },

                480: {
                    items: 1,
                    stagePadding: 100
                },
                767: {
                    items: 2,
                },

                1200: {
                    items: 3
                },
                1750: {
                    items: 4
                }
            }
        })
    }

    function carouselReview() {
        /*  testimonial one function by = owl.carousel.js */
        jQuery('.testimonial-one').owlCarousel({
            loop: true,
            autoplay: true,
            margin: 0,
            nav: false,
            dots: false,
            navText: [''],
            responsive: {
                0: {
                    items: 1
                },

                480: {
                    items: 1
                },

                767: {
                    items: 1
                },
                1000: {
                    items: 1
                },
                1400: {
                    items: 1
                }
            }
        })
        /*Custom Navigation work*/
        jQuery('#next-slide').on('click', function () {
            $('.testimonial-one').trigger('next.owl.carousel');
        });

        jQuery('#prev-slide').on('click', function () {
            $('.testimonial-one').trigger('prev.owl.carousel');
        });
        /*Custom Navigation work*/
    }

    jQuery(window).on('load', function () {
        setTimeout(function () {
            widgetCarousel();
            carouselReview();
        }, 1000);
    });
</script>

<!-- Daterangepicker -->
<!-- momment js is must -->
<script src="../template/vendor/moment/moment.min.js"></script>
<script src="../template/vendor/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- clockpicker -->
<script src="../template/vendor/clockpicker/js/bootstrap-clockpicker.min.js"></script>
<!-- asColorPicker -->
<script src="../template/vendor/jquery-asColor/jquery-asColor.min.js"></script>
<script src="../template/vendor/jquery-asGradient/jquery-asGradient.min.js"></script>
<script src="../template/vendor/jquery-asColorPicker/js/jquery-asColorPicker.min.js"></script>
<!-- Material color picker -->
<script src="../template/vendor/bootstrap-material-datetimepicker/js/bootstrap-material-datetimepicker.js"></script>
<!-- pickdate -->
<script src="../template/vendor/pickadate/picker.js"></script>
<script src="../template/vendor/pickadate/picker.time.js"></script>
<script src="../template/vendor/pickadate/picker.date.js"></script>



<!-- Daterangepicker -->
<script src="../template/js/plugins-init/bs-daterange-picker-init.js"></script>
<!-- Clockpicker init -->
<script src="../template/js/plugins-init/clock-picker-init.js"></script>
<!-- asColorPicker init -->
<script src="../template/js/plugins-init/jquery-asColorPicker.init.js"></script>
<!-- Material color picker init -->
<script src="../template/js/plugins-init/material-date-picker-init.js"></script>
<!-- Pickdate -->
<script src="../template/js/plugins-init/pickadate-init.js"></script>
</body>
</html>
