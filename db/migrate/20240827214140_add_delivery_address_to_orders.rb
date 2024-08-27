# このクラスは、ordersテーブルにdelivery_addressカラムを追加します。
# frozen_string_literal: true

# AddEmailToOrdersクラスは、ordersテーブルにdelivery_addressカラムを追加するマイグレーションです。
class AddDeliveryAddressToOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :delivery_address, :string, null: false, after: :telephone, comment: 'お届け先住所'
  end
end
