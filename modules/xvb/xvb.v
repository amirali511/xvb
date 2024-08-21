module xvb

#flag -lxcb
#include <xcb/xcb.h>

// Base connection
pub type Connection_t = voidptr

// Connecting and disconnecting function
fn C.xcb_connect(dpy &char, scr &int) &Connection_t
fn C.xcb_disconnect(conn &Connection_t)

// Connect
pub fn connect(dpy string) (&Connection_t, int) {
	mut scr := 0
	conn := C.xcb_connect(dpy.str, &scr)
	return conn, scr
}

// Disconnect
pub fn disconnect(conn &Connection_t) {
	C.xcb_disconnect(conn)
}
