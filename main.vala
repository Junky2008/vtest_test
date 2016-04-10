void main (string[] args) {
    Gtk.init (ref args);
    
    var window = new TestWindow();
    
    Gtk.main();
}