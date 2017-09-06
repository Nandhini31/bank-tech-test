## User Stories
```
As a bank account holder,
I should be able to make deposits to my account.
This should increase my account balance.
```

```
As a bank account holder,
I should be able to make withdraw money from my account.
This should decrease my account balance

```

```
As a bank account holder,
I should be print my account statement that has the history
of date, time, balance in chronological order, anytime.

```
 ## Domain Model

 ```
 Objects
 -------
  Account holder

  Bank Account

  Transaction

  Printer

  Messages
  --------

  Deposits

  Withdrawal

  History

  Print account statement

```
```
## How I approached the problem
  * I started to break down each functionality into User stories
  * I did a domain model from the User stories
  * From my domain model I was able to get my classes and methods that help me write my feature and unit tests.
  * I (feature and unit) tested and  built the account class which has 2 functionality to credit ,debit  and storing history  
  * Printing the account statement is an independent responsibility, so  I  delegated that to Printer class.
```

## How to install and run
```
# Clone this repository
$ git clone https://github.com/Nandhini31/bank-tech-test.git

# navigate to project folder
cd  project directory

# Open irb
$ irb

2.4.0 :002 > require './lib/account.rb'
 => true

2.4.0 :003 > my_account = Account.new
 => #<Account:0x007f924f913528 @balance=0, @history=[], @printer=#<Printer:0x007f924f9134d8>>

2.4.0 :004 > my_account.deposit(1000)
 => [["06/09/17", "1000.00", "", "1000.00"]]

2.4.0 :005 > my_account.withdraw(50)
 => [["06/09/17", "1000.00", "", "1000.00"], ["06/09/17", "", "50.00", "950.00"]]

2.4.0 :006 > my_account.printer
date || credit || debit || balance
06/09/17 ||  || 50.00 || 950.00
06/09/17 || 1000.00 ||  || 1000.00
 => [["06/09/17", "", "50.00", "950.00"], ["06/09/17", "1000.00", "", "1000.00"]]

```
