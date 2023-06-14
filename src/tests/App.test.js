import React from 'react';
import { render } from '@testing-library/react';
import App from '../App.js';

test('renders correctly', () => {
  const component = render(<App />);
  expect(component).toMatchSnapshot();
  return;
});