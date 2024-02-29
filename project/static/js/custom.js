function sendArticleComment(articleId) {
    var comment = $('#commentText').val();
    var parentId = $('#parent_id').val();
    console.log(parentId);
    $.get('/articles/add-article-comment', {
        article_comment: comment,
        article_id: articleId,
        parent_id: parentId
    }).then(res => {
        $('#comments_area').html(res);
        $('#commentText').val('');
        $('#parent_id').val('');

        if (parentId !== null && parentId !== '') {
            document.getElementById('single_comment_box_' + parentId).scrollIntoView({behavior: "smooth"});
        } else {
            document.getElementById('comments_area').scrollIntoView({behavior: "smooth"});
        }
    });
        // location.reload();
        // ajax => asynchronous javascript and xml
        // json => javascript object notation
}
function fillParentId(parentId) {
    // console.log('submit article comment');
    $('#parent_id').val(parentId);
    document.getElementById('comment_form').scrollIntoView({behavior: "smooth"});
}

function filterProducts() {
    const filterPrice = $('#sl2').val();
    const start_price = filterPrice.split(',')[0];
    const end_price = filterPrice.split(',')[1];
    $('#start_price').val(start_price);
    $('#end_price').val(end_price);
    $('#filter_form').submit();
}

function fillPage(page) {
    $('#page').val(page);
    $('#filter_form').submit();
}



function showLargeImage(imageSrc) {
    $('#main_image').attr('src', imageSrc);
    $('#show_large_image_modal').attr('href', imageSrc);
    
}

function addProductToCart(productId) {
    const productCount = $('#product-count').val();
    const productColor = $('#variant').val();
    console.log(productColor);
    $.get('/cart/add-to-cart?product_id=' + productId + '&count=' + productCount + '&color=' + productColor).then(res => {
        Swal.fire({
            title: 'اعلان',
            text: res.text,
            icon: res.icon,
            showCancelButton: false,
            confirmButtonColor: '#3085d6',
            confirmButtonText: res.confirm_button_text
        }).then((result) => {
            if (result.isConfirmed && res.status === 'not_auth') {
                window.location.href = '/login';
            }
        })
    });
}

function ChangeColor(radioButton) {
    var color = radioButton.value;
    document.getElementById('variant').value = color;
    console.log(document.getElementById('variant').value);
}
                /*if (res.status === 'success') {
            Swal.fire({
                title: 'اعلان',
                text: "محصول مورد نظر با موفقیت به سبد خرید شما اضافه شد",
                icon: 'success',
                showCancelButton: false,
                confirmButtonColor: '#3085d6',
                confirmButtonText: 'باشه ممنون'
            });
        } else if (res.status === 'not_found') {
            Swal.fire({
                title: 'اعلان',
                text: "محصول مورد نظر یافت نشد",
                icon: 'error',
                showCancelButton: false,
                confirmButtonColor: '#3085d6',
                confirmButtonText: 'باشه ممنون'
            });
        }*/
    // $.get(`/user/remove-cart-detail?detail_id=${detailId}&confirm=${confirmValue}`).then(res => {

    function removeCartDetail(detailId) {
        Swal.fire({
            text: "آیا مطمئن هستید حذف شود؟",
            title: 'اعلان',
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'بله',
            cancelButtonText: 'خیر'
        }).then((result) => {
            if (result.isConfirmed) {
                $.get(`/user/remove-cart-detail?detail_id=${detailId}`).done(res => {
                    if (res.status === 'success') {
                        $('#cart-detail-content').html(res.body);
                    }
                    Swal.fire({
                        title: 'حذف شد!',
                        confirmButtonText: 'باشه',
                        icon: 'success'
                    });
                });
            } else if (result.dismiss === Swal.DismissReason.cancel) {
                Swal.fire({
                    title: 'حذف لغو شد!',
                    confirmButtonText: 'باشه',
                    icon: 'info'
                });
            }
        });
    }
// function removeCartDetail(detailId) {
//     $.get('/user/remove-cart-detail?detail_id=' + detailId).then(res => {
        // if (res.status === 'success') {
        //     $('#cart-detail-content').html(res.body);
        // }
//     });
// }

// detail id => order detail id
// state => increase , decrease
function changeCartDetailCount(detailId, state) {
    $.get('/user/change-cart-detail?detail_id=' + detailId + '&state=' + state).then(res => {
        if (res.status === 'success') {
            $('#cart-detail-content').html(res.body);
        }
    });
}



function logOutUser(userId) {
    $.get(`/user/logout?user_id=${userId}`).then(res => {
        if (res.status === 'success') {
            // نمایش پیام سوئیتالرت برای تایید
            Swal.fire({
                title: " خروج از حساب کاربری ",
                text: "مطمئن هستید می خواهید خارج شوید ؟",
                icon: "warning",
                showCancelButton: true,
                cancelButtonText: "خیر",
                confirmButtonColor: "#3085d6",
                cancelButtonColor: "#d33",
                confirmButtonText: "بله"
            }).then((result) => {
                if (result.isConfirmed) {
                    // نمایش پیام سوئیتالرت برای موفقیت‌آمیز بودن خروج
                    Swal.fire({
                        title: " خروج ",
                        text: "با موفقیت خارج شدید ",
                        icon: "success"
                    });
                    // انتقال به صفحه‌ای مورد نظر پس از خروج
                    window.location.href = "{% url 'home_page' %}";
                }
            });
        } else {
            // نمایش پیام خطا
            toastr.error(res.message);
        }
    });
}