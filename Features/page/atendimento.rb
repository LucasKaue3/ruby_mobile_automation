# frozen_string_literal: true

class Atendimento
  def menu_atendimento
    @driver.find_element(accessibility_id: 'Assistant').displayed?
    @driver.find_element(accessibility_id: 'Assistant').click
  end

  def novo_atendimento
    sleep 22
    @driver.find_element(accessibility_id: 'Novo').click
    @driver.find_element(xpath: "//android.widget.EditText[@index='0']").send_keys('obs')
    @driver.find_element(xpath: "//android.widget.Button[@index='3']").click
    @driver.find_element(:id, 'com.android.permissioncontroller:id/permission_allow_button').click
    @driver.find_element(:id, 'android:id/text1').click
    @driver.find_element(accessibility_id: 'Shutter').displayed?
    @driver.find_element(accessibility_id: 'Shutter').click
    @driver.find_element(:id, 'com.android.camera2:id/done_button').click
    @driver.find_element(accessibility_id: 'Enviar').displayed?
    @driver.find_element(accessibility_id: 'Enviar').click
  end

  def validar_atendimento_criado
    @driver.find_element(accessibility_id: 'Enviado com sucesso!').displayed?
    @driver.find_element(accessibility_id: 'Enviado com sucesso!')
  end
end
