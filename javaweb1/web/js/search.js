var total; //记录总条数
var pageSize = "10"; //每页大小
var pageNumber = "1"; //当前页数
var pageCount; //总页数
var sort = "userName"; //排序字段
var sortOrder = "desc"; //升序降序

$(document).ready(function() {
    reload();
    $("tbody").on("mouseover", "tr", function() {
        $(this).addClass('tr_hover'); //通过jQuery控制实现鼠标悬停上的背景色
    });
    $("tbody").on("mouseout", "tr", function() {
        $(this).removeClass('tr_hover'); //通过jQuery控制实现鼠标悬停上的背景色
    });
    //tbody中的复选框绑定click事件
    $("tbody").on("click", " tr input:checkbox", function() {
        if (this.checked == true) {
            $(this).parents("tr").addClass('tr_select');
        } else {
            $(this).parents("tr").removeClass('tr_select');
        }
    });


    // 绑定分页操作的按钮点击事件
    $("#first,#back,#next,#last").click(pageNation);
    // 绑定标题栏排序列点击事件
    $(".bg,.asc,.desc").click(funSort);

    $("#btSearch").click(function() {
        reload(); //加载数据
    });

    $("#btClear").click(function() {
        document.getElementById("searchForm").reset();
        reload(); //加载数据
    });

});

function reload() {
    var queryParams = new Object(); //表单查询参数
    var array = $("#searchForm").serializeArray();
    $.each(array, function(index, element) {
        queryParams[element.name] = element.value;
    });

    var pageParams = new Object(); //分页参数
    pageSize = $("#pageSize").find("option:selected").text(); //每页大小
    pageParams.pageSize = pageSize;
    pageParams.pageNumber = pageNumber;
    pageParams.sort = sort;
    pageParams.sortOrder = sortOrder;

    var queryData = new Object(); //提交的数据
    queryData.queryParams = JSON.stringify(queryParams);
    queryData.pageParams = JSON.stringify(pageParams);

    $.ajax({
        type: "post",
        url: "QueryProduct.do",
        data: queryData,
        dataType: "json",
        success: function(response) {
            var rows = response.rows;
            total = response.total;
            pageCount = Math.ceil(total / pageSize); //计算总页数
            $("#total").text(total);
            $("#pageCount").text(pageCount); //总页数
            $("tbody").empty();
            $.each(rows, function(index, row) {
                var s = JSON.stringify(row);
                var str = "<tr data='" + s + "'>";
                str = str + '<td>' + row.id + '</td>';
                str = str + '<td>' + row.barcode + '</td>';
                str = str + '<td>' + row.name + '</td>';
                str = str + '<td>' + row.category + '</td>';
                str = str + ' <td>' + row.price + '</td>';
                str = str + ' <td>' + row.minsaleprice + '</td>';
                str = str + ' <td>' + row.maxsaleprice + '</td>';
                str = str + ' <td>' + row.specifications + '</td>';
                str = str + ' <td>' + row.origin + '</td>';
                str = str + ' <td>' + row.company + '</td>';
                str = str + ' </tr>';
                $("tbody").append(str);
            });
            //通过jQuery控制表格隔行换色，并鼠标悬停变色
            $('tbody tr:even').addClass('tr_even'); //默认偶数行背景色
            $('tbody tr:odd').addClass('tr_odd'); //默认奇数数行背景色
        }
    });
}

// 分页操作的函数
var pageNation = function() {
    // 处理翻页的操作
    var idValue = $(this).attr("id");
    if ("first" == idValue) {
        pageNumber = 1;
    } else if ("back" == idValue) {
        if (pageNumber > 1) {
            pageNumber--;
        }
    } else if ("next" == idValue) {
        if (pageNumber < pageCount) {
            pageNumber++;
        }
    } else if ("last" == idValue) {
        pageNumber = pageCount;
    }
    pageNumber = pageNumber.toString(); //转换为字符串
    reload();
}

//点击排序字段
var funSort = function() {
    sort = $(this).attr("data");
    if (sort == "id") {
        $("#sortByProvince").removeClass().addClass("bg");
    } else if (sort == "barcode") {
        $("#sortByUserName").removeClass().addClass("bg");
    }

    var className = $(this).attr("class");
    if (className == "bg") {
        $(this).removeClass().addClass("asc");
        sortOrder = "asc";
    } else if (className == "asc") {
        $(this).removeClass().addClass("desc");
        sortOrder = "desc"
    }
    if (className == "desc") {
        $(this).removeClass().addClass("asc");
        sortOrder = "asc";
    }

    reload();
}


var FormUtils = {
    fillForm: function(formid, data) {
        $('#' + formid).find(':input').each(function() {
            $(this).val(data[$(this).attr('id')]);
        });
    },
    emptyForm: function(formid) {
        $('#' + formid).find(':input').each(function() {
            $(this).val("");
        });
        $('#' + formid).find('span').each(function() {
            $(this).html("");
        });
    }
};
