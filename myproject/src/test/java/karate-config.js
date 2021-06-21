function fn()
{
	var config = 
	{
		host : 'https://reqres.in',
		serviceUri: '/api/users',
		validateName: 'morpheus'	
	}


	var env = karate.env
	karate.log("Environment entered is ==>",env)
	if(env=='QA')
	{
		config.url = "https://www.QA.com."
	}
	else if(env=='DEV')
	{
		config.url = "https://www.DEV.com."
	}
	else
	{
		config.url = "https://www.E2E.com."
	}
	return config;
}