Given ("there is a public authority client") do
  @client = FactoryBot.create(:client, name: 'Matteo', surname: 'Piovesan',business_name: 'piove srl', address: 'via roma', email:  'piove@gmail.com', cf: 'RSSMRA85T10A562S', p_iva: '07643520567', public_authority: true,    iva: '' )
end
