# [Workshop] Ash Intro

Jax.Ex live workshop 2023-05-11

## Setup

1. Install Elixir
2. Install postgresql
3. clone this repo
4. run `mix setup`

## TODO:

1. Add a property to a resource and generate a new postgresql migration

2. Modify GraphQL to display different data

3. Try using filters in JSON API

4. Modify liveview to accept the post content on creation as well

5. [Advanced] Create a comment resource, relate it to a post, wire up json api and graphql

### Files of interest

ASH API: `/my_ash_phoenix_app/blog/blog.ex`
ASH RESOURCE: `/my_ash_phoenix_app/blog/resources/post.ex`
ASH REGISTRY: `/my_ash_phoenix_app/blog/registry.ex`
JSON API ROUTER:`/my_ash_phoenix_app/blog/router.ex`
GRAPHQL SCHEMA: `/my_ash_phoenix_app/schema.ex`

### ASH Setup

https://ash-hq.org/docs/guides/ash/latest/tutorials/get-started#get-started

### LiveView

https://ash-hq.org/docs/guides/ash_phoenix/latest/tutorials/getting-started-with-ash-and-phoenix

`localhost:4000/posts`

### GRAPHQL

https://ash-hq.org/docs/guides/ash_graphql/latest/tutorials/getting-started-with-graphql.md

`localhost:4000/playground`
`localhost:4000/gql`


### JSON API

https://hexdocs.pm/ash_json_api/getting-started-with-json-api.html

```sh
curl 'localhost:4000/api/blog/posts'
```

```sh
curl -X POST 'localhost:4000/api/blog/posts' \
          --header 'Accept: application/vnd.api+json' \
          --header 'Content-Type: application/vnd.api+json' \
          --data-raw '{
        "data": {
          "type": "post",
          "attributes": {
            "title": "This post was created through the JSON API",
            "content": "Content created through api"
          }
        }
      }'
```
