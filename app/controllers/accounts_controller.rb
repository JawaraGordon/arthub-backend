class AccountsController < ApplicationController

    get '/accounts' do
        accounts = Account.all
        accounts.to_json
      end
  end
  