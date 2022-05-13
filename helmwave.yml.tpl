version: 0.19.3

repositories:
  - name: bitnami
    url: https://charts.bitnami.com/bitnami

.options: &options
  namespace: my-namespace
  wait: true
  timeout: 300s
  create_namespace: true

# https://helmwave.github.io/docs/0.19.x/tpl/
releases:
{{- with readFile "releases.yml" | fromYaml | get "releases" }}
{{ range $v := . }}
- name: {{ $v | get "name" }}
  tags: [{{ $v | get "name" }}]
  namespace: my-namespace
  chart:
     name: bitnami/redis
  <<: *options
{{ end }}
{{- end }}
