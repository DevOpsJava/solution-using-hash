# Simple project

Solve problem of password in cleartext by hashing the password with openssl


Create a user: 
```
rm nginx/.htpasswd
echo -n 'jansc:' > nginx/.htpasswd
```

## Openssl options
We use the MD5-based password algorithm, Apache variant that NGINX supports
```
$ openssl passwd --help
Usage: passwd [options] [passwords]
where options are
-crypt             standard Unix password algorithm (default)
-1                 MD5-based password algorithm
-apr1              MD5-based password algorithm, Apache variant
-salt string       use provided salt
-in file           read passwords from file
-stdin             read passwords from stdin
-noverify          never verify when reading password from terminal
-quiet             no warnings
-table             format output as table
-reverse           switch table columns
```

## Hash password 

```
openssl passwd -apr1 >> .htpasswd
```

Try it out
```
pulumi up
```

clean up 
```
pulumi destroy
pulumi stack rm dev
```
