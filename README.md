# What is an effective income tax rate

The actual rate at which a taxpayer pays taxes on income accounting for all taxes and offsets. The rate is calculated by dividing the total of all taxes paid, less offsets, by the total taxable income. The effective rate is typically lower than the tax bracket, which is currently based on a progressive rate scale. For example, a person in the 28% tax bracket who paid a total of state and federal taxes of $13,000 on $100,000 of taxable income has an effective tax rate of 13%.

source: <a href="http://www.investorwords.com/17190/effective_income_tax_rate.html">investorwords.com</a>

# How to use

This Octave function plots the Effective Tax Rate for Income Progressive Taxes.

Using <a href="https://www.gnu.org/software/octave/">Octave</a> simply run the following function, taking as parameters arrays including the <a href="https://en.wikipedia.org/wiki/Tax_bracket">Tax Brackets</a> and the corresponding <a href="https://en.wikipedia.org/wiki/Tax_rate">Tax Rates</a> for each Tax Bracket.

Therefore the syntax is

`plotEffectiveTaxRate( tax_brackets_array, tax_rates_array, colour_code [optional])`

 * The first item of `tax_brackets_array` must always be zero. 
 * The `tax_rates_array` values must be inserted already as percentages, i.e., for a 20% tax, use `20` inseatd of `.2`  
 * The arrays must have the same size.

# Colour codes

The colour codes are the same applied for the Octave function `plot`, namely

* ‘k’	blacK
* ‘r’	Red
* ‘g’	Green
* ‘b’	Blue
* ‘y’	Yellow
* ‘m’	Magenta
* ‘c’	Cyan
* ‘w’	White

# Example

An example for the Portuguese progressive income tax for the year 2017

`plotEffectiveTaxRate([0, 7091, 20261, 40552, 80640], [14.5, 28.5, 37, 45, 48])`

which outputs

<img src="https://github.com/jfoclpf/plotEffectiveTaxRate/blob/master/images/graph.png?raw=true"></img>

Another example for the Portuguese progressive income tax for the year 2018

`plotEffectiveTaxRate([0, 7091, 10700, 20261, 25000, 36856, 80640], [14.5, 23, 28.5, 35, 37, 45, 48], "r")`

which outputs

<img src="https://github.com/jfoclpf/plotEffectiveTaxRate/blob/master/images/graph2.png?raw=true"></img>

# Multiple charts

For multiple charts use the Octave commands `hold on` and `hold off`. For example

 `plotEffectiveTaxRate([0, 7091, 20261, 40552, 80640], [14.5, 28.5, 37, 45, 48], "b")`<br>
 `hold on`<br>
 `plotEffectiveTaxRate([0, 7091, 10700, 20261, 25000, 36856, 80640], [14.5, 23, 28.5, 35, 37, 45, 48], "r")`<br>
 `hold off`<br>
 
 which outpurts
 
 <img src="https://github.com/jfoclpf/plotEffectiveTaxRate/blob/master/images/graph3.png?raw=true"></img>
 

