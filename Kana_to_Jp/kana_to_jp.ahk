#Requires AutoHotkey v2.0

sc070::{
    ; [1] Get the input language ID of the current active window
    ; Using Win32 API to detect which keyboard layout the current window is using
    hWnd := WinExist("A")
    ThreadID := DllCall("GetWindowThreadProcessId", "Ptr", hWnd, "Ptr", 0)
    KeyboardLayout := DllCall("GetKeyboardLayout", "UInt", ThreadID, "Ptr")

    ; Extract the low 16 bits (e.g., 0x0411 = Japanese, 0x0804 = Chinese)
    LangID := KeyboardLayout & 0xFFFF

    ; [2] Logic check
    if (LangID == 0x0411) 
    {
        ; === Case A: Already using Japanese IME ===
        ; Forward the original key input as is
        ; SendInput = fastest and most reliable key sending method
        SendInput("{sc070}")
    }
    else
    {
        ; === Case B: Not Japanese IME (e.g., Chinese IME) ===
        ; Execute the “forced switch” logic

        ; Try to locate the actual focused control to fix Desktop/Excel issues
        targetHwnd := hWnd ; default target = main window
        try {
            ctl := ControlGetFocus("A")
            if (ctl) {
                targetHwnd := ControlGetCtlWnd(ctl)
            }
        }

        ; Send the input language switching message
        try {
            PostMessage(0x50, 0, 0x04110411,, targetHwnd)
            Sleep(50)
            SendInput("{sc070}")
        }
    }
}

sc07B::{
    hWnd := WinExist("A")
    ThreadID := DllCall("GetWindowThreadProcessId", "Ptr", hWnd, "Ptr", 0)
    KeyboardLayout := DllCall("GetKeyboardLayout", "UInt", ThreadID, "Ptr")
    LangID := KeyboardLayout & 0xFFFF
     if (LangID == 0x0411) {
        SendInput("{sc07B}")
     }
     else{
        targetHwnd := hWnd ; default target = main window
        try {
            ctl := ControlGetFocus("A")
            if (ctl) {
                targetHwnd := ControlGetCtlWnd(ctl)
            }
        }

        ; Send the input language switching message
        try {
            PostMessage(0x50, 0, 0x04110411,, targetHwnd)
            Sleep(50)
            SendInput("{sc07B}")
        }
     }
}

; Helper function: Get window handle of a control
ControlGetCtlWnd(ControlClassNN) {
    try {
        return ControlGetHwnd(ControlClassNN, "A")
    } catch {
        return 0
    }
}