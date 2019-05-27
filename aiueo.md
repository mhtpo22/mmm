
> 目次
- [View](#section1)
  - Header
  - Footer
  - Body
    - [Home](#section1home)
      - Top
      - About
    - [Posts](#section1posts)
      - Index
      - Show
      - New
      - Edit
    - [Users](#section1users)
      - Index
      - Show
      - New
      - Edit
      - Rogin_form
      - Likes
- [Route](#section2)
  - Home
  - Posts
  - Users
  - Like
- [Controller](#section3)
  - Application
  - Home
  - Posts
  - Users
  - Like
- [Model](#section4)
  - Post
  - User
  - Like
- - -



# <font color="Red"><a name="section1">View</a></font> #################################
## <font color="Orange">1. Header</font>
#### ・ 新規
| アクション名   | リンクURL |
| -------------- | --------- |
| ロゴ           | /         |
| サイトについて | /about    |
| 新規登録       | /signup   |
| ログイン       | /login    |
#### ・ ログイン中
| アクション名   | リンクURL     |
| -------------- | ------------- |
| ロゴ           | /posts/index  |
| ユーザ名       | /users/:id    |
| 投稿一覧       | /posts/index  |
| 新規投稿       | /posts/new    |
| ユーザ一覧     | /users/index  |
| ログアウト     | /logout       |
| サイトについて | /about        |
| 新規登録       | /users/create |
| ログイン       | /login        |



## <font color="Orange">2. Footer</font>
| アクション名 | リンクURL |
| ------------ | --- |
|              |     ||

## <font color="Orange">3. Body</font>
### <a name="section1home">*Home*</a>
#### ・ Top
| アクション名 | リンクURL |
| ------------ | --- |
|              |     ||


#### ・ About
| アクション名 | リンクURL |
| ------------ | --- |
|              |     ||

### <a name="section1posts">*Posts*</font>
#### ・ Index
| アクション名 | リンクURL  |
| ------------ | ---------- |
| 詳細画面     | /posts/:id |
| ユーザ名     | /users/:id |

#### ・ Show
| アクション名   | リンクURL          |
| -------------- | ------------------ |
| 編集           | /posts/:id/update  |
| 削除           | /posts/:id/destroy |
| 戻る           | /posts/index       |
| ユーザ名       | /users/:id         |
| いいね取得     | /likes/:id/create  |
| いいね取消 | /likes/:id/destroy |

#### ・ New
| アクション名 | リンクURL    |
| ------------ | ------------ |
| 作成         | /posts/create |
| 戻る         | /posts/index  |

#### ・ Edit
| アクション名 | リンクURL        |
| ------------ | ---------------- |
| 更新         | /posts/:id/update |
| 戻る         | /posts/index      |

### <a name="section1users">*Users*</a>
#### ・ Index
| アクション名 | リンクURL  |
| ------------ | ---------- |
| ユーザ名     | /users/:id |

#### ・ Show
| アクション名 | リンクURL         |
| ------------ | ----------------- |
| 編集         | /posts/:id/update |
| 戻る         | /posts/index?     |
| ユーザ名     | /users/:id        |
| 詳細         | /ports/:id/       |
| いいねへ     | /likes/:id/likes  |

#### ・ New
| アクション名 | リンクURL    |
| ------------ | ------------ |
| 作成         | /users/create |
| 戻る         | /users/index  |

#### ・ Edit
| アクション名 | リンクURL        |
| ------------ | ---------------- |
| 更新         | /users/:id/update |
| 戻る         | /users/index      |

#### ・ Rogin_form
| アクション名 | リンクURL |
| ------------ | --------- |
| ログイン     | /login    |
| 戻る         | /         |

#### ・ Likes
| アクション名 | リンクURL         |
| ------------ | ----------------- |
| 編集         | /posts/:id/update |
| 戻る         | /posts/index?     |
| ユーザ名     | /users/:id        |
| 詳細         | /ports/:id/       |
| いいねへ     | /likes/:id/likes  |
- - -
# <font color="Red"><a name="section2">Route</a></font> #################################
#### ・ Home
| アクション名 | URL    | 説明           |
| ------------ | ------ | -------------- |
| top          | /      | トップ画面     |
| about        | /about | サイトについて |

#### ・ Posts
| アクション名 | URL                | 説明         |
| ------------ | ------------------ | ------------ |
| index        | /posts/index       | 一覧画面     |
| show         | /posts/:id         | 詳細画面     |
| new          | /posts/new         | 新規作成画面 |
| create       | /posts/create      | (作成)       |
| edit         | /posts/:id/edit    | 編集画面     |
| update       | /posts/:id/update  | (更新)       |
| destroy      | /posts/:id/destroy | (削除)       |

#### ・ Users
| アクション名        | URL              | 説明         |
| ------------------- | ---------------- | ------------ |
| index               | /users/index     | 一覧画面     |
| show                | /users/:id       | 詳細画面     |
| new                 | /signup          | 新規作成画面 |
| create              | /users/create    | 作成         |
| edit                | /users/:id/edit  | 編集画面     |
| update              | /users/id/update | 更新         |
| login_form          | /login           | ログオン画面 |
| login               | /login           | ログイン     |
| logout              | /logout          | ログアウト   |
| likes               | /users/:id/likes | いいね画面   |

#### ・ Like
| アクション名 | URL                     | 説明 |
| ------------ | ----------------------- | ---- |
| create       | /likes/:post_id/create  | 作成 |
| destroy      | /likes/:post_id/destroy | 削除 |
- - -
# <font color="Red"><a name="section3">Controller</a></font> #################################
#### ・ Application
| アクション名      | 範囲 |
| ----------------- | ---- |
| authenticate_user |      ||

#### ・ Home
| アクション名      | 範囲 |
| ----------------- | ---- |
| forbid_login_user | top  |

#### ・ Posts
| アクション名        | 範囲                |
| ------------------- | ------------------- |
| authenticate_user   | (全て)              |
| ensure_correct_user | edit/update/destroy |


#### ・ Users
| アクション名        | 範囲                        |
| ------------------- | --------------------------- |
| authenticate_user   | index/show/edit/update      |
| ensure_correct_user | edit/update                 |
| forbid_login_user   | new/create/login_form/login |


#### ・ Likes
| アクション名      | 範囲   |
| ----------------- | ------ |
| authenticate_user | (全て) |
- - -
# <font color="Red"><a name="section4">Model</a></font> #################################
#### ・ Post
#### ・ User
#### ・ Like
