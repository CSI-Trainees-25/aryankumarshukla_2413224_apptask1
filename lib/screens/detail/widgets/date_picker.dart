import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class DatePicker extends StatefulWidget{
    const DatePicker({Key? key}) : super (key: key);
    @override
    _DatePickerState createState() => _DatePickerState();

}
class _DatePickerState extends State<DatePicker>{
 
 CalendarFormat _calendarFormat = CalendarFormat.month;
    DateTime _focusedDay = DateTime.now();
    DateTime? _selectedDate;

  @override
  void initState(){
    super.initState();
    _selectedDate = _focusedDay;
  }
    

  @override
  Widget build (BuildContext context){
    return TableCalendar(
                    focusedDay: _focusedDay, 
                    firstDay: DateTime(2000), 
                    lastDay: DateTime(2100),
                    calendarFormat: _calendarFormat,

            onDaySelected: (selectedDay, focusedDay) {
                if(!isSameDay(_selectedDate, selectedDay)){
                    setState(() {
                        _selectedDate = selectedDay;
                        _focusedDay = focusedDay;
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Selected date: ${_selectedDate.toString()}'),
                      ),
                    );
                }
            },
            selectedDayPredicate: (day){
                return isSameDay(_selectedDate, day);
            },
            onFormatChanged: (format){
                if(_calendarFormat != format){
                    setState(() {
                        _calendarFormat = format;
                    });
                }
            },
            onPageChanged: (focusedDay){
                _focusedDay = focusedDay;
            },
        );
  }
}