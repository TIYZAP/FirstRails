class WelcomeController < ApplicationController
  def index
    @message = 'Welcome to my first rails app!'
    @subtitle = "It's not that great..."
  end

  def show
    @name = if params[:thing]
              params[:thing].capitalize
            else
              'nameless'
            end
  end

  def lorem
    if params[:style].casecmp('standard').zero?
      @ipsum = 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'

    elsif params[:style].casecmp('sam').zero?
      @ipsum = "My money's in that office, right? If she start giving me some bullshit about it ain't there, and we got to go someplace else and get it, I'm gonna shoot you in the head then and there. Then I'm gonna shoot that bitch in the kneecaps, find out where my goddamn money is. She gonna tell me too. Hey, look at me when I'm talking to you, motherfucker. You listen: we go in there, and that nigga Winston or anybody else is in there, you the first motherfucker to get shot. You understand?"

    elsif params[:style].casecmp('hipster').zero?
      @ipsum = "Typewriter VHS you probably haven't heard of them esse, photo booth butcher direct trade mlkshk small batch fixie kickstarter poke crucifix sustainable. Truffaut williamsburg vape, shoreditch lumbersexual franzen woke retro. Nihil nesciunt bushwick velit tacos neutra. Readymade jean shorts hexagon, chartreuse seitan ex woke tempor elit meh iPhone veniam. Meh roof party chambray paleo pug, pour-over nisi blog vape fugiat vero beard. Sapiente 3 wolf moon drinking vinegar, do portland kitsch labore iceland consectetur flexitarian est farm-to-table fixie humblebrag scenester. Vinyl fugiat vice sed, synth sustainable hoodie esse squid tumeric echo park tbh."
    else
      @ipsum = 'Please choose from standard, sam or hipster'
    end
  end
end
