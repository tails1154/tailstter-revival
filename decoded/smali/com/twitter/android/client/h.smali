.class final Lcom/twitter/android/client/h;
.super Landroid/os/AsyncTask;


# instance fields
.field private final a:J

.field private synthetic b:Lcom/twitter/android/client/k;


# direct methods
.method public constructor <init>(Lcom/twitter/android/client/k;Z)V
    .locals 2

    iput-object p1, p0, Lcom/twitter/android/client/h;->b:Lcom/twitter/android/client/k;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    if-nez p2, :cond_0

    iget-object v0, p1, Lcom/twitter/android/client/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p1, Lcom/twitter/android/client/k;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq;

    iget-wide v0, v0, Lq;->d:J

    iput-wide v0, p0, Lcom/twitter/android/client/h;->a:J

    :goto_0
    return-void

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/twitter/android/client/h;->a:J

    goto :goto_0
.end method

.method private varargs a([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 43

    sget-object v2, Lcom/twitter/android/provider/ai;->i:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v2, "limit"

    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/twitter/android/client/h;->a:J

    move-wide v4, v0

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_0

    const-string v2, "newer"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/twitter/android/client/h;->a:J

    move-wide v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/client/h;->b:Lcom/twitter/android/client/k;

    move-object v2, v0

    iget-object v2, v2, Lcom/twitter/android/client/k;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/twitter/android/client/a;->a:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "updated_at DESC, _id ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    if-eqz v24, :cond_3

    :goto_0
    :try_start_0
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v26, Lq;

    const/4 v2, 0x0

    move-object/from16 v0, v24

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    const/4 v2, 0x2

    move-object/from16 v0, v24

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    const/4 v2, 0x3

    move-object/from16 v0, v24

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    const/4 v2, 0x1

    move-object/from16 v0, v24

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    const-wide/16 v34, 0x0

    const-wide/16 v36, 0x0

    const/4 v2, 0x4

    move-object/from16 v0, v24

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    move/from16 v38, v2

    :goto_1
    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    new-instance v2, Lac;

    const/4 v3, 0x5

    move-object/from16 v0, v24

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x6

    move-object/from16 v0, v24

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x7

    move-object/from16 v0, v24

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v2 .. v23}, Lac;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;IJIZILq;JI)V

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v3, v26

    move-wide/from16 v4, v27

    move-wide/from16 v6, v29

    move-object/from16 v8, v31

    move-object/from16 v9, v32

    move-object/from16 v10, v33

    move-wide/from16 v11, v34

    move-wide/from16 v13, v36

    move/from16 v15, v38

    move-object/from16 v16, v39

    move-object/from16 v17, v40

    move-object/from16 v18, v41

    move-object/from16 v19, v42

    move-object/from16 v20, v2

    invoke-direct/range {v3 .. v22}, Lq;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLjava/lang/String;Ljava/lang/String;Lal;Lq;Lac;Laz;I)V

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_1
    const/4 v2, 0x0

    move/from16 v38, v2

    goto :goto_1

    :cond_2
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v25
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-direct {p0, p1}, Lcom/twitter/android/client/h;->a([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 9

    const v8, 0x7f090047

    const v7, 0x7f050002

    const v6, 0x7f050001

    const/16 v5, 0x14

    const/4 v4, 0x0

    check-cast p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/twitter/android/client/h;->b:Lcom/twitter/android/client/k;

    iget-boolean v0, v0, Lcom/twitter/android/client/k;->c:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/twitter/android/client/h;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/client/h;->b:Lcom/twitter/android/client/k;

    iget-object v0, v0, Lcom/twitter/android/client/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/twitter/android/client/h;->b:Lcom/twitter/android/client/k;

    iput v4, v0, Lcom/twitter/android/client/k;->d:I

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/client/h;->b:Lcom/twitter/android/client/k;

    iget-object v0, v0, Lcom/twitter/android/client/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/twitter/android/client/h;->b:Lcom/twitter/android/client/k;

    iget-object v1, v1, Lcom/twitter/android/client/k;->a:Ljava/util/List;

    invoke-interface {v1, v4, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    iget-object v1, p0, Lcom/twitter/android/client/h;->b:Lcom/twitter/android/client/k;

    iget-object v1, v1, Lcom/twitter/android/client/k;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/twitter/android/client/h;->b:Lcom/twitter/android/client/k;

    iget-object v0, v0, Lcom/twitter/android/client/k;->b:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/twitter/android/client/h;->b:Lcom/twitter/android/client/k;

    iget-object v2, v2, Lcom/twitter/android/client/k;->b:Landroid/content/Context;

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v6, v1, v2}, Lcom/twitter/android/client/k;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/client/h;->b:Lcom/twitter/android/client/k;

    iget-object v0, v0, Lcom/twitter/android/client/k;->b:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/twitter/android/client/h;->b:Lcom/twitter/android/client/k;

    iget-object v2, v2, Lcom/twitter/android/client/k;->b:Landroid/content/Context;

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v7, v1, v2}, Lcom/twitter/android/client/k;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v4

    goto :goto_0

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/twitter/android/client/h;->b:Lcom/twitter/android/client/k;

    iget-object v1, v1, Lcom/twitter/android/client/k;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v5, :cond_4

    iget-object v1, p0, Lcom/twitter/android/client/h;->b:Lcom/twitter/android/client/k;

    iget-object v1, v1, Lcom/twitter/android/client/k;->a:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/twitter/android/client/h;->b:Lcom/twitter/android/client/k;

    iget v0, v0, Lcom/twitter/android/client/k;->d:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_5

    iget-object v0, p0, Lcom/twitter/android/client/h;->b:Lcom/twitter/android/client/k;

    iget v0, v0, Lcom/twitter/android/client/k;->d:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-lt v0, v5, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/twitter/android/client/h;->b:Lcom/twitter/android/client/k;

    iput v4, v0, Lcom/twitter/android/client/k;->d:I

    iget-object v0, p0, Lcom/twitter/android/client/h;->b:Lcom/twitter/android/client/k;

    invoke-virtual {v0, v6}, Lcom/twitter/android/client/k;->a(I)V

    :cond_6
    iget-object v0, p0, Lcom/twitter/android/client/h;->b:Lcom/twitter/android/client/k;

    invoke-virtual {v0, v7}, Lcom/twitter/android/client/k;->a(I)V

    goto :goto_1
.end method
