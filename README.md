# Simpsons Big Data

Repositorio para aplicar técnicas de Big Data a un conjunto de datos de los Simpsons. El conjunto de datos utilizado se generará a partir de información publicada en [Wikipedia](https://en.wikipedia.org/wiki/List_of_The_Simpsons_episodes_(seasons_1%E2%80%9320)) con técnicas de _Web Scrapping_.

Se deben cumplir dos etapas de movimiento de datos:

-   **ETL**: La extracción y transformación de datos se realizará con scripts de python, para posteriorment realizar la carga a una cubeta en [AWS S3](https://aws.amazon.com/es/s3/).
-   **ELT**: En un paso posterior, se debe ejecutar una lógica de extracción y carga de información a un script independiente de python utilizando [AWS Athena](https://aws.amazon.com/es/athena/), para finalmente hacer una segunda transformación desde el script a los datos consultados.
