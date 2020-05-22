import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
//import logger from 'redux-logger';
import { createStore, applyMiddleware } from 'redux';

import Root from './components/root';


// const addLoggingToDispatch = (store) =>{
//   const locStore = store.dispatch;
//   return (action) => {
//     console.log(store.getState());
//     console.log("TEST");
//     console.log(action);
//     locStore(action);
//     console.log(store.getState());
//   };

// };

const addLoggingToDispatch = store => next => action => {
    console.log(store.getState());
    console.log("TEST");
    console.log(action);
    next(action);
    console.log(store.getState());
};


const applyMiddlewares = (store, ...midList) => {
  let dispatch = store.dispatch;

  midList.forEach(middleware => {
    dispatch = middleware(store)(dispatch);
  });
  return Object.assign({}, store, { dispatch })
};



document.addEventListener('DOMContentLoaded', () => {
  const preloadedState = localStorage.state ?
    JSON.parse(localStorage.state) : {};
  let store = configureStore(preloadedState);
  
  //store.dispatch = addLoggingToDispatch(store);
  store = applyMiddlewares(store, addLoggingToDispatch);
  
  const root = document.getElementById('content');
  ReactDOM.render(<Root store={store} />, root);
});

