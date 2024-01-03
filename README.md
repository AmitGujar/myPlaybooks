## How to use

- Create vm in default values then you can use latest tag.

``` docker run --env-file .env amitgujar/ansible ```

- Create vm using custom values then you can use alpha tag

``` docker run --env-file .env amitgujar/ansible:alpha ```

### Requirements

- The env file should follow this format

```
AZURE_SUBSCRIPTION_ID=
AZURE_CLIENT_ID=
AZURE_SECRET=
AZURE_TENANT=
SSH_PUBLIC_KEY=
```

### More options will be added in the future.

