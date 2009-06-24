require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "IronTermANSIColor" do
  
  before(:all) do
    @original_color = System::ConsoleColor.Gray
  end
  
  it "should set the foreground color to black when doing a puts of a string with only black ANSI control code and reset the foreground color after" do
    string = "Black".black
    System::Console.should_receive(:ForegroundColor).once.and_return(@original_color)
    System::Console.should_receive(:ForegroundColor=).ordered.with(System::ConsoleColor.Black)
    System::Console.should_receive(:ForegroundColor=).ordered.with(@original_color)
    puts string
  end
  
  it "should set the foreground color to dark red when doing a puts of a string with only red ANSI control code and reset the foreground color after" do
    string = "Red".red
    System::Console.should_receive(:ForegroundColor).once.and_return(@original_color)
    System::Console.should_receive(:ForegroundColor=).ordered.with(System::ConsoleColor.DarkRed)
    System::Console.should_receive(:ForegroundColor=).ordered.with(@original_color)
    puts string
  end
  
  it "should set the foreground color to dark green when doing a puts of a string with only green ANSI control code and reset the foreground color after" do
    string = "Green".green
    System::Console.should_receive(:ForegroundColor).once.and_return(@original_color)
    System::Console.should_receive(:ForegroundColor=).ordered.with(System::ConsoleColor.DarkGreen)
    System::Console.should_receive(:ForegroundColor=).ordered.with(@original_color)
    puts string
  end
  
  it "should set the foreground color to dark yellow when doing a puts of a string with only yellow ANSI control code and reset the foreground color after" do
    string = "Yellow".yellow
    System::Console.should_receive(:ForegroundColor).once.and_return(@original_color)
    System::Console.should_receive(:ForegroundColor=).ordered.with(System::ConsoleColor.DarkYellow)
    System::Console.should_receive(:ForegroundColor=).ordered.with(@original_color)
    puts string
  end
  
  it "should set the foreground color to dark blue when doing a puts of a string with only blue ANSI control code and reset the foreground color after" do
    string = "Blue".blue
    System::Console.should_receive(:ForegroundColor).once.and_return(@original_color)
    System::Console.should_receive(:ForegroundColor=).ordered.with(System::ConsoleColor.DarkBlue)
    System::Console.should_receive(:ForegroundColor=).ordered.with(@original_color)
    puts string
  end
  
  it "should set the foreground color to dark magenta when doing a puts of a string with only magenta ANSI control code and reset the foreground color after" do
    string = "Magenta".magenta
    System::Console.should_receive(:ForegroundColor).once.and_return(@original_color)
    System::Console.should_receive(:ForegroundColor=).ordered.with(System::ConsoleColor.DarkMagenta)
    System::Console.should_receive(:ForegroundColor=).ordered.with(@original_color)
    puts string
  end
end

