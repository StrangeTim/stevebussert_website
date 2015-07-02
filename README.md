# README
## SteveBussert.com

## This is an evolving project.


#### Requirements:
* Ruby > 2.0
* Rails Gem > 4.0
* Bundler Gem
* Postgresql Database

#### Configuration:
To create this app on your own system follow the prompts below
* Start Postgres
* Run Terminal Commands
    $ git clone https://github.com/StrangeTim/stevebussert_website.git
    $ cd stevebussert_website
    $ bundler install
    $ rake db:create
    $ rake db:migrate
    $ rails s
* Open a browser window and navigate to localhost:3000

#### Testing:
This app uses rspec and cabybara for unit and integration testing.
To see the results of these tests follow the Configuration Instructions above except for running the rails server.  Then run terminal command:  '$ rspec'


#### Copyright and License
Copyright &copy; 2015 - Steve Bussert

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software. The name of the original author (Steve Bussert) may not be used to endorse or promote products derived from this software without specific prior written permission.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.