version: 0.19.3

repositories:
  - name: bitnami
    url: https://charts.bitnami.com/bitnami


.options: &options
  namespace: my-namespace
  wait: true
  timeout: 300s
  create_namespace: true

releases:
  - name: redis-a
    <<: *options
    chart:
      name: bitnami/redis
    namespace: my-namespace
  - name: redis-b
    <<: *options
    chart:
      name: bitnami/redis
    namespace: my-namespace
