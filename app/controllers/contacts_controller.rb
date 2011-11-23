# encoding: utf-8
class ContactsController < ApplicationController

  def index
    @article = Article.find(6)
  end

  def create
    ContactsMailer.contact_form_email(params[:message]).deliver
    flash[:notice] = 'Сообщение успешно отправлено!'
    redirect_to contacts_path
  end

end
