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
                                    <li class="breadcrumb-item active" aria-current="page">
                                        Charts
                                    </li>
                                </ol>
                            </nav>
                            <h1 class="m-0">Charts</h1>
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
                <div class="card">
                    <div class="card-header card-header-large bg-white">
                        <h4 class="card-header__title">Line</h4>
                    </div>
                    <div class="card-body">
                        <p>A line chart is a way of plotting data points on a line. Often, it is used to show trend data, or the comparison of two data sets.</p>

                        <div class="chart">
                            <canvas id="performanceChart" class="chart-canvas"></canvas>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header card-header-large bg-white">
                        <h4 class="card-header__title">Area</h4>
                    </div>
                    <div class="card-body">
                        <p>An area chart or area graph displays graphically quantitative data. It is based on the line chart.</p>

                        <div class="chart">
                            <canvas id="performanceAreaChart" class="chart-canvas"></canvas>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header card-header-large bg-white">
                        <h4 class="card-header__title">Doughnut</h4>
                    </div>
                    <div class="card-body">
                        <p>Excellent at showing the relational proportions between data.</p>

                        <div class="chart">
                            <canvas id="devicesChart" class="chart-canvas"></canvas>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header card-header-large bg-white">
                        <h4 class="card-header__title">Bar</h4>
                    </div>
                    <div class="card-body">
                        <p>A bar chart provides a way of showing data values represented as vertical bars. It is sometimes used to show trend data, and the comparison of multiple data sets side by side.</p>

                        <div class="chart">
                            <canvas id="ordersChart" class="chart-canvas"></canvas>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header card-header-large bg-white d-flex align-items-center">
                        <h4 class="card-header__title flex">Switch Toggle</h4>
                        <div class="d-flex align-items-center">
                            <label for="chart-switch-toggle" class="mb-0">Show affiliate:</label>
                            <div class="custom-control custom-checkbox-toggle ml-2">
                                <input checked="" aria-checked="true" type="checkbox" id="chart-switch-toggle" class="custom-control-input" role="switch" data-toggle="chart" data-target="#ordersChartSwitch" data-add='{"data":{"datasets":[{"data":[15,10,20,12,7,0,8,16,18,16,10,22],"backgroundColor":"#4EB4A5","label":"Affiliate","barPercentage":"0.5","barThickness":"20"}]}}'>
                                <label class="custom-control-label" for="chart-switch-toggle"><span class="sr-only">Show affiliate</span></label>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <p>Easily toggle an additional set of data with a simple interface based on the <code>data</code> attributes.</p>
                        <div class="chart">
                            <canvas id="ordersChartSwitch" class="chart-canvas"></canvas>
                        </div>
                    </div>
                </div>
                <!-- END Page Content -->
            </div>
</body>
</html>