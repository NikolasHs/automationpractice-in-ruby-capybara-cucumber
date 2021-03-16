module Pages
  class LoginPage < SitePrism::Page
    set_url '/index.php?controller=authentication&back=my-account'

    element  :breadcrumb, 'body.password.hide-left-column.hide-right-column.lang_en:nth-child(2) div:nth-child(1) div.columns-container div.container div.breadcrumb.clearfix:nth-child(1) > a.home:nth-child(1)'
    element  :input_create_account_email, '#email_create'
    element  :btn_create_an_account, '#SubmitCreate'
    element  :input_login_email, '#email'
    element  :input_login_password, '#passwd'
    element  :link_forgot_password, 'a[href^="http://automationpractice.com/index.php?controller=password"]'
    element  :btn_sign_in, '#SubmitLogin'
    element  :alert_message_authentication_failed, '#center_column > div.alert.alert-danger > ol > li'
    element  :link_logout, '.logout[href^="http://automationpractice.com/index.php?mylogout="]'

    def login(user, pass)
      input_login_email.set(user)
      input_login_password.set(pass)
      btn_sign_in.click
    end

    def alert_message 
      alert_message_authentication_failed.text
    end
  end
end
