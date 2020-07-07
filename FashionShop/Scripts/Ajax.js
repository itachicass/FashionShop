$(document).ready(function)()
{
    var load = function (text, page) {
        $.ajax({
            url: '@Url.Action("Search","Post"'),
            type: "GET",
                data: { text: text, page: page },
        dataType: 'json',
            contentType: 'application/json;charset=utf-8',
                success: function(result) {
                    console.log(result);
                    var str = "";
                    $.each(result.data, function (index, value) {
                        str += "<li class='span3'>"+
                           " < div class='product-box' >"+
                        "<span class='sale_tag'></span>"+
                        "<a href='product_detail.html'><img alt='ảnh' src='~/themes/images/Image/@sp.HINHANH'></a><br />"+
                            "<a href='product_detail.html' class='title'>@sp.TENSP</a><br />"+
                            "<a href="#" class='category'>@sp.LOAISP</a>"+
                            "<p class='price'>@sp.GIA</p>"
                        "</div>" +
                            "</li >";

                    
                    var pagination_string = "";
                    var pageCurrent = result.pageCurrent;
                    var numSize = result.numSize;

                    //create button previous
                    if (pageCurrent > 1) {
                        var pagePrevious = pageCurrent - 1;
                pagination_string += '<li class="page-item"><a href="" class="page-link" data-page=' + pagePrevious + '>Previous</a></li>';
            }

            for (i = 1; i <= numSize; i++) {
                if (i == pageCurrent) {
                    pagination_string += '<li class="page-item active"><a href="" class="page-link" data-page=' + i + '>' + pageCurrent + '</a></li>';
                } else {
                    pagination_string += '<li class="page-item"><a href="" class="page-link" data-page=' + i + '>' + i + '</a></li>';
                }
            }

            //create button next
            if (pageCurrent > 0 && pageCurrent < numSize) {
                var pageNext = pageCurrent + 1;
                pagination_string += '<li class="page-item"><a href="" class="page-link"  data-page=' + pageNext + '>Next</a></li>';
            }

            //load pagination
            $("#load-pagination").html(pagination_string);
        });

        //load str to class="load-list"
        $(".load-list").html(str);
    }
});
            }
//click event pagination
$("body").on("click", ".pagination li a", function (event) {
    event.preventDefault();
    var page = $(this).attr('data-page');

    //load event pagination
    var txtSearch = $(".txtSearch").val();
    if (txtSearch != "") {
        load(txtSearch, page)
    }
    else {
        load(null, page);
    }

});


//click event search
$("#search").click(function () {
    var txtSearch = $(".txtSearch").val();
    if (txtSearch != "") {
        load(txtSearch, 1)
    }
    else {
        load(null, 1);
    }

});


//load init
load(null, 1);
});
