import React from 'react';
import logo from './logo.svg';
import './App.css';

const env = process.env;

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.tsx</code> and save to reload.
        </p>
        <p>
          <code>Environment {env.NODE_ENV} at <a href={env.REACT_APP_PUBLIC_URL}>Home</a></code>
        </p>
        <p>
          Name: {env.REACT_APP_NAME} -- Age:{env.REACT_APP_NUMBER}
        </p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
      </header>
    </div>
  );
}

export default App;
