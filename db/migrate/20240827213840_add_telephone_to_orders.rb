# このクラスは、ordersテーブルにtelephoneカラムを追加します。
# frozen_string_literal: true

# AddEmailToOrdersクラスは、ordersテーブルにtelephoneカラムを追加するマイグレーションです。
class AddTelephoneToOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :telephone, :string, null: false, after: :email, comment: '電話番号'
  end
end
