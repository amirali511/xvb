import xvb

fn main() {
	conn := xvb.connect(" :0")
	println(xvb.connection_has_error(conn))
	defer { xvb.disconnect(conn) }
}
