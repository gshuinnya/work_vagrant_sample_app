class TodolistsController < ApplicationController
    def new
  	  #viewへ渡すためのインスタンス変数に空のモデルオブジェクトを生成する。
  	  @list = List.new
    end

    def create
  	 # ストロングパラメータを使用
  	  list = List.new(list_params)
  	 # DBへ保存する
  	  list.save
  	 # トップ画面へリダイレクト
  	  redierect_to '/top'
  	end
    private

  	def list_params
　　　　　params.require(:list).permit(:title, :body)
  	end

end
