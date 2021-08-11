feature 'testing form features' do

scenario "we have a form with an input of player1" do
  visit('/')
  #expect(find('//form/input')).not_to be(nil)
  expect(find("//form/input[@name='player1']")).not_to be(nil)
end

scenario "we are testing the submit button" do
  visit ('/')
  expect(find("//form/input[@type='submit']")).not_to be(nil)
end

 scenario "checking we have a form for input for player2" do
  visit ('/')
   expect(find("//form/input[@name='player2']")).not_to be(nil)
 end

end
