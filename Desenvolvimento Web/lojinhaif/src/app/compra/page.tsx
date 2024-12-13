'use client'

import React, { useState, useEffect } from 'react';
import axios from 'axios';
import '../globals.css';

export default function Compras() {
  const [compras, setCompras] = useState<any[]>([]);

  useEffect(() => {
    axios
      .get('http://localhost:3000/compras')
      .then((response) => {
        const dados = Array.isArray(response.data) ? response.data : [];
        setCompras(dados);
      })
      .catch((error) => {
        console.error('Erro ao carregar compras:', error);
        setCompras([]);
      });
  }, []);

  const cadastrarCompra = () => {
    const novaCompra = { id: compras.length + 1, status: 'Finalizada' };
    setCompras([...compras, novaCompra]);
  };

  const cancelarCompra = (index: number) => {
    setCompras((prevCompras) =>
      prevCompras.map((compra, i) =>
        i === index ? { ...compra, status: 'Cancelada' } : compra
      )
    );
  };

  return (
    <>
      <header>
        <nav>
          <a href="./clientes/" className="botao-nav">Clientes</a>
          <a href="./compra/" className="botao-nav ativo">Compras</a>
          <a href="./produto/" className="botao-nav">Produtos</a>
        </nav>
      </header>

      <main>
        <button onClick={cadastrarCompra}>Nova Compra</button>
        <div id="container-compras" className={compras.length === 0 ? 'vazio' : ''}>
          {Array.isArray(compras) && compras.length === 0 ? (
            <div className="vazio">Nenhuma compra cadastrada ainda.</div>
          ) : (
            Array.isArray(compras) && compras.map((compra, index) => (
              <div key={index} className="cartao-compra">
                <h3>Compra #{compra.id}</h3>
                <p>Status: {compra.status}</p>
                {compra.status === 'Finalizada' && (
                  <button onClick={() => cancelarCompra(index)}>Cancelar</button>
                )}
              </div>
            ))
          )}
        </div>
      </main>
    </>
  );
}