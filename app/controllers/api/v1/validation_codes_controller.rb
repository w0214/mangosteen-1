class Api::V1::ValidationCodesController < ApplicationController
  def create
    code = SecureRandom.random_number.to_s[2..7]
    validation_code = ValidationCode.new email: params[:email],
      kind:'sign-in',code:code
    if validation_code.save
      head 200
    else
      render json:{error:validation_code.errors}
    end
  end
end
