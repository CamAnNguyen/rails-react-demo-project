import React from 'react';
import { Provider } from 'react-redux';
import { Container, Row } from 'react-bootstrap';

import HeaderContainer from '../containers/HeaderContainer';
import ContentContainer from '../containers/ContentContainer';
import reduxStore from '../store/reduxStore';
import { verifyCredentials } from '../actions/authTokenActions';

export const store = reduxStore();
verifyCredentials(store);

function App() {
  return (
    <Provider store={store}>
      <Container className="app-container">
        <Row className="main-header">
          <HeaderContainer />
        </Row>
        <Row className="main-content">
          <ContentContainer />
        </Row>
      </Container>
    </Provider>
  );
}

export default App;
