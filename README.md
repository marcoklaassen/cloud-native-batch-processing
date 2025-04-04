# Prerequisites

## Operators
* Red Hat OpenShift Serverless
* Streams for Apache Kafka
* Streams for Apache Kafka Console

### Serverless configuration

```
apiVersion: operator.knative.dev/v1beta1
kind: KnativeServing
metadata:
  name: knative-serving
  namespace: knative-serving
spec: {}
```

```
kind: KnativeEventing
apiVersion: operator.knative.dev/v1beta1
metadata:
  name: knative-eventing
  namespace: knative-eventing
spec: {}
```

```
kind: KnativeKafka
apiVersion: operator.serverless.openshift.io/v1alpha1
metadata:
  name: knative-kafka
  namespace: knative-eventing
spec:
  broker:
    enabled: false
    defaultConfig:
      numPartitions: 10
      replicationFactor: 3
      bootstrapServers: REPLACE_WITH_COMMA_SEPARATED_KAFKA_BOOTSTRAP_SERVERS
  source:
    enabled: true
  sink:
    enabled: true
  channel:
    enabled: false
    bootstrapServers: REPLACE_WITH_COMMA_SEPARATED_KAFKA_BOOTSTRAP_SERVERS
```

# Helm Chart Description

## Database

## Kafka

### Cluster
* Kafka Instance

### KafkaConnect
* Image Stream
* Kafka Connect
* Kafka Connector
* Kafka User 

### Console
* Console Instance
* Kafka User

## KNative


### KNative Service

* Kafka Source
* Config Secret
* Kafka User

### KNative Job Sink

* Kafka Source
* Config Secret
* Kafka User

# Links

## Debezium / Kafka Streams

* http://youtube.com/watch?v=wEhr-mnPOeQ
* https://debezium.io/documentation/reference/3.0/tutorial.html
* https://github.com/Red-Hat-EMEA-SSA-AppDev-Team/debezium-amqstreams-3scale-postgres2sql-demo


## Job Sink / K8s Jobs

* https://knative.dev/docs/eventing/sinks/job-sink/



