import styled from 'styled-components/native'

export const Container = styled.View`
  background-color: #ecf0f1;
  elevation: 20;
  border-radius: 5px;
  margin: 10px;
  box-shadow: 0px 5px 16px rgba(0,0,0,0.1);
`;

export const BottomContainer = styled.View`
    padding: 0 20px 20px 20px;
    justify-content: space-between;
`;

export const NewsImage = styled.Image`
  height: 150px;
  width: 100%;
  border-top-left-radius: 5px;
  border-top-right-radius: 5px;
  align-self: center;
`;

export const InfoContainer = styled.View`
  padding: 20px 20px 10px 20px;
`;

export const NewsTitle = styled.Text`
  font-weight: 600;
  font-size: 16px;
`;

export const NewsCategory = styled.View`
  background-color: #a29bfe;
  padding: 5px;
  border-radius: 15px;
  margin-top: 10px;
  flex-direction: column;
  align-self: flex-start;
`;

export const CategoryName = styled.Text`
  color: #fff;
  font-weight: 600;
  padding: 2px;
`;

export const NewsDate = styled.Text`
  font-weight: 400;
  font-size: 12px;
  margin-bottom: 10px;
`;

export const NewsAutor = styled.Text`
  font-weight: 400;
  font-size: 12px;
`;

export const ButtonLink = styled.TouchableOpacity`
  flex-direction: column;
  align-self: flex-end;
`;

export const TextButtonLink = styled.Text`
  font-weight: 600;
  font-size: 16px;
  color: #54a0ff;
  margin-top: 10px;
`;
