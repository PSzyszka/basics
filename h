warning: LF will be replaced by CRLF in Gemfile.lock.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in app/models/car.rb.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in app/views/layouts/application.html.erb.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in config/routes.rb.
The file will have its original line endings in your working directory.
[1mdiff --git a/Gemfile.lock b/Gemfile.lock[m
[1mindex ee57033..ede84ff 100644[m
[1m--- a/Gemfile.lock[m
[1m+++ b/Gemfile.lock[m
[36m@@ -41,7 +41,14 @@[m [mGEM[m
     addressable (2.5.2)[m
       public_suffix (>= 2.0.2, < 4.0)[m
     arel (8.0.0)[m
[32m+[m[32m    autoprefixer-rails (8.1.0)[m
[32m+[m[32m      execjs[m
[32m+[m[32m    bcrypt (3.1.11-x64-mingw32)[m
     bindex (0.5.0)[m
[32m+[m[32m    bootstrap (4.0.0)[m
[32m+[m[32m      autoprefixer-rails (>= 6.0.3)[m
[32m+[m[32m      popper_js (>= 1.12.9, < 2)[m
[32m+[m[32m      sass (>= 3.5.2)[m
     builder (3.2.3)[m
     byebug (9.1.0)[m
     capybara (2.17.0)[m
[36m@@ -63,6 +70,12 @@[m [mGEM[m
     coffee-script-source (1.12.2)[m
     concurrent-ruby (1.0.5)[m
     crass (1.0.3)[m
[32m+[m[32m    devise (4.4.1)[m
[32m+[m[32m      bcrypt (~> 3.0)[m
[32m+[m[32m      orm_adapter (~> 0.1)[m
[32m+[m[32m      railties (>= 4.1.0, < 5.2)[m
[32m+[m[32m      responders[m
[32m+[m[32m      warden (~> 1.2.3)[m
     diff-lcs (1.3)[m
     erubi (1.7.0)[m
     execjs (2.7.0)[m
[36m@@ -74,6 +87,10 @@[m [mGEM[m
     jbuilder (2.7.0)[m
       activesupport (>= 4.2.0)[m
       multi_json (>= 1.2)[m
[32m+[m[32m    jquery-rails (4.3.1)[m
[32m+[m[32m      rails-dom-testing (>= 1, < 3)[m
[32m+[m[32m      railties (>= 4.2.0)[m
[32m+[m[32m      thor (>= 0.14, < 2.0)[m
     loofah (2.1.1)[m
       crass (~> 1.0.2)[m
       nokogiri (>= 1.5.9)[m
[36m@@ -87,6 +104,8 @@[m [mGEM[m
     nio4r (2.2.0)[m
     nokogiri (1.8.1-x64-mingw32)[m
       mini_portile2 (~> 2.3.0)[m
[32m+[m[32m    orm_adapter (0.5.0)[m
[32m+[m[32m    popper_js (1.12.9)[m
     pry (0.11.3)[m
       coderay (~> 1.1.0)[m
       method_source (~> 0.9.0)[m
[36m@@ -127,6 +146,9 @@[m [mGEM[m
     rb-fsevent (0.10.2)[m
     rb-inotify (0.9.10)[m
       ffi (>= 0.5.0, < 2)[m
[32m+[m[32m    responders (2.4.0)[m
[32m+[m[32m      actionpack (>= 4.2.0, < 5.3)[m
[32m+[m[32m      railties (>= 4.2.0, < 5.3)[m
     rspec-core (3.7.1)[m
       rspec-support (~> 3.7.0)[m
     rspec-expectations (3.7.0)[m
[36m@@ -180,6 +202,8 @@[m [mGEM[m
       tzinfo (>= 1.0.0)[m
     uglifier (4.1.3)[m
       execjs (>= 0.3.0, < 3)[m
[32m+[m[32m    warden (1.2.7)[m
[32m+[m[32m      rack (>= 1.0)[m
     web-console (3.5.1)[m
       actionview (>= 5.0)[m
       activemodel (>= 5.0)[m
[36m@@ -196,10 +220,13 @@[m [mPLATFORMS[m
 [m
 DEPENDENCIES[m
   bcrypt (~> 3.1.7)[m
[32m+[m[32m  bootstrap (~> 4.0.0)[m
   byebug[m
   capybara (~> 2.13)[m
   coffee-rails (~> 4.2)[m
[32m+[m[32m  devise[m
   jbuilder (~> 2.5)[m
[32m+[m[32m  jquery-rails[m
   pry (~> 0.10)[m
   pry-byebug (~> 3.1)[m
   pry-rails (~> 0.3)[m
[36m@@ -208,6 +235,7 @@[m [mDEPENDENCIES[m
   rspec-rails (~> 3.6)[m
   sass-rails (~> 5.0)[m
   selenium-webdriver[m
[32m+[m[32m  sprockets-rails (~> 3.2.1)[m
   sqlite3[m
   timecop (~> 0.9.1)[m
   turbolinks (~> 5)[m
[1mdiff --git a/app/assets/stylesheets/application.css b/app/assets/stylesheets/application.css[m
[1mdeleted file mode 100644[m
[1mindex 099c7e4..0000000[m
[1m--- a/app/assets/stylesheets/application.css[m
[1m+++ /dev/null[m
[36m@@ -1,16 +0,0 @@[m
[31m-/*[m
[31m- * This is a manifest file that'll be compiled into application.css, which will include all the files[m
[31m- * listed below.[m
[31m- *[m
[31m- * Any CSS and SCSS file within this directory, lib/assets/stylesheets, or any plugin's[m
[31m- * vendor/assets/stylesheets directory can be referenced here using a relative path.[m
[31m- *[m
[31m- * You're free to add application-wide styles to this file and they'll appear at the bottom of the[m
[31m- * compiled file so the styles you add here take precedence over styles defined in any other CSS/SCSS[m
[31m- * files in this directory. Styles in this file should be added after the last require_* statement.[m
[31m- * It is generally better to create a new file per style scope.[m
[31m- *[m
[31m- *= require_tree .[m
[31m- *= require_self[m
[31m- */[m
[31m- .checkboxes { margin-right: 15px; }[m
[1mdiff --git a/app/controllers/cars_controller.rb b/app/controllers/cars_controller.rb[m
[1mindex c97c82d..3e63089 100644[m
[1m--- a/app/controllers/cars_controller.rb[m
[1m+++ b/app/controllers/cars_controller.rb[m
[36m@@ -3,6 +3,10 @@[m [mclass CarsController < ApplicationController[m
     @cars = Car.where(owner_id: current_person.id)[m
   end[m
 [m
[32m+[m[32m  # def show[m
[32m+[m[32m  #   @car = Car.where(:model => params[:id]).first[m
[32m+[m[32m  # end[m
[32m+[m
   def show[m
     @car = Car.find(params[:id])[m
   rescue ActiveRecord::RecordNotFound => e[m
[1mdiff --git a/app/controllers/parkings_controller.rb b/app/controllers/parkings_controller.rb[m
[1mindex e761a03..69c9bf0 100644[m
[1m--- a/app/controllers/parkings_controller.rb[m
[1m+++ b/app/controllers/parkings_controller.rb[m
[36m@@ -1,6 +1,7 @@[m
 class ParkingsController < ApplicationController[m
[32m+[m[32m  before_action :require_login, except: [:index][m
[32m+[m
   def index[m
[31m-    # @parkings = Parking.all.where(owner: current_person)[m
     @parkings = Parking.search(search_params)[m
   end[m
 [m
[1mdiff --git a/app/controllers/sessions_controller.rb b/app/controllers/sessions_controller.rb[m
[1mindex 7319225..0f534c9 100644[m
[1m--- a/app/controllers/sessions_controller.rb[m
[1m+++ b/app/controllers/sessions_controller.rb[m
[36m@@ -1,7 +1,5 @@[m
 class SessionsController < ApplicationController[m
[31m-  def index[m
[31m-    @accounts = Account.all[m
[31m-  end[m
[32m+[m[32m  before_action :require_login, except: [:new, :create][m
 [m
   def new[m
     @account = Account.new[m
[36m@@ -11,19 +9,18 @@[m [mclass SessionsController < ApplicationController[m
     @account = Account.find_by(email: account_params[:email])[m
     if @account&.password_digest == account_params[:password_digest][m
       session[:current_user_id] = @account.id[m
[31m-      redirect_to parkings_path[m
[32m+[m[32m      return_path = session.delete(:return_to) || root_path[m
[32m+[m[32m      redirect_to return_path[m
     else[m
       @account = Account.new[m
[31m-      render 'new'[m
[32m+[m[32m      flash.now[:error] = "The email or password is incorrect"[m
[32m+[m[32m      redirect_to login_path[m
     end[m
[31m-  # rescue ActiveRecord::NoMethodError => e[m
[31m-  #   flash[:error] = "The email or password is incorrect"[m
[31m-  #   render 'new'[m
   end[m
 [m
   def destroy[m
     session[:current_user_id] = nil[m
[31m-    redirect_to parkings_path[m
[32m+[m[32m    redirect_to login_path[m
   end[m
 [m
   private[m
[1mdiff --git a/app/models/account.rb b/app/models/account.rb[m
[1mindex b8f7fe0..15053ef 100644[m
[1m--- a/app/models/account.rb[m
[1m+++ b/app/models/account.rb[m
[36m@@ -1,25 +1,14 @@[m
[31m-require 'bcrypt'[m
[31m-[m
 class Account < ApplicationRecord[m
[31m-  include BCrypt[m
[32m+[m[32m  attr_accessor :password_confirmation, :password[m
 [m
[31m-  belongs_to :owner, class_name: 'Person', optional: true[m
[32m+[m[32m  belongs_to :owner, class_name: 'Person', optional: true, foreign_key: :owner_id[m
   accepts_nested_attributes_for :owner[m
 [m
[31m-  validates :email, :password_digest, presence: true[m
[31m-  # has_secure_password[m
[31m-[m
[32m+[m[32m  validates :email, presence: true[m
 [m
[31m-  # :before_filter :authenticate[m
[32m+[m[32m  # has_secure_password[m
 [m
   def self.authenticate(email, password)[m
[31m-    account = Account.find_by(email: email)[m
[31m-    return nil if account.nil?[m
[31m-[m
[31m-    password_1 = Password.new(account.password_digest)[m
[31m-[m
[31m-    if password == password_1[m
[31m-      account[m
[31m-    end[m
[32m+[m[32m    find_by(email: email).try(:authenticate, password)[m
   end[m
 end[m
[1mdiff --git a/app/models/car.rb b/app/models/car.rb[m
[1mindex 53ea6a1..e64ee36 100644[m
[1m--- a/app/models/car.rb[m
[1m+++ b/app/models/car.rb[m
[36m@@ -1,7 +1,12 @@[m
 ﻿class Car < ApplicationRecord[m
   belongs_to :owner, class_name: 'Person', optional: true[m
   has_one :place_rent[m
[32m+[m[32m  has_one :account[m
   accepts_nested_attributes_for :owner[m
 [m
   validates :registration_number, :model, :owner, presence: true[m
[32m+[m
[32m+[m[32m  def to_param[m
[32m+[m[32m    "#{id}-#{model.parameterize}"[m
[32m+[m[32m  end[m
 end[m
[1mdiff --git a/app/models/parking.rb b/app/models/parking.rb[m
[1mindex d745205..cc76cf9 100644[m
[1m--- a/app/models/parking.rb[m
[1m+++ b/app/models/parking.rb[m
[36m@@ -2,6 +2,7 @@[m [mclass Parking < ApplicationRecord[m
   belongs_to :owner, class_name: 'Person', optional: true[m
   belongs_to :address, optional: true[m
   has_many :place_rents[m
[32m+[m[32m  has_one :account[m
   accepts_nested_attributes_for :address[m
 [m
   validates :hour_price, :day_price, :places, numericality: true, presence: true[m
[1mdiff --git a/app/views/cars/index.html.erb b/app/views/cars/index.html.erb[m
[1mindex f662390..77e16ad 100644[m
[1m--- a/app/views/cars/index.html.erb[m
[1m+++ b/app/views/cars/index.html.erb[m
[36m@@ -8,7 +8,7 @@[m
     <tr>[m
       <td><%= car.registration_number %></td>[m
       <td><%= car.model %></td>[m
[31m-      <td><%= link_to "Details", car_path(car.id) %></td>[m
[32m+[m[32m      <td><%= link_to "Details", car_path(car) %></td>[m
       <td><%= link_to "Edit", edit_car_path(car) %></td>[m
       <td><%= link_to "Delete", car_path(car), method: :delete, data: { confirm: 'Are you sure?' }  %></td>[m
     </tr>[m
[1mdiff --git a/app/views/layouts/application.html.erb b/app/views/layouts/application.html.erb[m
[1mindex b0cdee7..98637c2 100644[m
[1m--- a/app/views/layouts/application.html.erb[m
[1m+++ b/app/views/layouts/application.html.erb[m
[36m@@ -4,20 +4,22 @@[m
     <title><%= title_helper(controller_name) %></title>[m
     <%= csrf_meta_tags %>[m
 [m
[31m-    <%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track': 'reload' %>[m
[32m+[m[32m    <%= stylesheet_link_tag 'application', media: 'all', 'data-turbolinks-track': 'reload' %>[m
     <%= javascript_include_tag 'application', 'data-turbolinks-track': 'reload' %>[m
   </head>[m
 [m
   <body>[m
[31m-    <%= render "shared/flash" %>[m
[31m-    <p style="text-align:right;">[m
[31m-      <% if current_person == nil %>[m
[31m-        <%= link_to 'Log in', new_session_path %>[m
[31m-      <% else %>[m
[31m-        <%= current_person.full_name %>[m
[31m-        <%= link_to 'Log out', session_path(session[:current_user_id]), method: :delete %>[m
[31m-      <% end %>[m
[31m-    </p>[m
[31m-    <%= yield %>[m
[32m+[m[32m    <div class="margins-for-page">[m
[32m+[m[32m      <%= render "shared/flash" %>[m
[32m+[m[32m      <p style="text-align:right;">[m
[32m+[m[32m        <% if current_person == nil %>[m
[32m+[m[32m          <%= link_to 'Log in', login_path %>[m
[32m+[m[32m        <% else %>[m
[32m+[m[32m          <%= current_person.full_name %>[m
[32m+[m[32m          <%= link_to 'Log out', logout_path(session[:current_user_id]), method: :delete %>[m
[32m+[m[32m        <% end %>[m
[32m+[m[32m      </p>[m
[32m+[m[32m      <%= yield %>[m
[32m+[m[32m    </div>[m
   </body>[m
 </html>[m
[1mdiff --git a/app/views/parkings/_form.html.erb b/app/views/parkings/_form.html.erb[m
[1mindex 960e679..1dc40a6 100644[m
[1m--- a/app/views/parkings/_form.html.erb[m
[1m+++ b/app/views/parkings/_form.html.erb[m
[36m@@ -1,60 +1,87 @@[m
 <%= form_for @parking, url: parkings_path, local: true do |form| %>[m
 [m
[31m-  <% if @parking.errors.any? %>[m
[31m-    <div id="error_explanation">[m
[31m-      <h2>[m
[31m-        <%= pluralize(@parking.errors.count, "error") %> prohibited[m
[31m-        this parking from being saved:[m
[31m-      </h2>[m
[31m-      <ul>[m
[31m-        <% @parking.errors.full_messages.each do |msg| %>[m
[31m-          <li><%= msg %></li>[m
[31m-        <% end %>[m
[31m-      </ul>[m
[32m+[m[32m  <%= form.fields_for :address do |one_address| %>[m
[32m+[m[32m    <div class='account-input'>[m
[32m+[m[32m      <%= one_address.label :city, class: 'label' %>[m
[32m+[m[32m      <%= one_address.text_field :city, class: 'label-parking' %>[m
[32m+[m[32m      <% if @parking.errors.any? %>[m
[32m+[m[32m        <div id='error_explanation' class='alert alert-danger' role='alert'>[m
[32m+[m[32m          <div class:='label'>[m
[32m+[m[32m            <%= @parking.errors[:'address.city'].first %>[m
[32m+[m[32m          </div>[m
[32m+[m[32m        </div>[m
[32m+[m[32m      <% end %>[m
     </div>[m
[31m-  <% end %>[m
 [m
[31m-  <%= form.fields_for :address do |one_address| %>[m
[31m-    <p>[m
[31m-      <%= one_address.label :city %><br>[m
[31m-      <%= one_address.text_field :city %>[m
[31m-    </p>[m
[31m-[m
[31m-    <p>[m
[31m-      <%= one_address.label :street %><br>[m
[31m-      <%= one_address.text_field :street %>[m
[31m-    </p>[m
[31m-[m
[31m-    <p>[m
[31m-      <%= one_address.label :zip_code %><br>[m
[31m-      <%= one_address.text_field :zip_code %>[m
[31m-    </p>[m
[32m+[m[32m    <div class='account-input'>[m
[32m+[m[32m      <%= one_address.label :street, class: 'label' %>[m
[32m+[m[32m      <%= one_address.text_field :street, class: 'label-parking' %>[m
[32m+[m[32m      <% if @parking.errors.any? %>[m
[32m+[m[32m        <div id='error_explanation' class='alert alert-danger' role='alert'>[m
[32m+[m[32m          <div class:='label'>[m
[32m+[m[32m            <%= @parking.errors[:'address.street'].first %>[m
[32m+[m[32m          </div>[m
[32m+[m[32m        </div>[m
[32m+[m[32m      <% end %>[m
[32m+[m[32m    </div>[m
[32m+[m
[32m+[m[32m    <div class='account-input'>[m
[32m+[m[32m      <%= one_address.label :zip_code, class: 'label' %>[m
[32m+[m[32m      <%= one_address.text_field :zip_code, class: 'label-parking' %>[m
[32m+[m[32m      <% if @parking.errors.any? %>[m
[32m+[m[32m        <div id='error_explanation' class='alert alert-danger' role='alert'>[m
[32m+[m[32m          <div class:='label'>[m
[32m+[m[32m            <%= @parking.errors[:'address.zip_code'].join(', ') %>[m
[32m+[m[32m          </div>[m
[32m+[m[32m        </div>[m
[32m+[m[32m      <% end %>[m
[32m+[m[32m    </div>[m
   <% end %>[m
 [m
[31m-  <p>[m
[31m-    <%= form.label :hour_price %><br>[m
[31m-    <%= form.text_field :hour_price %>[m
[31m-  </p>[m
[32m+[m[32m  <div class='account-input'>[m
[32m+[m[32m    <%= form.label :hour_price, class: 'label' %>[m
[32m+[m[32m    <%= form.text_field :hour_price, class: 'label-parking' %>[m
[32m+[m[32m    <% if @parking.errors.any? %>[m
[32m+[m[32m      <div id='error_explanation' class='alert alert-danger' role='alert'>[m
[32m+[m[32m        <div class:='label'>[m
[32m+[m[32m          <%= @parking.errors[:hour_price].join(', ') %>[m
[32m+[m[32m        </div>[m
[32m+[m[32m      </div>[m
[32m+[m[32m    <% end %>[m
[32m+[m[32m  </div>[m
 [m
[31m-  <p>[m
[31m-    <%= form.label :day_price %><br>[m
[31m-    <%= form.text_area :day_price %>[m
[31m-  </p>[m
[32m+[m[32m  <div class='account-input'>[m
[32m+[m[32m    <%= form.label :day_price, class: 'label' %>[m
[32m+[m[32m    <%= form.text_field :day_price, class: 'label-parking' %>[m
[32m+[m[32m    <% if @parking.errors.any? %>[m
[32m+[m[32m      <div id='error_explanation' class='alert alert-danger' role='alert'>[m
[32m+[m[32m        <div class:='label'>[m
[32m+[m[32m          <%= @parking.errors[:day_price].join(', ') %>[m
[32m+[m[32m        </div>[m
[32m+[m[32m      </div>[m
[32m+[m[32m    <% end %>[m
[32m+[m[32m  </div>[m
 [m
[31m-  <p>[m
[31m-    <%= form.label :places %><br>[m
[31m-    <%= form.text_area :places %>[m
[31m-  </p>[m
[32m+[m[32m  <div class='account-input'>[m
[32m+[m[32m    <%= form.label :places, class: 'label' %>[m
[32m+[m[32m    <%= form.text_field :places, class: 'label-parking' %>[m
[32m+[m[32m    <% if @parking.errors.any? %>[m
[32m+[m[32m      <div id='error_explanation' class='alert alert-danger' role='alert'>[m
[32m+[m[32m        <div class:=col-xs-3>[m
[32m+[m[32m          <div class:='label'>[m
[32m+[m[32m            <%= @parking.errors[:places].join(', ') %>[m
[32m+[m[32m          </div>[m
[32m+[m[32m        </div>[m
[32m+[m[32m      </div>[m
[32m+[m[32m    <% end %>[m
[32m+[m[32m  </div>[m
 [m
[31m-  <p>[m
[31m-    <%= form.label :kind %><br>[m
[31m-    <%= form.text_field :kind %>[m
[31m-  </p>[m
[32m+[m[32m  <%= form.label :kind, class: 'label' %>[m
[32m+[m[32m  <%= form.select(:kind, Parking.kinds.map {|k, v| [k ,v] }, {}, { :class => 'select'}) %>[m
 [m
[31m-  <p>[m
[32m+[m[32m  <div class='margins-for-botton'>[m
     <%= form.submit %>[m
[31m-  </p>[m
[31m-[m
[32m+[m[32m  </div>[m
 <% end %>[m
 [m
 <%= link_to 'Back', parkings_path %>[m
[1mdiff --git a/app/views/parkings/edit.html.erb b/app/views/parkings/edit.html.erb[m
[1mindex 7edc066..f9a4c27 100644[m
[1m--- a/app/views/parkings/edit.html.erb[m
[1m+++ b/app/views/parkings/edit.html.erb[m
[36m@@ -50,7 +50,7 @@[m
 [m
   <p>[m
     <%= form.label :kind %><br>[m
[31m-    <%= form.select('k1', 'kind', Parking.kinds.collect { |k, v| [k, v] }) %>[m
[32m+[m[32m    <%= form.text_field :kind %>[m
   </p>[m
 [m
   <p>[m
[1mdiff --git a/app/views/parkings/index.html.erb b/app/views/parkings/index.html.erb[m
[1mindex 8beadda..771630a 100644[m
[1m--- a/app/views/parkings/index.html.erb[m
[1m+++ b/app/views/parkings/index.html.erb[m
[36m@@ -1,6 +1,8 @@[m
[31m-<h1>List of all parkings</h1>[m
[31m-<div>[m
[31m-  <%= form_tag(parkings_path, method: "get", id: "search-form") do %>[m
[32m+[m[32m<p style="text-align:right;"><%= link_to "Sign in", register_path %></p>[m
[32m+[m
[32m+[m[32m<%= render "parkings/header" %>[m
[32m+[m[32m<div class='search-tags'>[m
[32m+[m[32m  <%= form_tag(parkings_path, method: 'get', id: 'search-form') do %>[m
 [m
     <%= label_tag 'public_parking', 'Public' %>[m
     <%= check_box_tag('public', 'Public', true, class: 'checkboxes') %>[m
[36m@@ -16,7 +18,7 @@[m
 [m
     <%= text_field_tag('search', params[:search], placeholder: 'Search City', class: 'checkboxes') %>[m
 [m
[31m-    <%= submit_tag "Search", name: nil %>[m
[32m+[m[32m    <%= submit_tag 'Search', name: nil %>[m
   <% end %>[m
 </div>[m
 [m
[36m@@ -25,17 +27,20 @@[m
   <h4>There are no parkings containing the term <%= params[:search] %>.</h4>[m
 <% end %>[m
 [m
[31m-<table style="width:100%; text-align: center;">[m
[31m-  <tr>[m
[31m-    <th>City</th>[m
[31m-    <th>Remaining places</th>[m
[31m-    <th>Hour price</th>[m
[31m-    <th>Day price</th>[m
[31m-    <th>Kind</th>[m
[31m-    <th>Action</th>[m
[31m-    <th>Action</th>[m
[31m-    <th>Action</th>[m
[31m-  </tr>[m
[32m+[m[32m<table class='table' style='width:100%; text-align: center;'>[m
[32m+[m[32m  <thead class='thead-dark'>[m
[32m+[m[32m    <tr>[m
[32m+[m[32m      <th scope='col'>City</th>[m
[32m+[m[32m      <th scope='col'>Remaining places</th>[m
[32m+[m[32m      <th scope='col' scope='col'>Hour price</th>[m
[32m+[m[32m      <th scope='col'>Day price</th>[m
[32m+[m[32m      <th scope='col'>Kind</th>[m
[32m+[m[32m      <th scope='col'>Action</th>[m
[32m+[m[32m      <th scope='col'>Action</th>[m
[32m+[m[32m      <th scope='col'>Action</th>[m
[32m+[m[32m      <th scope='col'></th>[m
[32m+[m[32m    </tr>[m
[32m+[m[32m  </thead>[m
   <% @parkings.each do |parking| %>[m
     <tr>[m
       <td><%= parking.address&.city %></td>[m
[36m@@ -43,15 +48,15 @@[m
       <td><%= parking.hour_price %> zl</td>[m
       <td><%= parking.day_price %> zl</td>[m
       <td><%= parking.kind %></td>[m
[31m-      <td><%= link_to "Details", parking_path(parking.id) %></td>[m
[31m-      <td><%= link_to "Edit", edit_parking_path(parking) %></td>[m
[31m-      <td><%= link_to "Delete", parking_path(parking), method: :delete, data: { confirm: 'Are you sure?' }  %></td>[m
[31m-      <td><%= link_to "Rent a place", new_parking_place_rent_path(parking.id) %></td>[m
[32m+[m[32m      <td><%= link_to 'Details', parking_path(parking.id) %></td>[m
[32m+[m[32m      <td><%= link_to 'Edit', edit_parking_path(parking) %></td>[m
[32m+[m[32m      <td><%= link_to 'Delete', parking_path(parking), method: :delete, data: { confirm: 'Are you sure?' }  %></td>[m
[32m+[m[32m      <td><%= link_to 'Rent a place', new_parking_place_rent_path(parking.id) %></td>[m
     </tr>[m
   <% end %>[m
 </table>[m
 <ul>[m
[31m-  <li><%= link_to "Create new", new_parking_path %></li>[m
[31m-  <li><%= link_to "List of place rents", place_rents_path %></li>[m
[31m-  <li><%= link_to "List of cars", cars_path %></li>[m
[32m+[m[32m  <li><%= link_to 'Create new', new_parking_path %></li>[m
[32m+[m[32m  <li><%= link_to 'List of place rents', place_rents_path %></li>[m
[32m+[m[32m  <li><%= link_to 'List of cars', cars_path %></li>[m
 </ul>[m
[1mdiff --git a/app/views/parkings/new.html.erb b/app/views/parkings/new.html.erb[m
[1mindex 28816d7..fa3890f 100644[m
[1m--- a/app/views/parkings/new.html.erb[m
[1m+++ b/app/views/parkings/new.html.erb[m
[36m@@ -1,3 +1,5 @@[m
[31m-<h1>New parking</h1>[m
[32m+[m[32m<div class='account-parking'>[m
[32m+[m[32m  <h4>Create New Parking</h4>[m
 [m
[31m-<%= render "parkings/form" %>[m
[32m+[m[32m  <%= render "parkings/form" %>[m
[32m+[m[32m</div>[m
[1mdiff --git a/app/views/sessions/index.html.erb b/app/views/sessions/index.html.erb[m
[1mdeleted file mode 100644[m
[1mindex 1e108b0..0000000[m
[1m--- a/app/views/sessions/index.html.erb[m
[1m+++ /dev/null[m
[36m@@ -1,20 +0,0 @@[m
[31m-<h1>List of accounts</h1>[m
[31m-<table style="width:100%; text-align: center;">[m
[31m-  <tr>[m
[31m-    <th>First Name</th>[m
[31m-    <th>Last Name</th>[m
[31m-    <th>Email</th>[m
[31m-  </tr>[m
[31m-  <% @accounts.each do |account| %>[m
[31m-    <tr>[m
[31m-      <td><%= account.owner&.first_name %></td>[m
[31m-      <td><%= account.owner&.last_name %></td>[m
[31m-      <td><%= account.email %></td>[m
[31m-    </tr>[m
[31m-  <% end %>[m
[31m-</table>[m
[31m-<ul>[m
[31m-  <li><%= link_to "Create new", new_car_path %></li>[m
[31m-  <li><%= link_to "List of place rents", place_rents_path %></li>[m
[31m-  <li><%= link_to "List of parkings", parkings_path %></li>[m
[31m-</ul>[m
[1mdiff --git a/app/views/sessions/new.html.erb b/app/views/sessions/new.html.erb[m
[1mindex eb7fbcd..e61c12a 100644[m
[1m--- a/app/views/sessions/new.html.erb[m
[1m+++ b/app/views/sessions/new.html.erb[m
[36m@@ -1,3 +1,5 @@[m
[32m+[m[32m<p style="text-align:right;"><%= link_to "Sign in", register_path %></p>[m
[32m+[m
 <h1>Login</h1>[m
 [m
 <%= form_for @account, url: sessions_path, local: true do |form| %>[m
[36m@@ -27,7 +29,10 @@[m
   </p>[m
 [m
   <p>[m
[31m-    <%= form.submit %>[m
[32m+[m[32m    <%= form.submit('Log in') %>[m
   </p>[m
[32m+[m[32m  <%= link_to 'Back', parkings_path %>[m
[32m+[m
[32m+[m
 [m
 <% end %>[m
[1mdiff --git a/app/views/shared/_flash.html.erb b/app/views/shared/_flash.html.erb[m
[1mindex d2293e6..7ed4ed1 100644[m
[1m--- a/app/views/shared/_flash.html.erb[m
[1m+++ b/app/views/shared/_flash.html.erb[m
[36m@@ -1,3 +1,5 @@[m
 <% flash.each do |key, value| %>[m
[31m-  <%= content_tag :div, value, class: "flash #{key}" %>[m
[32m+[m[32m  <div class="alert alert-primary" role="alert">[m
[32m+[m[32m    <%= content_tag :div, value, class: "flash #{key}" %>[m
[32m+[m[32m  </div>[m
 <% end %>[m
[1mdiff --git a/config/routes.rb b/config/routes.rb[m
[1mindex d475b45..ff16a2e 100644[m
[1m--- a/config/routes.rb[m
[1m+++ b/config/routes.rb[m
[36m@@ -1,11 +1,17 @@[m
 Rails.application.routes.draw do[m
   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html[m
[31m-  root 'sessions#new'[m
[32m+[m[32m  root 'parkings#index'[m
 [m
   resources :parkings do[m
     resources :place_rents, only: [:new, :create][m
   end[m
[31m-  resources :sessions[m
[32m+[m[32m  resources :sessions, only: [:create][m
   resources :place_rents, only: [:index, :show, :destroy][m
   resources :cars[m
[32m+[m[32m  resources :accounts, only: [:create][m
[32m+[m
[32m+[m[32m  get '/login', to: 'sessions#new', as: 'login'[m
[32m+[m[32m  delete '/logout', to: 'sessions#destroy', as: 'logout'[m
[32m+[m[32m  get '/register', to: 'accounts#new', as: 'register'[m
[32m+[m
 end[m
[1mdiff --git a/development.sqlite3 b/development.sqlite3[m
[1mindex 7a0021f..4b8f5db 100644[m
Binary files a/development.sqlite3 and b/development.sqlite3 differ
