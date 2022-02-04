# Template for Urbit projects

## 1) Create a new desk for your ship
* Boot a ship to use for development
* Create and mount a new desk (in Dojo)
    ```
    |merge %mydesk our %base
    |mount %mydesk
    ```
* Delete the contents of the desk in your pier (in Bash)
    ```
    rm -r PATH/TO/PIER/mydesk/*
    ```

* `PATH/TO/PIER` : the pier of the ship you're developing on

---

## 2) Import a dev desk into your pier

```
bash ./_import_dev_desk.sh DESK_NAME PATH/TO/URBIT/REPO PATH/TO/PIER
```

* `PATH/TO/URBIT/REPO` : your local copy of the [Urbit](https://github.com/urbit/urbit) repository

This dev desk should be kept separate from your project files.

---
## 3) Sync your project files to your pier
Bash:
```
bash ./_sync_desk.sh DESK_NAME PATH/TO/PIER
```
Dojo:
```
|commit %mydesk
```