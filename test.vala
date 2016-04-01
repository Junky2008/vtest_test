void uppercase_test()
{
    string low = "Test";
    string high = low.up();
    assert(high == "TEST");
}

void lowercase_test()
{
    string low = "TEST";
    string high = low.down();
    assert(high == "test");
}

void add_foo_tests() {
    Test.add_func("/uppercase", uppercase_test);
    Test.add_func("/lowercase", lowercase_test);
}

void main (string[] args) {
    Test.init (ref args);
    add_foo_tests ();
    Test.run ();
}