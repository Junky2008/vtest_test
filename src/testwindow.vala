class TestWindow : Gtk.Window {
    
    public Gtk.Button testButton;
    
    public TestWindow () {
        testButton = new Gtk.Button.with_label("Button");
        
        testButton.clicked.connect(() => {
            testButton.label = "Clicked";
        });
        
        this.destroy.connect (Gtk.main_quit);
        
        this.add(testButton);
        
        this.show_all();
    }
}