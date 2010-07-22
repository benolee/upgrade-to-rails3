$(function() {
  $('ul.items input[type=checkbox]').change(function() {
    var box = $(this);
    box.is(':checked') ? box.attr('checked','') : box.attr('checked','checked');
    var id = $(this).attr('id').replace('complete_','');
    $.ajax({
      url:'/items/' + id + '/toggle',
      type:'PUT',
      success:function() {
        box.is(':checked') ? box.attr('checked','') : box.attr('checked','checked');
        box.is(':checked') ? box.parent('li').addClass('completed') : box.parent('li').removeClass('completed');
      }
    });
  });
});
