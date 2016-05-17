CheetSheet
------

### ssh
* key pair generation
    ```
    ssh-keygen -t de25519
    ```

### General
* [the-silver-searcher](https://github.com/ggreer/the_silver_searcher)
: 파일 사이에서 문자열 찾기
    ```
    ag [query]
    ```
* 파일 찾기
    ```
    find -name [name]
    ```

### fuzzy
* 실행했던 커맨드 fuzzy 탐색
    ```
    ctrl + r
    ```
* 디렉토리 fuzzy 탐색
    ```
    ctrl + t
    ```

### brew

### yum

### apt-get

### User & Group

#### User

* 유저 추가
    ```
    adduser [username]
    adduser [username] sudo     #sudoer로 추가
    ```
* 유저 삭제
    ```
    deluser [username]
    ```
* 유저 이름 바꾸기
    ```
    usermod -l [new name] [old name]
    ```
* 유저 홈디렉토리 바꾸기
    ```
    usermod -m -d [path] [username]
    ```
* 유저 primary group 바꾸기
    ```
    usermod -g [group] [username]
    ```
* 특정 사용자를 sudoer로 설정
    ```
    usermod -aG sudo [username]
    ```

#### Group
* 그룹 추가
    ```
    groupadd [groupname]
    ```
* 그룹 삭제
    ```
    groupdel [groupname]
    ```
* 그룹 확인
    ```
    groups
    groups [username]       # 특정 유저가 속한 그룹
    ```
* 그룹에 유저 추가
    ```
    gpasswd -a [username] [groupname]
    ```
* 그룹에서 유저 삭제
    ```
    gpasswd -d [username] [groupname]
    ```
#### passwd, shadow, group, gshadow
* /etc/passwd 편집
    ```
    vipw
    ```
* /etc/shadow 편집
    ```
    vipw -s
    ```
* passwd, shadow 검증
    ```
    pwck
    ```
* /etc/group 편집
    ```
    vigr
    ```
* /etc/gshadow 편집
    ```
    vigr -s
    ```
* /group, gshadow 검증
    ```
    grpck
    ```


### Server

#### Account
* root 로그인
    ```
    sudo su
    ```
* root로 변신
    ```
    sudo -s
    ```

#### Monitoring
* 로그인된 유저 보기: `w`, `who`
* CPU 사용량 모니터링
    ```
    htop
    ```
* DISK IO 모니터링
    ```
    iotop
    ```
* Networing 모니터링
    ```
    iftop
    ```
* 모든 프로세스 보기
    ```
    ps -ef
    ```
* 특정 UID의 프로세스 보기
    ```
    ps -u [uid]
    ```
* 모든 좀비 프로세스 보기
    ```
    ps aus | ag 'Z'
    ```
* 프로세스 죽이기: `kill [pid]`
    * Successfully Exited
    ```
    kill -0 [pid]
    ```
    * Killed
    ```
    kill -9 [pid]
    ```


