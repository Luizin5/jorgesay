require "curses"

Curses::noecho
Curses::init_screen
Curses::noecho
Curses::curs_set 0

class JorgeSay
  def initialize msg
    @msg = [msg,msg.length]
    @win = Curses::Window.new(3,
                              if @msg[1] > 10
                                @msg[1]+10
                              else
                                @msg[1]
                              end,0,10)

     @win.box("|","-")
     draw_msg
     draw_jorge
     @win.refresh
     @win.getch
  end

  def draw_msg
    @win.setpos(1,@msg[1]-2*@msg[1]/2+1)
    @win.addstr @msg[0]
  end

  def draw_jorge
    Curses::setpos(0,0)
    Curses.addstr("

            
               /
      _\\|/_   /
      (_oo  _/
       |
      /|\\
       |
       LL"
                 )
      Curses.refresh
  end

end

