# frozen_string_literal: true

class Customer::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]
  before_action :configure_customer_status, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  def create
    super
  end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  protected
  
  def configure_customer_status
    @customer = Customer.find_by(email: params[:customer][:email])
    
    return if !@customer
    # !@customer は、@customer オブジェクトが存在しない（nil）場合に真となる条件式
    # アカウントが取得できなかった場合、つまり @customer オブジェクトが存在しない場合には、return 文によりメソッドの実行が終了
    # アカウントが取得できなかった場合のエラーハンドリングや処理の早期終了などに使用されます。
    
    if @customer.valid_password?(params[:customer][:password]) && @customer.is_deleted?
      redirect_to new_customer_registration_path, notice: "退会済みです。再度サインアップしてください。"
    else
      create
    end
  end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
