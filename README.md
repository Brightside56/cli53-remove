# cli53-remove

Mass records/zones deletion process in AWS Route53 is very annoying process. If you're using AWS webui and you need to delete zone, you have to remove DNS-records one by one first to get a possibility to remove zone. To automate this I've created simple bash script over [cli53](https://github.com/barnybug/cli53)  utility for mass removing route53 zones with their records

## READ FIRST!!!

  - Current version of script was tested to work against cli53 v0.8.16 (but might work with other versions)
  - Use script carefully on your own risk, because under some circumstances or you might delete something useful :D

## HOW-TO:
First you need to install cli53 utility using instructions [here](https://github.com/barnybug/cli53). Then download script, make it executable. Then run it and specify domain names or part of domain names of zones you want to delete as arguments to 

```sh
$ ./cli53-remove.sh domain1 domain2.com 3dom
```
In example above all zones containing in its name "domain1" or "domain2.com" "3dom" will be removed from your route53. Or just
```sh
$ ./cli53-remove.sh domain5.com
```

If you need only remove records, but keep zone itself, you can comment out following line in script
```
cli53 delete ${line};
```
