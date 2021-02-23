import React, { Component } from 'react'

import RootStackContainer from './src/routes'
import { ThemeProvider } from 'styled-components'
import { globalStyles } from './src/styles'

import { setTopLevelNavigator } from './src/utils'

export default function App() {
  return (
    <ThemeProvider theme={globalStyles}>
      <RootStackContainer  
        ref={navigatorRef => {
          setTopLevelNavigator(navigatorRef)
        }}
      />
    </ThemeProvider>
  );
}
