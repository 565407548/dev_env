# history
## list history of sh/cmd
```
history
history 10
```
## op history
### save cache to history
```
history -w
```
### clear cache of history
```
history -c
```
### delete the nth sh/cmd
```
history -d N
```
## exec sh/cmd repeatly
```
// exec the 1024 th cmd
!1024
// exec the last cmd
!!
// exec the 6th cmd from last 
!-6
```
## search cmd then exec
+ ![cmd you want]:p
+ `Up` and `Enter` to exec

