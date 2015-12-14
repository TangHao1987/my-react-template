
TransactionTable = React.createClass
  getInitialState: ()->
    `{
        data: []
    }`

  componentDidMount: ()->
    $.getJSON "data.json",
      ((respData)-> this.setState({data: respData})).bind(this)

  render: () ->
    rows = this.state.data.map (value, i)->
      `(
          <tr key={i}><td key='1'>{value.key}</td><td key='2'>{value.name}</td><td key='3'>{value.amount}</td></tr>
      )`
    `(<div className="table-responsive transaction-table">
        <table className="table table-bordered table-striped">
            <thead>
              <tr><td>id</td><td>name</td><td>amount</td></tr>
            </thead>
            <tbody>
              {rows}
            </tbody>
        </table>
    </div>
    )`

module.exports =  TransactionTable