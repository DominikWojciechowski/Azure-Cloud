// Configuration
const host="http://localhost:7071";
const workflowname="workflow001";
const sharedaccesssignature="QgbcvNg9J79UVCsrYQ4BKlgItKRndah4s0nRdx2S8YM";

const url = host + "/api/" + workflowname + "/triggers/manual/invoke?api-version=2022-05-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=" + sharedaccesssignature;

const body = {
  "name": "Dominik",
  "surname": "Wojciechowski"
};

// Execution

import http from 'k6/http';
import { sleep, check } from 'k6';

export default function () {

  const res = http.post(url, body);

  sleep(1);

  const checkRes = check(res, {
    'status is 200': (r) => r.status === 200
  });
}