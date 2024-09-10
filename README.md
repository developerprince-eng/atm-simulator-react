# React ATM Simulator

This is a simple website created for atm-simulator project

### Technologies

* [React](https://reactjs.org/) - Mainly used to implement clean and reusable html components
* [EJS6](http://ejs.co/) - Makes JavaScript code much cleaner and easier to read
* [Axios](https://www.npmjs.com/package/axios) - Used to call REST API in this project

### Prerequisites

* npm or yarn
* Running backend [ATM Simulator](https://github.com/Skhwan/atm-simulator/) project

### Running project on MAC OS X

###### Yarn

* install all required libraries

```bash
yarn install
```

* Then start the project

```bash
yarn start
```

###### NPM

* install required libraries

```bash
npm install
```

* start project

```bash
npm start
```

###### Docker

* Build Docker Image

```bash
docker build --tag asba-tesch-atm-simulator-app:latest .
```

* Run Container Image

```bash
docker run -d --name atm-simulator-app -p 80:80 asba-tesch-atm-simulator-app:latest
```

The ATM Simulator website should automatically start on http://localhost:3000.
