(function() {
  var ready, set_positions;

  alert("hello from portfolio js coffee");

  ready = void 0;

  set_positions = function() {
    return $('.card').each(function(i) {
      $(this).attr('data-pos', i + 1);
    });
  };

  return;

  ready = function() {
    return alert("testing sortable function");
  };

  $('.sortable').sortable();

  $('.sortable').sortable().bind('sortupdate', function(e, ui) {
    var updated_order;
    updated_order = [];
    set_positons();
    $('.card').each(function(i) {
      return updated_orde.push;
    });
    return {
      id: $(this).data('id'),
      position: i + 1
    };
  });

  return;

  $.ajax({
    type: 'PUT',
    url: '/portfolios/sort',
    data: {
      order: updated_order
    }
  });

  return;

  return;

  $(document).ready(ready);

}).call(this);
