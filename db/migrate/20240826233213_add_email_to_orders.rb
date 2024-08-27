# このクラスは、ordersテーブルにemailカラムを追加します。
# frozen_string_literal: true

# AddEmailToOrdersクラスは、ordersテーブルにemailカラムを追加するマイグレーションです。
class AddEmailToOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :email, :string, null: false, after: :name, comment: 'メールアドレス'
  end
end
