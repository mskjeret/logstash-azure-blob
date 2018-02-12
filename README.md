# Logstash from azure blob

Fetch data from the azure blob and convert them to access log entries in Elasticsearch.

Using the https://github.com/Azure/azure-diagnostics-tools/tree/master/Logstash/logstash-input-azureblob
plugin to handle azure blob fetch.

## Environment variables

- ACCOUNT     = Azure Storage Account
- ACCESS_KEY  = Storage access key
- CONTAINER   = Container name
- REGISTRY_PATH = The path to store offset in the azure blob
- ELASTIC_HOST = The url of elasticserch e.g elasticsearch:9200
- ELASTIC_INDEX = The index prefix. Will have a suffix of _%{+YYYY.MM.dd}