## What is an effective income tax rate

The actual rate at which a taxpayer pays taxes on income accounting for all taxes and offsets. The rate is calculated by dividing the total of all taxes paid, less offsets, by the total taxable income. The effective rate is typically lower than the tax bracket, which is currently based on a progressive rate scale. For example, a person in the 28% tax bracket who paid a total of state and federal taxes of $13,000 on $100,000 of taxable income has an effective tax rate of 13%.

source: <a href="http://www.investorwords.com/17190/effective_income_tax_rate.html">investorwords.com</a>

## How to use it

1. Install [Octave](https://www.gnu.org/software/octave/download)
2. In Ocatve command line, download the function into a `.m` file
```octave
urlwrite("https://raw.githubusercontent.com/jfoclpf/plotEffectiveTaxRate/master/plotEffectiveTaxRate.m", "plotEffectiveTaxRate.m" )
```
3. Now run, for example
```octave
plotEffectiveTaxRate([0, 7091, 20261, 40552, 80640], [14.5, 28.5, 37, 45, 48])
```


## Function syntax

`plotEffectiveTaxRate( tax_brackets_array, tax_rates_array, colour_code [optional])`

 * The first item of `tax_brackets_array` must always be zero. 
 * The `tax_rates_array` values must be inserted already as percentages, i.e., for a 20% tax, use `20` inseatd of `.2`  
 * The arrays must have the same size.

#### Colour codes

The colour codes are the same applied for the Octave function `plot`, namely

* ‘k’	blacK
* ‘r’	Red
* ‘g’	Green
* ‘b’	Blue
* ‘y’	Yellow
* ‘m’	Magenta
* ‘c’	Cyan
* ‘w’	White

## Example

An example for the Portuguese progressive income tax for the year 2017

The table for the tax brackets is

| Value (€)               | Tax (%)  |
| ----------------------- | -------- |
|   less 7091             | 14.5     |
| between 7091 and 20261  | 28.5     |
| between 20261 and 40552 | 37       |
| between 40552 and 80640 | 45       |
|   more than 80640       | 48       |

Thus, you need to run

```octave
plotEffectiveTaxRate([0, 7091, 20261, 40552, 80640], [14.5, 28.5, 37, 45, 48])
```

which outputs

<img src="https://github.com/jfoclpf/plotEffectiveTaxRate/blob/master/images/graph.png?raw=true"></img>

Another example for the Portuguese progressive income tax for the year 2018

```octave
plotEffectiveTaxRate([0, 7091, 10700, 20261, 25000, 36856, 80640], [14.5, 23, 28.5, 35, 37, 45, 48], "r")
```

which outputs

<img src="https://github.com/jfoclpf/plotEffectiveTaxRate/blob/master/images/graph2.png?raw=true"></img>

## Multiple charts

For multiple charts use the Octave commands `hold on` and `hold off`. For example

 ```octave
 plotEffectiveTaxRate([0, 7091, 20261, 40552, 80640], [14.5, 28.5, 37, 45, 48], "b")
 hold on
 plotEffectiveTaxRate([0, 7091, 10700, 20261, 25000, 36856, 80640], [14.5, 23, 28.5, 35, 37, 45, 48], "r")
 hold off
 ```
 
 which outpurts
 
 <img src="https://github.com/jfoclpf/plotEffectiveTaxRate/blob/master/images/graph3.png?raw=true"></img>
 

