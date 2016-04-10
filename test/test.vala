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

void gtkWindow_test()
{
    var window = new Gtk.Window();
    assert(window is Gtk.Window);
}

void gtkButtonClick_test()
{
    var window = new TestWindow();
    window.testButton.clicked();
    
    assert(window.testButton.label == "Clicked");
}

void add_foo_tests() {
    Test.add_func("/uppercase", uppercase_test);
    Test.add_func("/lowercase", lowercase_test);
    Test.add_func("/gtkWindow", gtkWindow_test);
    Test.add_func("/gtkButtonClick", gtkButtonClick_test);
}

void main (string[] args) {
    Gtk.init (ref args);
    Test.init (ref args);
    
    add_foo_tests();
    
    Idle.add(() => {
        Test.run();
        Gtk.main_quit();
        return false;
    });
    
    Gtk.main();
}