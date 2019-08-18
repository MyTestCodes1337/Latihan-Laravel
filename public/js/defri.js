$('#filters').change(function(){
    let search = $('#filters').find("input[name=search]").val();
    let status = $('#filters').find("select[name=status]").children("option:selected").val();
    let perPage = $('#filters').find("select[name=perPage]").children("option:selected").val();
    let sortBy = $('#filters').find("select[name=sortBy]").children("option:selected").val();
    $.ajax({
        url: '?query='+search+'&status='+status+'&perPage='+perPage+'&sortBy='+sortBy,
        type: 'GET',
        dataType: 'html'
    }).done(function(data){
        let datas = $(data).find('#content').html();
        console.log("TCL: datas", datas);
        $('#content').html(datas);
    });
});


function statusChange(attr,id){
    let statusTo = $(attr).val();
    $.ajax({
        url: '/pegawai/change/'+id+'/'+statusTo,
        type: 'GET',
        dataType: 'html'
    }).done(function(data){
        let tmp = $(data).find('#content').html();
        $('#content').html(tmp);
    });
}


function getDatas(page) {
    $.ajax({
        url : '?page=' + page,
        type : "get",
        dataType: 'json',
        data:{
            search: $('#search').val()
        },
    }).done(function (data) {
        $('.datas').html(data);
        location.hash = page;
    }).fail(function (msg) {
        alert('Gagal menampilkan data, silahkan refresh halaman.');
    });
}