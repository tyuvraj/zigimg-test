const std = @import("std");
const zigimg = @import("zigimg");

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();

    const allocator = gpa.allocator();
    var image = try zigimg.Image.fromFilePath(allocator, "./assets/my_image.png");
    defer image.deinit();
}
