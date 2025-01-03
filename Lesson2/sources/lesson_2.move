module lesson_2::lesson_2;

use std::string::{String, utf8};
use lesson_1::a::A;

fun hello_world_bytes(): vector<u8> {
    b"hello world"
}

public fun hello_world(): String {
    let bytes = hello_world_bytes();
    utf8(bytes)
}

public fun a_say_hello_world(a: &mut A) {
    a.say(hello_world());
}

public fun sum(a: u64, b: u64): u64 {
    a + b
}

public fun try_borrow(vec: &vector<u64>, i: u64): Option<u64> {
    let vec_len = vec.length();
    if (vec_len > i) {
        option::some(*vec.borrow(i))
    } else {
        option::none()
    }
}

#[test_only]
public fun numbers(): vector<u64> { vector[1, 2, 3] }
