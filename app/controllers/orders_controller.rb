# frozen_string_literal: true

# OrdersController handles order-related actions such as creating and confirming orders.
class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def confirm
    @order = Order.new(order_params)
    if @order.valid?
      render :confirm, status: 303
    else
      render :new
    end
  end

  def create
    @order = Order.new(order_params)

    if @order.valid?
      return render :new, status: 303 if params[:button] == 'back'

      redirect_to complete_orders_url if @order.save
    else
      render :confirm
    end
    # Rails.logger.debug "Button: #{params[:button]}" # デバッグ用ログ
  end

  private

  def order_params
    params.require(:order).permit(:name)
  end
end
