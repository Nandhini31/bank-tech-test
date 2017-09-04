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

git clone https://github.com/Nandhini31/bank-tech-test.git

cd  project directory

bundle install or bundle(if bundle is already installed)

rspec # to run unit tests from project directory


new_account = Account.new
new_account.deposit(1000)
new_account.withdraw(500)
new_account.printer

new_account.balance #to check balance
new_account.history #to check transaction history


```

## What can be improved
* Make it more interactive. i.e more messages to user when a withdrawal and deposit is made and display the balance
