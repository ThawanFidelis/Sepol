# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
User.create!(:name => "Usuario", :email => "usuario@email.com", :password => "123456") if User.first == nil
Home.create!(:titulo => "Sepol", :texto => "setor de polimeros da uenf") if Home.first == nil

