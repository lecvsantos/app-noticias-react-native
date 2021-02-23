import React from 'react'
import { Container, NewsTitle, InfoContainer, NewsDescription, NewsAuthor } from './styles'
import { NewsImage, NewsDate, NewsCategory, CategoryName } from './../NewsCard/styles'
import Icon from 'react-native-vector-icons/FontAwesome';
import Moment from 'moment';

export default function NewsDetail({ news }) {
  var dt = news.dt_criacao;
  return (
    <Container>
      <NewsTitle>{news.titulo}</NewsTitle>
      <NewsImage source={{ uri: news.imagem }} />
      <InfoContainer>
        <NewsDate>
          <Icon name="calendar" size={12} color="#000"/> {Moment(dt).format('D.MM.Y')} ás {Moment(dt).format('H:m')}
        </NewsDate>
        <NewsDescription>{news.descricao}</NewsDescription>
        <NewsCategory>
          <CategoryName><Icon name="tags" size={12} color="#fff"/> {news.nome_categoria}</CategoryName>
        </NewsCategory>
        <NewsAuthor><Icon name="user"></Icon> {news.autor}</NewsAuthor>
      </InfoContainer>
    </Container>
  );
}
