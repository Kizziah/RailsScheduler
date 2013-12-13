$ ->

  currentTime = new Date()
  month = currentTime.getMonth()
  day = currentTime.getDate()
  year = currentTime.getFullYear()
  extra = day + 28
  $("#datepicker").datepicker
    minDate: new Date(year, month, day)
    maxDate: new Date(year, month, extra)
    dateFormat: "yy-mm-dd"
    onSelect: (dateText) ->
      setFinalDate = dateText

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
