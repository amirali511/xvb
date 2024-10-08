module xvb

#flag -lxcb
#include <xcb/xcb.h>

// Base connection
pub type Connection_t = voidptr

// Function signatures
fn C.xcb_connect(dpy &char, scr &int) (&Connection_t)
fn C.xcb_disconnect(conn &Connection_t)
fn C.xcb_connection_has_error(conn &Connection_t) (int)

// Connect
pub fn connect() (&Connection_t, int) {
	conn := C.xcb_connect(nil, &nil)
	return conn
}

// Disconnect
pub fn disconnect(conn &Connection_t) {
	C.xcb_disconnect(conn)
}

// Error checking for connection function
pub fn connection_has_error(conn &Connection_t) (int) {
	return C.xcb_connection_has_error(conn)
}
