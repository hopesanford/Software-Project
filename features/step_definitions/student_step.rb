Then /^I should see (.*)$/ do |name|
  page.has_content?(name) == true
end
