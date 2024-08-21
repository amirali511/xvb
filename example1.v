import xvb

fn main() {
	conn, scr := xvb.connect(" :0")
	defer { xvb.disconnect(conn) }
}
