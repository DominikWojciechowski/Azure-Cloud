// Configuration
const host="http://localhost:7071";
const workflowname="workflow002";
const sharedaccesssignature="xE8OZxzuL5UnsmvGqHYB-S0II8lDG2QfyzIJ-m4ma6E";

const url = host + "/api/" + workflowname + "/triggers/manual/invoke?api-version=2022-05-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=" + sharedaccesssignature;

const body = {
  "name": "Dominik",
  "surname": "Wojciechowski",
  "repository": [
      {
          "type": "LAPTOP",
          "name": "DELL Laptop XYZ"
      },
      {
          "type": "PC",
          "name": "Custom PC",
          "description": "Intel i5-13600K, nVidia RTX 3060Ti"
      },
      {
          "type": "PHONE",
          "name": "iPhone XS"
      },
      {
          "type": "PHONE",
          "name": "Samsung Galaxy S23"
      },
      {
          "type": "MOUSE",
          "name": "Logitech XYZ"
      },
      {
          "type": "HEADPHONES",
          "name": "Bose NC700"
      }
  ]
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