import React, { useState, useEffect } from 'react'
import { StatusBar } from 'react-native'
import { Container, NewsList, Title } from './../home/styles'
import NewsDetail from '../../components/NewsDetail'
import api from '../../services/api'

export default function Detail({ navigation }) {

  const [data, setData] = useState([]);
  const id = navigation.state.params[0].id;

  useEffect(() => {
    // busca a noticia pelo id
    async function loadNewsById() {
      const response = await api.get('/noticia/' + id);
      setData(response.data);
    }

    loadNewsById();
  }, []);

  return (
    <Container>
      <StatusBar barStyle="light-content" />
      <NewsDetail news={data} />
    </Container>
  );
}

Detail.navigationOptions = () => {

  return {
    title: 'Notícia',
    headerStyle: {
      backgroundColor: '#0984e3',
    },
    headerTintColor: '#fff',
    headerTitleStyle: {
      fontWeight: 'bold',
    },
  };
};
