class VerifyUser

AcceptedSpaceAgencies = %w(asi.it asc-csa.gc.ca cnes.fr cnsa.gov.cn dlr.de esa.int inpe.br jaxa.jp nasa.gov tsniimash.ru stfc.ac.uk)

  def self.verified(user)
    user.verify
    user.save
    email_domain = user.email.split('@')[1]
    if AcceptedSpaceAgencies.include?(email_domain)
      user.astronaut = true
      user.save
    end
  end
end
