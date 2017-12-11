Given ("I am on the list of invoices") do
  visit('/invoice')
end
And("I have an invoice") do
  @client2 =FactoryBot.create(:client, name: 'Fabio', surname: 'Zan',business_name: 'zan srl', address: 'via romana', email:  'zan@gmail.com', cf: 'ZMNLGD84A01H501Y', p_iva: '03190700546', public_authority: false,    iva: '' )
  @activity2 =FactoryBot.create(:activity, name: 'attività 2', description: 'Attività due' )
  @invoice=FactoryBot.create(:invoice, client:@client2, activity:@activity2)

end
And ("I press on download") do
  visit('/invoice/'+ @invoice.id.to_s+'/pdf')
end
