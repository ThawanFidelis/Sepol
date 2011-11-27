# encoding: utf-8

require 'spec_helper'

feature 'Gerenciar pesquisadores' do
  scenario 'Adicionando novo pesquisador' do
    visit new_researcher_path
    fill_in 'Nome', with: 'Thawan'
#    fill_in 'Cargo', with: 'Bolsista'
    fill_in 'Email', with: 'thawan@email.com'
    fill_in 'Lattes', with: 'http://lates/thawan'
    select 'researcher[cargo]', with: "Professor"
#    select_field 'pesquisador_cargo'
    page.should have_content 'Bolsista'
    click_button 'Create Pesquisador'
    page.should have_content 'Pesquisador adicionado com sucesso.'
    page.should have_content 'Thawan'
    page.should have_content 'thawan@email.com'
    page.should have_content 'http://lates/thawan'

  end
end

