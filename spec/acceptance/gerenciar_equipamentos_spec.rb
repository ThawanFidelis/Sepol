# coding: utf-8

require 'spec_helper'

feature 'gerenciar equipamentos' do
  scenario 'cadastrar equipamento' do
    visit new_equipament_path
    digitar_dados_validos_para_equipamento
    verificar_dados_do_equipamento

  end

  scenario 'atualizar equipamento' do
      equipamento = Factory.create(:equipamento)
#      visit edit_equipamento_path(Factory.create(:equipamento, :nome => "oi"))
      visit edit_equipamento_path(equipamento)
      digitar_dados_validos_para_equipamento
      verificar_dados_do_equipamento
      page.should have_content 'Equipamento atualizado com sucesso.'
  end
end

def digitar_dados_validos_para_equipamento
  fill_in 'Nome', with: 'estufa'
  fill_in 'Descricao', with: 'super estufa'
  click_button "equipament_picture"
  click_button 'Create Equipament'
end

def verificar_dados_do_equipamento
    page.should have_content 'Equipamento adicionado com sucesso.'
    page.should have_content 'estufa'
    page.should have_content 'super estufa'
end

