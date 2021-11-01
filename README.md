# Cytoscape automation with RCy3 (RCy3を用いたCytoscape automation)

## Instructor

- Kozo Nishida (kozo.nishida@gmail.com) (西田 孝三)

## Workshop Description (ワークショップの説明)

Cytoscape is a network visualization platform.
(Cytoscapeはネットワーク視覚化プラットフォームです。)

Recently, workflows using Cytoscape can be automatically executed from R or Python.
(最近、Cytoscapeを使用したワークフローをRまたはPythonから自動的に実行できるようになりました。)

This is important not only because it can be done automatically, but also because it allows you to take advantage of the rich data analysis packages of R or Python.
(これは、自動的に実行できるだけでなく、RまたはPythonの豊富なデータ分析パッケージを利用できるため重要です。)

In this workshop, I will explain the basic usage of Cytoscape automation and more practical usage.
(このワークショップでは、Cytoscape automationの基本的な使用法とより実用的な使用法について説明します。)

### Prerequisites (前提条件)

- Basic knowledge of network and biology (ネットワークと生物学の基礎知識)
- Basic knowledge of R (Rの基礎知識)

### Preparation (準備)

You need to use [Docker Desktop](https://www.docker.com/products/docker-desktop) to run and reproduce the workshop material.
(ワークショップの資料を実行および複製するには、[Docker Desktop](https://www.docker.com/products/docker-desktop)を使用する必要があります。)

You also need to use [Cytoscape](https://cytoscape.org/download.html) in your local desktop environment in addition to Docker.
(Dockerに加えて、ローカルデスクトップ環境でも[Cytoscape]（https://cytoscape.org/download.html）を使用する必要があります。)

Unlike other workshops, this workshop cannot be reproducible with [Orchestra](http://app.orchestra.cancerdatasci.org/).
(他のワークショップとは異なり、このワークショップは[Orchestra](http://app.orchestra.cancerdatasci.org/)では再現できません。

And You need Google Chrome. My workshop does not work with Safari.
(またあなたはGoogle Chromeを必要とします。私のワークショップはSafariでは動きません。)

How to set them up will be described later.
(それらの設定方法については、後で説明します。)

### How to use the Docker environment

1. Install [Docker Desktop](https://www.docker.com/products/docker-desktop). (Dockerのデスクトップ版をインストールします。)

2. Run the command below. (下のコマンドを実行します。)

```
docker run -d -p 8888:8888 kozo2/cyautoworkshop
```

3. Open http://localhost:8888 with Chrome. (Chromeで localhost:8888 を開きます。)

### Workshop Participation (ワークショップへの参加)

After the basic concepts of Cytoscape automation is introduced,
(Cytoscape自動化の基本概念が導入された後、)

students will be given the opportunity to reproduce basic and practical example workflow.
(学生には、基本的そして実用的なワークフローの例を再現する機会が与えられます。)

### Bioconductor packages used (用いる Bioconductor パッケージ)

- RCy3 2.13.9 or after

This repository provides biologically relevant analyses using the [RCy3](https://bioconductor.org/packages/RCy3/) package.
(このリポジトリは、RCy3 Bioconductor パッケージを使用して生物学的に関連する分析を提供します。)

#### The other dependencies (その他の依存)

- Docker Desktop
- Google Chrome (for using Jupyter Bridge)
- Cytoscape 3.9.0 (**in your local Desktop environment**, not in remote environment)

## Workshop goals and objectives (ワークショップの目標と目的)

### Learning goals (学習目標)
- Understand network data structures in Cytoscape (Cytoscapeのネットワークデータ構造を理解する)
- Understand how Cytoscape automation works (Cytoscapeの自動化がどのように機能するかを理解する)
- Know how to translate R data into Cytoscape network (RデータをCytoscapeネットワークに変換する方法を知る)
- Know how to querying the interaction database and getting it into Cytoscape (インタラクションデータベースにクエリを実行し、Cytoscapeに取り込む方法を知る)
- Know how to overlay expression analysis results on the interaction network (相互作用ネットワークに発現解析結果をオーバーレイする方法を知る)

### Learning objectives (学習対象)
- Be able to automate local Cytoscape operations from R Jupyter (RのJupyterからローカルのCytoscape操作を自動化できる)
- Be able to control Cytoscape from RCy3 packages (RCy3パッケージからCytoscapeを制御できる)
- Be able to integrate R table data into Cytoscape network (node or edge) tables (RのテーブルデータをCytoscapeネットワーク（ノードまたはエッジ）テーブルに統合できる)
