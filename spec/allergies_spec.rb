require('rspec')
require('allergies')

describe('Fixnum#allergies') do
  it('handles no allergies') do
    expect(0.allergies).to(eq(['None']))
  end

  it('handles one allergy') do
    expect(1.allergies).to(eq(['eggs']))
  end

  it('handles two allergies') do
    expect(3.allergies).to(eq(['eggs', 'peanuts']))
  end

  it('takes the number 15 and returns eggs, peanutes, shellfish, and strawberries') do
    expect(15.allergies).to(eq(['eggs', 'peanuts', 'shellfish', 'strawberries']))
  end
end
