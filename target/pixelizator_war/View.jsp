<%--
  Created by IntelliJ IDEA.
  User: nkrutoholo
  Date: 1/4/21
  Time: 10:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<header>
    <h1>Pixelizator</h1>
</header>

<div class="content">
    <div class="sttNstts">
        <div class="settings">
            <!--<h4>Settings</h4>-->
            <div class="settings-grid">
                <div class="settings-column" id="stt-col1">
                    <label>1</label>
                    <input type="range" id="range_pixel" min="1" max="20" step="1" value="1" name="pixel"
                           onchange="change_range()">
                    <label id="max_p">20</label>
                    <p>
                        <label>Сoefficient = </label>
                        <label id="selected_p">1</label>
                    </p>
                </div>
                <div class="settings-column" id="stt-col2">
                    <p><label id="label-shape">Select form of element</label></p>
                    <div class="element_radio">
                        <p>
                            <input id="radio-1" type="radio" name="radio" value="1" checked>
                            <label for="radio-1">square</label>
                        </p>
                        <p>
                            <input id="radio-2" type="radio" name="radio" value="2">
                            <label for="radio-2">triangle</label>
                        </p>
                    </div>
                    </p>
                </div>
                <div class="settings-column" id="stt-col3">
                    <p><label id="label-filter">Choose filter</label></p>
                    <div class="filter_radio">
                        <p>
                            <input id="radio-fil0" type="radio" name="radio2" value="0" checked>
                            <label for="radio-fil0">off</label>
                        </p>
                        <p>
                            <input id="radio-fil1" type="radio" name="radio2" value="1">
                            <label for="radio-fil1">black and white</label>
                        </p>
                        <p>
                            <input id="radio-fil2" type="radio" name="radio2" value="2">
                            <label for="radio-fil2">negative</label>
                        </p>
                    </div>

                </div>
            </div>
            <p><input id="file_upload3" class="batons" type="button" value="pixelization"></p>
        </div>
        <div class="stats">
            <!--<h4>Stats</h4>-->
            <p><label id="label_size">Size in MB</label></p>
            <p><label id="label_pixels">Size in PXL</label></p>
        </div>
    </div>
    <div class="imagess">
        <h4>Images</h4>
        <p><input id="inputFile" class="buttons" type="file" accept="image/*" onchange="upload(this)"></p>

        <img id="file1" src="" onload="loaded_img()">
        <img id="image_res" src="">
    </div>
    <div class="save_sett">
        <p><label id="label_img_type">Save changes as</label></p>
        <div class="img_type">
            <input id="img_type0" type="radio" name="radio3" value="0" checked>
            <label for="img_type0">jpg</label>
            <input id="img_type1" type="radio" name="radio3" value="1" >
            <label for="img_type1">png</label>
            <input id="img_type2" type="radio" name="radio3" value="2" >
            <label for="img_type2">gif</label>
            <input id="img_type3" type="radio" name="radio3" value="3" >
            <label for="img_type3">bmp</label>
            <input id="img_type4" type="radio" name="radio3" value="4" >
            <label for="img_type4">tiff</label>
        </div>
        <p><input id="file_download" class="batons" type="button" value="Save" onclick="download()"></p>
    </div>
</div>

<footer>
    <h3>Footer</h3>
    <p>Govnocoder228</p>
</footer>

<script src="load.js"></script>
</body>
</html>
