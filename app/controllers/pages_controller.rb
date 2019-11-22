class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @statues = Statue.all.order(created_at: :desc).limit(6)
    @markers = @statues.map do |statue|
      {
        lat: statue.latitude,
        lng: statue.longitude,
        image_url: helpers.asset_url('pin2.png'),
        infoWindow: render_to_string(partial: "statues/info_window", locals: { statue: statue })
      }
    end
  end
end
