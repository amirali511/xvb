import xvb

fn main() {
	conn := xvb.connect()
	println(xvb.connection_has_error(conn))
	defer { xvb.disconnect(conn) }
}
