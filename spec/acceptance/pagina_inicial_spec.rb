# coding: utf-8

require 'spec_helper'

feature 'atualização da pagina principal' do
  scenario 'adicionar um novo texto' do
    visit new_home_path
    fill_in 'Titulo', with: 'SEPOL'
    fill_in 'Texto', with: 'Setor de Polimeros - LAMAV - UENF'
    click_button 'Create Home'
    page.should have_content 'Pagina principal criada com sucesso.'
    page.should have_content 'SEPOL'
    page.should have_content 'Setor de Polimeros - LAMAV - UENF'

  end
end

