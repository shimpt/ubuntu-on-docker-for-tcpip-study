# 「Linuxで動かしながら学ぶTCP/IPネットワーク入門」自分用環境構築

## 動機
* [『Linuxで動かしながら学ぶTCP/IPネットワーク入門』](https://www.amazon.co.jp/Linux%E3%81%A7%E5%8B%95%E3%81%8B%E3%81%97%E3%81%AA%E3%81%8C%E3%82%89%E5%AD%A6%E3%81%B6TCP-IP%E3%83%8D%E3%83%83%E3%83%88%E3%83%AF%E3%83%BC%E3%82%AF%E5%85%A5%E9%96%80-%E3%82%82%E3%81%BF%E3%81%98%E3%81%82%E3%82%81-ebook/dp/B085BG8CH5) (もみじあめ, 2020)を、VirtualBox, Vagrant等を使わずにDocker上のUbuntuで学習可能か模索  
* ~~LinuxのNetwork Namespaceの学習を、Network Namespaceの技術が使われていてるDockerコンテナ内での作業で行うという謎構造になった~~  


## 手順
1. 適当なディレクトリで、Dockerfileから ubuntu-test イメージを作成  
    ```
    $ docker build . -t ubuntu-test  
    ```

2. イメージからtcpip-studyコンテナを作成/起動  
    ```
    $ docker run --privileged -itd --name tcpip-study ubuntu-test
    ```  
    `--privileged`をつける事でコンテナ内で作業する際のip系コマンド実行の権限が付与されます

3. コンテナの中に入る  
    ```
    $ docker exec -it tcpip-study /bin/bash
    ```
