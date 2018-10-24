// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require jquery.minicolors
function perimetral()
{
  if ($('#perim').is(':checked')) { tex=1;  } else { tex= 0;  }
  var URL = "luces/perch/"+tex;
  $.get( URL );
  //alert ('perimetral= '+tex);
}
function turn_on_all(){
	{tex=1}
}
function internas()
{
    if ($('#inter').is(':checked')) { tex=1;  } else { tex= 0;  }
  var URL = "luces/intch/"+tex;
  $.get( URL );
}
function parques()
{
    if ($('#park').is(':checked')) { tex=1;  } else { tex= 0;  }
  var URL = "luces/parkch/"+tex;
  $.get( URL );
}

function showcolor()
{
  alert ('color='+$('#color').val());
}

function encerder_todas(){
	var URL = "luces/turn_on_all";
	$.get( URL );
}

function apagar_todas(){
	var URL = "luces/turn_off_all";
	$.get( URL );
}

$(function() {
  $.minicolors.defaults = $.extend($.minicolors.defaults, {
 changeDelay: 200,
 letterCase: 'uppercase',
 theme: 'bootstrap',
 inline: true,
 show: true
});
    $('#color').minicolors();
});
