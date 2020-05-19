import React from "react";

class Calculator extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      result: 0,
      num1: '',
      num2: ''
    };
    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
    this.setDivide = this.setDivide.bind(this);
    this.setMultiply = this.setDivide.bind(this);
    this.setAdd = this.setDivide.bind(this);
    this.setSubtract = this.setDivide.bind(this);
    this.clear = this.setClear.bind(this);
  }

  setNum1(e) {
    const num1 = e.target.value ? parseInt(e) : ""
    this.setState({num1});
  };

  setNum2(e) {
    const num2 = e.target.value ? parseInt(e) : ""
    this.setState({num2});
  }

  setDivide(e) {
    e.preventDefault();
    const answer = this.state.num1 / this.state.num2;
    this.setState({answer});
  };

  setMultiply(e) {
    e.preventDefault();
    const answer = this.state.num1 * this.state.num2;
    this.setState({answer});
  };

  setAdd(e) {
    e.preventDefault();
    const answer = this.state.num1 + this.state.num2;
    this.setState({answer});
  };

  setSubtract(e) {
    e.preventDefault();
    const answer = this.state.num1 - this.state.num2;
    this.setState({answer});
  };

  setClear (e) {
    e.preventDefault();
    this.setState( {
      num1: '',
      num2: '',
      result: 0
    })
  };



  render() {
    const {num1, num2, result} = this.state; 
    return (
      <div>
        <h1>{this.state.result}</h1>
        <input onChange={this.setNum1} value={num1}></input>
        <input onChange={this.setNum1} value={num2}></input>
        <button onClick={this.clear}>Clear Calculator</button>
        <button onClick={this.setAdd}>+</button>
        <button onClick={this.setSubtract}>-</button>
        <button onClick={this.setMultiply}>*</button>
        <button onClick={this.setDivide}>/</button>
      </div>
    );
  }
}

export default Calculator;