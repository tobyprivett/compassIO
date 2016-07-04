import axios from 'axios';
import { FETCH_CAVE } from './types';

const ROOT_URL = 'http://localhost:4000'

export function fetchCave() {
  const request = axios.get(`${ROOT_URL}/api/v1/caves/1`);

  return {
    type: FETCH_CAVE,
    payload: request
  };
}
