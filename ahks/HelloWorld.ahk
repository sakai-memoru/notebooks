#Requires AutoHotkey v2.0

;;; global variables
Console := FileOpen("*", "w")

;;; debug method
Println(val){
    dtm_str := FormatTime(, "yy-MM-dd HH:mm:ss")
    Console.WriteLine(dtm_str " > " val)
    return
}

;;; local functions

;;;
;;; GetMessage
;;; @param {string} name
;;; @return {string} message
;;;
GetMessage(name){
  message := "Hello, " name "!!"
  return message
}

Main(){
  ;;; Main function
  Println("// ----------- // start")
  msg := GetMessage("AHK")
  Println(msg)
  Println("// ----------- // end .")
}

;;; entry point
Main()