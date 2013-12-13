$ ->
  $("#hour_picker").hide()
  currentTime = new Date()
  month = currentTime.getMonth()
  day = currentTime.getDate()
  year = currentTime.getFullYear()
  $("#datepicker").datepicker
    minDate: new Date(year, month, day)
    dateFormat: "yy-mm-dd"
    onSelect: (dateText) ->
      setFinalDate = dateText

      $("#hour_picker").show()

calenderDateClickAction = (date) ->
  $('#final_hour h2').empty()
  $("input#appointment_hour").val(date.attr("class"))
  $('#final_hour h2').append(date.html())

  # $("#hour_picker").hide()
  # $(".appointment_button").show()

jQuery ->
  $("table.hours td").click (event) ->
    calenderDateClickAction($(this))
    console.log $(this)
    $(this).css("background", "green")
