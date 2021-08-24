require "faker"

module Factory
  class Dynamic
    def self.with_error(data, error)
      case error
      when "email inválido"
        data[:email] = "mail.com"
      when "email em branco"
        data[:email] = ""
      when "senha curta"
        data[:password] = "123"
      when "senha em branco"
        data[:password] = ""
      end
      data
    end

    def self.user(error = nil)
      user = {
        :name => "Test Automation #{Faker::Name.first_name}",
        :email => "teste.#{Faker::Name.first_name}.#{rand(9999)}@mailsac.com",
        :password => "senha123",
        :password_confirm => "senha123",
      }

      user = Dynamic.with_error(user, error) if error

      user
    end
  end
end
