feature 'testing form features' do

scenario "we have a form with an input" do
  visit('/')
  #expect(find('//form/input')).not_to be(nil)
  expect(find("//form/input[@name='name']")).not_to be(nil)
end

scenario "we are testing the submit button" do
  visit ('/')
  expect(find("//form/input[@type='submit']")).not_to be(nil)
end

end
