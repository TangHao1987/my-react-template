`/** @jsx React.DOM */`

Masthead = require("./Masthead.coffee")
TransactionTable = require("./TransactionTable.coffee")
ReactTransitionGroup = React.addons.TransitionGroup
imageURL = "/images/BladeRunner.gif"

StarterApp = React.createClass
  render: () ->
    `(
      <div className='main'>
        <Masthead title="Transaction Table">
          This table shows all your bank transactions
        </Masthead>
        <TransactionTable></TransactionTable>
      </div>
    )`

module.exports = StarterApp
