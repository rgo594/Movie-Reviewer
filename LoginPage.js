import React from 'react';

class LoginPage extends React.Component {
  state={
    username: '',
    password: ''
  }

  // componentDidMount() {
  // if (!!localStorage.getItem("token")) {
  //   }
  // }

  handleChange = (event) => {
    this.setState({
      [event.target.name]: event.target.value
    })
  }

  // handleLogin = (event) => {
  //   event.preventDefault()
  //   fetch("http://localhost:3000/login", {
  //     method: "POST",
  //     headers: {
  //       "Content-Type": "application/json",
  //       Accept: 'application/json'
  //     },
  //     body: JSON.stringify({
  //       username: this.state.username,
  //       password: this.state.password
  //     })
  //   })
  //   .then(resp => resp.json())
  //   .then(console.log)
  // }
  handleLogin = (event) => {
    event.preventDefault()
    fetch('http://localhost:3000/profile', {
      method: 'GET',
      headers: {
        Authorization: `Bearer <token>`
      }
    })
  }

  render() {
    console.log(this.state);

    return (
      <form onSubmit={this.handleLogin}>
        <input type="text" name="username" onChange={this.handleChange} />
        <input type="password" name="password" onChange={this.handleChange} />

        <input type="submit" value="Log In" />
      </form>
    )
  }
}

export default LoginPage;
