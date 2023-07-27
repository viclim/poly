# README

This README would normally document whatever steps are necessary to get the
application up and running.

```sh

$ bundle
$ rails db:create
$ rails db:migrate

```

```ruby

$ rails c
Loading development environment (Rails 7.0.6)
irb(main):001:0> project = Project.make
  TRANSACTION (0.0ms)  begin transaction
  HelmChart Create (0.6ms)  INSERT INTO "helm_charts" ("chart_path", "created_at", "updated_at") VALUES (?, ?, ?)  [["chart_path", "/Chart.yaml"], ["created_at", "2023-07-27 10:28:56.599260"], ["updated_at", "2023-07-27 10:28:56.599260"]]
  TRANSACTION (1.1ms)  commit transaction
  TRANSACTION (0.0ms)  begin transaction
  Project Create (0.5ms)  INSERT INTO "projects" ("name", "git_repo_url", "organization_id", "deployable_type", "deployable_id", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)  [["name", "Dr. Roman Cummings"], ["git_repo_url", nil], ["organization_id", nil], ["deployable_type", "HelmChart"], ["deployable_id", 2], ["created_at", "2023-07-27 10:28:57.999230"], ["updated_at", "2023-07-27 10:28:57.999230"]]
  TRANSACTION (1.0ms)  commit transaction
=>
#<Project:0x0000000115475b10
...
irb(main):002:0> project
=>
#<Project:0x0000000115475b10
 id: 3,
 name: "Dr. Roman Cummings",
 git_repo_url: nil,
 organization_id: nil,
 deployable_type: "HelmChart",
 deployable_id: 2,
 created_at: Thu, 27 Jul 2023 10:28:57.999230000 UTC +00:00,
 updated_at: Thu, 27 Jul 2023 10:28:57.999230000 UTC +00:00>
irb(main):003:0>

```
