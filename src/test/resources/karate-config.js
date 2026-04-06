function fn() {
// Se puede obtener de las 2 formas
  var env = karate.env; // get java system property 'karate.env'
  var env2 = karate.properties['karate.env']

  karate.log('karate.env system property was (ENV):', env);
  karate.log('karate.env system property was (ENV2):', env2);
  console.log("karate.env LOG - ENV: "+env);
  console.log("karate.env LOG - ENV2: "+env2);

  if (!env) {
    env = 'dev'; // a custom 'intelligent' default
  }
  var config = { // base config JSON
    urlApi: 'https://petstore.swagger.io/v2/'
  };
  if (env == 'qa') {
    // over-ride only those that need to be
    config.urlApi = 'https://petstore.swagger.io/v2/';
  } else if (env == 'pdn') {
    config.urlApi = 'https://petstore.swagger.io/v2/';
  }
  // don't waste time waiting for a connection or if servers don't respond within 5 seconds
  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);

  karate.configure('ssl',true);
  return config;
}