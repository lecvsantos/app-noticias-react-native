import styled from 'styled-components/native'

export const Container = styled.View`
  elevation: 20;
  margin: 10px;
`;

export const InfoContainer = styled.View`
  padding: 20px 20px 10px 20px;
  background: #fff;
  border-bottom-left-radius: 5px;
  border-bottom-right-radius: 5px;
  box-shadow: 0px 5px 16px rgba(0,0,0,0.1);
`;

export const NewsTitle = styled.Text`
  font-weight: 600;
  font-size: 24px;
  margin-bottom: 10px;
`;

export const NewsDescription = styled.Text`
  font-weight: 400;
  font-size: 14px;
`;

export const NewsAuthor = styled.Text`
  margin-top: 10px;
  margin-bottom: 10px;
  font-weight: 400;
  font-size: 14px;
`;