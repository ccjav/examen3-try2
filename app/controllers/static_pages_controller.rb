class StaticPagesController < ApplicationController
  def home
    @search = Search.new
  end
end

# http://www.restapitutorial.com/lessons/whatisrest.html
# https://www.google.com.mx/search?q=deploy+rails+to+my+own+server&oq=deploy+rails+to+my+own+server&aqs=chrome..69i57.5383j0j7&sourceid=chrome&ie=UTF-8#q=deploy+rails+to+raspberry+pi&*
# https://teamgaslight.com/blog/raspberry-pi-plus-ruby-on-rails-plus-heroku-star-students-equals-awesome
# https://github.com/meinside/rails-on-raspberrypi
# https://www.udemy.com/deploying-ruby-on-rails-application-in-your-own-server/
# http://requiremind.com/deploying-a-rails-app-on-your-own-server-the-ultimate-guide/
# http://robmclarty.com/blog/how-to-setup-a-production-server-for-rails-4
# http://raspberrypi.stackexchange.com/questions/4597/setting-up-a-ruby-on-rails-server
# http://elinux.org/RPi_Ruby_on_Rails
# http://sirlagz.net/2013/02/14/raspbian-server-edition-version-2-3/
# https://www.google.com.mx/search?q=deploy+rails+to+local+server&oq=deploy+rails+to+local+server&aqs=chrome..69i57.4230j0j7&sourceid=chrome&ie=UTF-8
# https://gorails.com/deploy/ubuntu/16.04
# https://www.engineyard.com/articles/rails-server
# http://pi.gadgetoid.com/article/ruby-with-nginx-passenger
# https://www.youtube.com/watch?v=kbFEpVCPsvA
# https://gist.github.com/BastianR/a374e84c8cfb6bec823d
# https://www.youtube.com/watch?v=cwcR1zQkKIE
# https://developer.ubuntu.com/core/get-started/raspberry-pi-2-3
# https://www.google.com.mx/search?q=rails+on+thin&oq=rails+on+thin&aqs=chrome..69i57j0l5.4658j0j7&sourceid=chrome&ie=UTF-8
# https://www.phusionpassenger.com/library/walkthroughs/deploy/ruby/
# https://www.phusionpassenger.com/library/config/nginx/action_cable_integration/
# https://www.google.com.mx/search?q=raspian+server&oq=raspian+server&aqs=chrome..69i57j0l5.2670j0j7&sourceid=chrome&ie=UTF-8#q=raspbian+server&*
