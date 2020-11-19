# mina-docker-compose

This compose file is meant to be used for the Mina Testnet 4.1
To install you can run the following command.

```bash
curl https://raw.githubusercontent.com/StakeSquid/mina-docker-compose/main/provision.sh | bash -s PUBLIC_KEY 'PRIVATE_KEY' 'PASSWORD' SNARK_WORKER_FEE
```

For example:

```bash
curl https://raw.githubusercontent.com/StakeSquid/mina-docker-compose/main/provision.sh | bash -s B62qmDWSo4QfFnhvABt99epbsVxVrB71KtUMQQ2NLXpTQnh4JPbJNVt '{"box_primitive":"xsalsa20poly1305","pw_primitive":"argon2i","nonce":"6Kw7dyL2X2G6awMSbfH8QeQSZHWusDFn5HgCn6w","pwsalt":"AVfzFCX7jnRFh5YEmDqr1zah2zf4","pwdiff":[134217728,6],"ciphertext":"BQiYXERFPJS9LjuvPx4t4Btzfjs16CKCVBwihC5iposq6W1XHawL8UsiQre8Fjj4ipzNMH4TM"}' 1234567890 1000000
```

The snark work stoppper is included which stops the snark worker before your nodes turn to produce a block arises.
