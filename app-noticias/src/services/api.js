import axios from 'axios'

import { Alert } from 'react-native'

const api = axios.create({
  baseURL: 'http://localhost:8080',
  headers: {
    'Content-Type': 'application/json',
    Accept: 'application/json',
  },
})

api.interceptors.response.use(
  response => {
    // captura a resposta da api
    return response
  },
  error => {
    // Trata possiveis erros na resposta da api
    if (
      error.request._hasError === true &&
      error.request._response.includes('connect')
    ) {
      Alert.alert(
        'Aviso',
        'Não foi possível conectar aos nossos servidores, sem conexão a internet',
        [ { text: 'OK' } ],
        { cancelable: false },
      )
    }

    return Promise.reject(error)
  },
)

export default api
