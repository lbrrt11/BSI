import React from 'react';
import './home.css';
import './page.tsx';

export default function Home() {
  return (
    <div className="container">
      <div className="content-box">
        <h1>Boas vindas à lojinha do If<br></br>É um prazer tê-lo(a) conosco!</h1>
        <div>
          <a href="./clientes/" className="button">Acessar</a>
        </div>
      </div>
    </div>
  );
}