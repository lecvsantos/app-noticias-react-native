import { createSwitchNavigator, createAppContainer } from 'react-navigation'
import { createStackNavigator } from 'react-navigation-stack'

import Home from './pages/home'
import Detail from './pages/detail'

const StackNavigator = createStackNavigator(
  {
    Home,
    Detail,
  },
  {
    initialRouteName: 'Home',
    defaultNavigationOptions: {
      headerTintColor: '#000',
      headerTitleStyle: {
        fontWeight: 'bold',
      },
    },
  },
);

const StackNavigatorContainer = createAppContainer(StackNavigator);


const RootStack = createSwitchNavigator(
  {
    App: StackNavigatorContainer,
  },
  {
    initialRouteName: 'App',
  },
);

const RootStackContainer = createAppContainer(RootStack);

export default RootStackContainer;
