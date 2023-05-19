# frozen_string_literal: true

class Customer::CustomersController < ApplicationController
  before_action :authenticate_customer!

  def confirm_withdraw
  end

  def withdraw
    current_customer.update(is_deleted: true)
    reset_session
    redirect_to root_path, notice: "退会の成功しました。"
  end
end
