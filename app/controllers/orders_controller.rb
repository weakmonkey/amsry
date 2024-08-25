# frozen_string_literal: true

# OrdersController handles order-related actions such as creating and confirming orders.
class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def confirm
    @order = Order.new(order_params)
  end

  def create
    @order = Order.new(order_params)
    @order.save
  end

  private

  def order_params
    params.require(:order).permit(:name)
  end
end
