/// Helper functoin function for printing debug messages with multiple args
function print(){
    var _str = "";

    for (var i = 0; i < argument_count; i ++)
    {
        _str += string(argument[i]);
    }

    show_debug_message(_str);
}