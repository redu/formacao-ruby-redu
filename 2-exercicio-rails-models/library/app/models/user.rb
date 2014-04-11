class User < ActiveRecord::Base
  # nome_completo
  has_many :bookings
  has_many :books, through: :bookings

  validates :first_name, presence: true
  validates :email, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }

  before_create :set_complete_name
  after_destroy :say_goodbye

  protected

  # def minha_transacao
  #   User.transaction do
  #     u = User.create first_name: "Guilherme"
  #     raise "Eita" unless u.valid?
  #   end
  # end

  def set_complete_name
    self.complete_name = "#{self.first_name} #{self.last_name}"
  end

  def say_goodbye
    Rails.logger.info "Bye bye User"
  end
end
