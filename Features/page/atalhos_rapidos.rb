# frozen_string_literal: true

class Atalhos
  def atalho_atendimento
    @driver.find_element(accessibility_id: 'Assistant').displayed?
    @driver.find_element(accessibility_id: 'Assistant').click
    result = @driver.find_element(accessibility_id: 'Atendimentos', match: :first).displayed?
    raise ArgumentError, "Pagina de atendimento não localizada" if result == false
    @driver.back
  end

  def atalho_chat
    @driver.find_element(accessibility_id: 'icon_chatbot').displayed?
    @driver.find_element(accessibility_id: 'icon_chatbot').click
    result = @driver.find_element(xpath: "//android.view.View[@text='OMINT mais']").displayed?
    raise ArgumentError, "Pagina de chat não localizada" if result == false
    @driver.back
  end

  def atalho_credencial
    @driver.find_element(accessibility_id: 'Bank%20Cards').displayed?
    @driver.find_element(accessibility_id: 'Bank%20Cards').click
    result = @driver.find_element(accessibility_id: 'Credencial Digital', match: :first).displayed?
    raise ArgumentError, "Pagina de credencial não localizada" if result == false
    @driver.back
  end

  def atalho_faturas
    @driver.find_element(accessibility_id: 'Bill').displayed?
    @driver.find_element(accessibility_id: 'Bill').click
    result = @driver.find_element(accessibility_id: 'Faturas').displayed?
    raise ArgumentError, "Pagina de faturas não localizada" if result == false
    @driver.back
  end

  def atalho_reembolsos
    @driver.find_element(accessibility_id: 'Refund%202').displayed?
    @driver.find_element(accessibility_id: 'Refund%202').click
    sleep 5
    result = @driver.find_element(accessibility_id: 'Reembolsos').displayed?
    raise ArgumentError, "Pagina de reembolsos não localizada" if result == false
    @driver.back
  end

  def atalho_autorizacoes
    @driver.find_element(accessibility_id: 'Approval').displayed?
    @driver.find_element(accessibility_id: 'Approval').click
    result = @driver.find_element(accessibility_id: 'Autorizações').displayed?
    raise ArgumentError, "Pagina de autorizações não localizada" if result == false
    @driver.back
  end
end
