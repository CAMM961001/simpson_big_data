CREATE EXTERNAL TABLE IF NOT EXISTS `simpsons`.`<name>` (
    `id_overall`    string,
    `id_season`     string,
    `title`         string,
    `director`      string,
    `writer`        string,
    `air_date`      string,
    `code`          string,
    `viewers`       string
)
COMMENT
    "Catalog of chapters in Simpsons Seasons"
ROW FORMAT SERDE
    'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES(
    'field.delim'=',')
STORED AS INPUTFORMAT
    'org.apache.hadoop.mapred.TextInputFormat'
    OUTPUTFORMAT
        'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
    's3://itam-analytics-dante/simpsons/raw/episodes/'
TBLPROPERTIES (
    'classification'='csv',
    "skip.header.line.count"="1");