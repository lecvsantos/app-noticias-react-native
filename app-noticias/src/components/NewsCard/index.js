import React from 'react'
import { Container, BottomContainer, NewsImage, InfoContainer, NewsTitle, ButtonLink, TextButtonLink, NewsCategory, CategoryName, NewsDate } from './styles'
import Icon from 'react-native-vector-icons/FontAwesome';
import Moment from 'moment';
import { navigate } from '../../utils'

export default function NewsCard({ news }) {
  var dt = news.dt_criacao;
  return (
    <Container>
      <NewsImage source={{ uri: news.imagem }} />
      
      <InfoContainer>
        <NewsDate>
          <Icon name="calendar" size={12} color="#000"/> {Moment(dt).format('D.MM.Y')} ás {Moment(dt).format('H:m')}
        </NewsDate>
        <NewsTitle>{news.titulo}</NewsTitle>
        <NewsCategory>
          <CategoryName><Icon name="tags" size={12} color="#fff"/> {news.nome_categoria}</CategoryName>
        </NewsCategory>
        <ButtonLink onPress={() => (
          navigate('Detail', [{ 'id': news.id }])
        )}>
          <TextButtonLink><Icon name="plus"/> Saiba mais...</TextButtonLink>
        </ButtonLink>
      </InfoContainer>
    </Container>
  );
}