<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	            <!-- Breadcrumb -->
            <div class="container page__heading-container">
                <div class="page__heading">
                    <div class="d-flex align-items-center">
                        <div>
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb mb-0">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item"><a href="#">Components</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">
                                        Range Slider
                                    </li>
                                </ol>
                            </nav>
                            <h1 class="m-0">Range Slider</h1>
                        </div>
                        <div class="ml-auto">
                            <a href="" class="btn btn-light"><i class="material-icons icon-16pt text-muted mr-1">settings</i>
                Settings</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Breadcrumb -->

            <div class="container page__container">
                <!-- Page Content -->
                <p class="col-md-7 p-0 mb-4">Easy to use, flexible and responsive range slider with skin support. Please read the <a target="_blank" href="http://ionden.com/a/plugins/ion.rangeSlider/index.html">official plugin documentation</a> for a full list of options.</p>

                <div class="card card-form">
                    <div class="row no-gutters">
                        <div class="col-lg-4 card-body">
                            <p><strong class="headings-color">Basic</strong></p>
                            <p class="text-muted">Set min value, max value and start point.</p>
                        </div>
                        <div class="col-lg-8 card-form__body card-body border-left">
                            <label class="text-label d-block mb-4">Basic</label>
                            <input type="text" data-toggle="ion-rangeslider" data-min="100" data-max="1000" data-from="550">
                        </div>
                    </div>
                </div>

                <div class="card card-form">
                    <div class="row no-gutters">
                        <div class="col-lg-4 card-body">
                            <p><strong class="headings-color">Type, Range, Grid and Prefix</strong></p>
                            <p class="text-muted">Set type to double, specify range, show grid and add a prefix "$"</p>
                        </div>
                        <div class="col-lg-8 card-form__body card-body border-left">
                            <label class="text-label d-block mb-4">Example</label>
                            <input type="text" data-toggle="ion-rangeslider" data-min="0" data-max="1000" data-from="200" data-to="800" data-prefix="$" data-type="double" data-grid="true">
                        </div>
                    </div>
                </div>

                <div class="card card-form">
                    <div class="row no-gutters">
                        <div class="col-lg-4 card-body">
                            <p><strong class="headings-color">Range and Negative Values</strong></p>
                            <p class="text-muted">Set up range with negative values.</p>
                        </div>
                        <div class="col-lg-8 card-form__body card-body border-left">
                            <label class="text-label d-block mb-4">Example</label>
                            <input type="text" data-toggle="ion-rangeslider" data-min="-1000" data-max="1000" data-from="-500" data-to="500" data-type="double" data-grid="true">
                        </div>
                    </div>
                </div>

                <div class="card card-form">
                    <div class="row no-gutters">
                        <div class="col-lg-4 card-body">
                            <p><strong class="headings-color">Range, Negatives and Step</strong></p>
                            <p class="text-muted">Set up range with negative values and steps.</p>
                        </div>
                        <div class="col-lg-8 card-form__body card-body border-left">
                            <label class="text-label d-block mb-4">Example</label>
                            <input type="text" data-toggle="ion-rangeslider" data-min="-1000" data-max="1000" data-from="-500" data-to="250" data-type="double" data-grid="true" data-step="250">
                        </div>
                    </div>
                </div>

                <div class="card card-form">
                    <div class="row no-gutters">
                        <div class="col-lg-4 card-body">
                            <p><strong class="headings-color">Fractional Values</strong></p>
                            <p class="text-muted">Force fractional values, using fractional step 0.1.</p>
                        </div>
                        <div class="col-lg-8 card-form__body card-body border-left">
                            <label class="text-label d-block mb-4">Example</label>
                            <input type="text" data-toggle="ion-rangeslider" data-min="-12.8" data-max="12.8" data-from="-3.2" data-to="3.2" data-type="double" data-grid="true" data-step="0.1">
                        </div>
                    </div>
                </div>

                <div class="card card-form">
                    <div class="row no-gutters">
                        <div class="col-lg-4 card-body">
                            <p><strong class="headings-color">Custom Values</strong></p>
                            <p class="text-muted">Set up you own numbers.</p>
                        </div>
                        <div class="col-lg-8 card-form__body card-body border-left">
                            <label class="text-label d-block mb-4">Example</label>
                            <input type="text" data-toggle="ion-rangeslider" data-values="0,10,100,1000,10000,100000,1000000" data-from="1" data-to="4" data-type="double" data-grid="true">
                        </div>
                    </div>
                </div>

                <div class="card card-form">
                    <div class="row no-gutters">
                        <div class="col-lg-4 card-body">
                            <p><strong class="headings-color">Date Values</strong></p>
                            <p class="text-muted">Values array could be anything, even strings.</p>
                        </div>
                        <div class="col-lg-8 card-form__body card-body border-left">
                            <label class="text-label d-block mb-4">Example</label>
                            <input type="text" data-toggle="ion-rangeslider" data-values="Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec" data-from="5" data-grid="true">
                        </div>
                    </div>
                </div>

                <div class="card card-form">
                    <div class="row no-gutters">
                        <div class="col-lg-4 card-body">
                            <p><strong class="headings-color">Prettify Numbers</strong></p>
                            <p class="text-muted">Improve readability of big numbers.</p>
                        </div>
                        <div class="col-lg-8 card-form__body card-body border-left">
                            <label class="text-label d-block mb-4">Example</label>
                            <input type="text" data-toggle="ion-rangeslider" data-min="1000" data-max="1000000" data-from="100000" data-to="867000" data-type="double" data-grid="true" data-step="1000" data-prettify-enabled="true" data-prettify-separator=".">
                        </div>
                    </div>
                </div>

                <div class="card card-form">
                    <div class="row no-gutters">
                        <div class="col-lg-4 card-body">
                            <p><strong class="headings-color">Decorating Numbers</strong></p>
                            <p class="text-muted">Adding currency symbol and + symbol to the maximum number.</p>
                        </div>
                        <div class="col-lg-8 card-form__body card-body border-left">
                            <label class="text-label d-block mb-4">Example</label>
                            <input type="text" data-toggle="ion-rangeslider" data-min="0" data-max="100" data-from="50" data-grid="true" data-step="5" data-max-postfix="+" data-prefix="$">
                        </div>
                    </div>
                </div>

                <div class="card card-form">
                    <div class="row no-gutters">
                        <div class="col-lg-4 card-body">
                            <p><strong class="headings-color">Decorating Numbers</strong></p>
                            <p class="text-muted">Using prefix and postfix at the same time.</p>
                        </div>
                        <div class="col-lg-8 card-form__body card-body border-left">
                            <label class="text-label d-block mb-4">Example</label>
                            <input type="text" data-toggle="ion-rangeslider" data-min="0" data-max="100" data-from="21" data-grid="true" data-max-postfix="+" data-prefix="Age: " data-postfix=" years">
                        </div>
                    </div>
                </div>
                <!-- END Page Content -->
</body>
</html>