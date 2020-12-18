<%@ page language="java"  pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta http-equiv="content-type" content="text/html; charset=utf-8" />
            <title>用户管理</title>
            <link rel="stylesheet" href="css/userManage.css" />
            <script type="text/javascript" src="js/jquery-3.5.0.min.js"></script>
            <script type="text/javascript" src="js/search.js"></script>
        </head>

        <body>
            <div id="container">
                    <div id="pageBody">
                        <div id="search">
                            <form id="searchForm">
                                    <input type="text" name="id" placeholder="商品货号" />
                                <input type="text" name="barCode" placeholder="条形码" />
                            </form>
                            <div id="bt">
                                <a href="#" id="btSearch">查找</a>
                                <a href="#" id="btClear">清空</a>
                            </div>
                        </div>
                        <table>
                            <thead>
                                <tr>
                                    <th class="bg" id="sortByid" data="id">商品货号</th>
                                    <th class="bg" id="sortBybarcode" data="barcode">条形码</th>
                                    <th>名称</th>
                                    <th width="70">一级分类</th>
                                    <th width="70">二级分类</th>
                                    <th width="70">进价</th>
                                    <th width="70">最低售价</th>
                                    <th width="70">预期售价</th>
                                    <th width="70">规格</th>
                                    <th width="70">产地</th>
                                    <th width="70">供货商</th>
                                </tr>
                            </thead>
                            <tbody>

                            </tbody>
                        </table>
                        <div class="paging">
                            <div class="pageSize"> 每页
                                <select id="pageSize">
                                <option>5</option>
                                <option selected>10</option>
                                <option >20</option></select> ， 共
                                <span id="total"></span>条数据，
                                <span id="pageNumber">1</span>页/<span id="pageCount"></span>页
                            </div>
                            <div class="pageNav">
                                <a id="first" href="#">首页</a>
                                <a id="back" href="#">上一页</a>
                                <a id="next" href="#">下一页</a>
                                <a id="last" href="#">尾页</a>
                            </div>
                        </div>
                    </div>
            </div>
        </body>

        </html>