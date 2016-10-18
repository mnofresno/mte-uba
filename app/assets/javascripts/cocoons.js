$(document).ready(function() {
  // example showing manipulating the inserted/removed item

  $('.children')
    .on('cocoon:before-insert', function(e,task_to_be_added) {
      task_to_be_added.fadeIn('slow');
    })
    .on('cocoon:after-insert', function(e, added_task) {
      // e.g. set the background of inserted task
      $('.datepicker').datepicker({ dateFormat: 'dd/mm/yy'});

      added_task.css("background","PeachPuff");
    })
    .on('cocoon:before-remove', function(e, task) {
      // allow some time for the animation to complete
      $(this).data('remove-timeout', 1000);
      task.fadeOut('slow');
    });
});