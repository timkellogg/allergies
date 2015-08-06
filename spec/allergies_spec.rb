require('rspec')
require('allergies')

describe('Fixnum#allergies') do
  it('takes the number one and returns eggs') do
    expect(1.allergies).to(eq(['eggs']))
  end

  it('takes the number 3 and returns eggs and peanuts') do
    expect(3.allergies).to(eq(['eggs', 'peanuts']))
  end

  it('takes the number 15 and returns eggs, peanutes, shellfish, and strawberries') do
    expect(15.allergies).to(eq(['eggs', 'peanuts', 'shellfish', 'strawberries']))
  end
end
