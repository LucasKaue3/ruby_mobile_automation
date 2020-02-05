# frozen_string_literal: true

class Autorizador

  def menu_autorizador
    @driver.find_element(accessibility_id: 'Approval').displayed?
    @driver.find_element(accessibility_id: 'Approval').click
  end

  def nova_autorizacao
    sleep 14
    @driver.find_element(accessibility_id: 'Novo').click
    @driver.find_element(xpath: "//android.widget.EditText[@index='0']").send_keys('obs')
    @driver.find_element(xpath: "//android.widget.Button[@index='5']").click
    @driver.find_element(:id, 'com.android.permissioncontroller:id/permission_allow_button').click
    @driver.find_element(:id, 'android:id/text1').click
    @driver.find_element(accessibility_id: 'Shutter').displayed?
    @driver.find_element(accessibility_id: 'Shutter').click
    @driver.find_element(:id, 'com.android.camera2:id/done_button').click
    @driver.find_element(accessibility_id: 'Enviar').displayed?
    @driver.find_element(accessibility_id: 'Enviar').click
  end

  def validar_autorizacao_criada
    @driver.find_element(accessibility_id: 'Enviado com sucesso!').displayed?
    @driver.find_element(accessibility_id: 'Enviado com sucesso!')
  end
end
