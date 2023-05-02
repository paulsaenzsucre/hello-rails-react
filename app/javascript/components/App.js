import React from 'react';
import { Routes, Link, Route } from 'react-router-dom';

// import your components for each route
import GreetingPage from '../pages/GreetingPage';
import HomePage from '../pages/HomePage';

const App = () => (
  <div>
  <h1>Hello Rails React</h1>
    <Link to="/greeting">Randon Greetings</Link>
    <Routes>
      <Route index element = {<HomePage />} />
      <Route path="/greeting" element={<GreetingPage />} />
    </Routes>      
  </div>
);
export default App;