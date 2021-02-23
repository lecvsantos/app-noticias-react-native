import React, { useState, useEffect } from 'react'
import { StatusBar, RefreshControl } from 'react-native'

import api from '../../services/api'
import NewsCard from '../../components/NewsCard'

import { Container, NewsList } from './styles'

export default function Home() {
  const [refreshing, setRefreshing] = React.useState(false);
  const [data, setData] = useState([]);
  const [paginate, setPaginate] = useState([]);

  useEffect(() => {
    loadNews();
  }, []);

  const loadNews = async () => {
    const response = await api.get('/noticia')
    setData(response.data.items);
    setPaginate(response.data.paginate);
  }

  const loadMoreResults = async (paginate) => {
    if (paginate.nextPage != null) {
      async function getNextPage() {
        const response = await api.get(paginate.nextPage)
        // data.push(response.data.items);
        for (let item of response.data.items) {
          data.push(item);
        }
        setData(data);
        setPaginate(response.data.paginate);
      }
      getNextPage();
    }
  }

  const onRefresh = async () => {
    setRefreshing(true);
    loadNews();
    setRefreshing(false);
  }

  const renderListItem = ({ item }) => <NewsCard news={item} />

  return (
    <Container>
      <StatusBar barStyle="light-content" />
      <NewsList
        data={data}
        keyExtractor={item => String(item.id)}
        renderItem={renderListItem}
        onEndReachedThreshold={0.2}
        onEndReached={({ distanceFromEnd }) => {
          loadMoreResults(paginate);
        }}
        refreshControl={
          <RefreshControl refreshing={refreshing} onRefresh={onRefresh} />
        }
      />
    </Container>
  );
}

Home.navigationOptions = () => {

  return {
    title: 'Últimas Notícias',
    headerStyle: {
      backgroundColor: '#0984e3',
    },
    headerTintColor: '#fff',
    headerTitleStyle: {
      fontWeight: 'bold',
    }
  };

};
