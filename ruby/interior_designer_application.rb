john_doe = {
	"name" => "John Doe",
	"address" => "123 Oak Street",
	"email" => "john@email.com",
	"phone" => 123456789,
	"fave shade of blue" => "baby blue",
	"wallpaper preferences" => ["paisley","chevron",],
	"ombre is" => "fierce"
}

john_doe["fave shade of blue"] = "navy blue"
john_doe["wallpaper preferences"] << "abstract woodsy scenes"
john_doe["hired"] = "yes"

p john_doe