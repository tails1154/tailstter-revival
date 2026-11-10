.class public Lcom/twitter/android/service/TwitterService;
.super Landroid/app/Service;


# static fields
.field private static final a:Z

.field private static final b:[Ljava/lang/String;

.field private static final c:Ljava/util/HashMap;


# instance fields
.field private d:Ljava/util/concurrent/ExecutorService;

.field private e:Lcom/twitter/android/provider/ab;

.field private f:Ljava/util/LinkedHashMap;

.field private g:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const-string v0, "TwitterService"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/twitter/android/service/TwitterService;->a:Z

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "impression"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "url_click"

    aput-object v2, v0, v1

    const-string v1, "profile_image_click"

    aput-object v1, v0, v3

    const-string v1, "screen_name_click"

    aput-object v1, v0, v4

    const/4 v1, 0x4

    const-string v2, "hashtag_click"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "user_mention_click"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "view_details"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "contributed_by_name_click"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "click"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/service/TwitterService;->b:[Ljava/lang/String;

    new-instance v0, Lcom/twitter/android/service/i;

    invoke-direct {v0, v3}, Lcom/twitter/android/service/i;-><init>(I)V

    sput-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/twitter/android/service/h;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/service/h;-><init>(Lcom/twitter/android/service/TwitterService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/twitter/android/service/TwitterService;->g:Landroid/os/Handler;

    return-void
.end method

.method private static a(Ljava/io/ByteArrayOutputStream;)Lab;
    .locals 3

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lce;->a(Ljava/lang/String;Z)Ljava/util/TreeMap;

    move-result-object v0

    new-instance v1, Lab;

    const-string v2, "oauth_token"

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v2, "oauth_token_secret"

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, p0, v0}, Lab;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private a(Lce;Ljava/lang/String;J)Ljava/util/ArrayList;
    .locals 24

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "promoted_tweets"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "search"

    aput-object v6, v4, v5

    const-string v5, "https://api.twitter.com/1"

    invoke-static {v5, v4}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "q"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p1

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/TwitterService;->b(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v4

    invoke-virtual {v4}, Lo;->a()Lo;

    move-result-object v4

    invoke-virtual {v4}, Lo;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_0
    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lbl;

    move-result-object v4

    invoke-static {v4}, Ldb;->m(Lbl;)Ljava/util/ArrayList;

    move-result-object v21

    new-instance v22, Ljava/util/ArrayList;

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, v22

    move v1, v4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_0
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lq;

    invoke-virtual/range {p2 .. p2}, Lq;->a()Lq;

    move-result-object v11

    move-object v0, v11

    iget-object v0, v0, Lq;->l:Lac;

    move-object/from16 v19, v0

    move-object v0, v11

    iget-object v0, v0, Lq;->m:Laz;

    move-object/from16 v20, v0

    new-instance v4, Lf;

    iget-wide v5, v11, Lq;->a:J

    iget-wide v7, v11, Lq;->d:J

    iget-object v9, v11, Lq;->b:Ljava/lang/String;

    iget-object v10, v11, Lq;->c:Ljava/lang/String;

    iget-object v11, v11, Lq;->g:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v0, v0, Lac;->c:Ljava/lang/String;

    move-object v12, v0

    const/4 v13, 0x0

    move-object/from16 v0, v19

    iget-object v0, v0, Lac;->f:Ljava/lang/String;

    move-object v14, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lac;->a:J

    move-wide v15, v0

    const/16 v17, 0x2

    const/16 v18, 0x0

    move-object/from16 v0, v19

    iget-object v0, v0, Lac;->b:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v4 .. v20}, Lf;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Laz;)V

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v20, :cond_0

    move-object/from16 v0, v20

    iget-object v0, v0, Laz;->c:Lcc;

    move-object v4, v0

    if-eqz v4, :cond_0

    move-object/from16 v0, v20

    iget-object v0, v0, Laz;->c:Lcc;

    move-object v4, v0

    iget-object v4, v4, Lcc;->a:Ljava/lang/String;

    if-eqz v4, :cond_0

    const/4 v6, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Laz;->c:Lcc;

    move-object v4, v0

    iget-object v7, v4, Lcc;->a:Ljava/lang/String;

    const-wide/16 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/twitter/android/service/TwitterService;->a(Lce;ILjava/lang/String;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    sget-boolean v5, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v5, :cond_1

    const-string v5, "TwitterService"

    const-string v6, "queryPromoted"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v4, 0x0

    :goto_1
    return-object v4

    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v4, v0

    const/16 v8, 0xa

    const-wide/16 v9, -0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v5, v21

    move-wide/from16 v6, p3

    invoke-virtual/range {v4 .. v14}, Lcom/twitter/android/provider/ab;->a(Ljava/util/ArrayList;JIJZZLjava/lang/String;Z)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v4, v22

    goto :goto_1
.end method

.method private a(ILce;JJJILandroid/content/Intent;)Lo;
    .locals 13

    const-wide/16 v4, 0x0

    cmp-long v4, p5, v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    const/4 v5, 0x4

    const/4 v9, 0x1

    move v6, p1

    move-wide/from16 v7, p3

    invoke-virtual/range {v4 .. v9}, Lcom/twitter/android/provider/ab;->a(IIJI)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    const-wide/16 v4, 0x0

    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_a

    const/16 v6, 0x64

    sget-boolean v7, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v7, :cond_0

    const-string v7, "TwitterService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMessages: newer than sinceId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    const/4 v7, 0x1

    if-ne p1, v7, :cond_6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "direct_messages"

    aput-object v9, v7, v8

    invoke-static {v7}, Laf;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    :goto_2
    const-string v8, ".json"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_1

    const-string v8, "since_id"

    invoke-static {v7, v8, v4, v5}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, p7, v4

    if-lez v4, :cond_2

    const-string v4, "max_id"

    move-object v0, v7

    move-object v1, v4

    move-wide/from16 v2, p7

    invoke-static {v0, v1, v2, v3}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_2
    if-lez v6, :cond_3

    const-string v4, "count"

    invoke-static {v7, v4, v6}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_3
    const-string v4, "include_entities"

    const/4 v5, 0x1

    invoke-static {v7, v4, v5}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, v7, p2, v4}, Lcom/twitter/android/service/TwitterService;->b(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v5

    invoke-virtual {v5}, Lo;->a()Lo;

    move-result-object v12

    invoke-virtual {v12}, Lo;->b()Z

    move-result v5

    if-eqz v5, :cond_4

    :try_start_0
    invoke-static {v4}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lbl;

    move-result-object v4

    invoke-static {v4}, Ldb;->e(Lbl;)Ljava/util/ArrayList;

    move-result-object v5

    const-wide/16 v7, 0x0

    cmp-long v4, p7, v7

    if-lez v4, :cond_7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lch;

    iget-wide v7, p2, Lch;->a:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    :goto_3
    iget-object v4, p0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    const-wide/16 v7, 0x0

    cmp-long v7, p7, v7

    if-eqz v7, :cond_8

    const/4 v7, 0x1

    move v9, v7

    :goto_4
    const-wide/16 v7, 0x0

    cmp-long v7, p7, v7

    if-lez v7, :cond_9

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v6, :cond_9

    const/4 v6, 0x1

    move v10, v6

    :goto_5
    move-wide/from16 v6, p3

    move v8, p1

    invoke-virtual/range {v4 .. v11}, Lcom/twitter/android/provider/ab;->a(Ljava/util/List;JIZZLjava/lang/String;)I

    move-result v4

    if-eqz p10, :cond_4

    const-string v5, "new_dm"

    move-object/from16 v0, p10

    move-object v1, v5

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "unread_dm"

    iget-object v5, p0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    invoke-virtual {v5}, Lcom/twitter/android/provider/ab;->c()I

    move-result v5

    move-object/from16 v0, p10

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_6
    return-object v12

    :cond_5
    iget-object v4, p0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    invoke-virtual {v4, p1}, Lcom/twitter/android/provider/ab;->a(I)J

    move-result-wide v4

    goto/16 :goto_0

    :cond_6
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "direct_messages"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "sent"

    aput-object v9, v7, v8

    invoke-static {v7}, Laf;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    goto/16 :goto_2

    :cond_7
    const/4 v4, 0x0

    move-object v11, v4

    goto :goto_3

    :cond_8
    const/4 v7, 0x0

    move v9, v7

    goto :goto_4

    :cond_9
    const/4 v6, 0x0

    move v10, v6

    goto :goto_5

    :catch_0
    move-exception v4

    const/4 v5, 0x0

    iput v5, v12, Lo;->c:I

    iput-object v4, v12, Lo;->e:Ljava/lang/Exception;

    goto :goto_6

    :cond_a
    move/from16 v6, p9

    goto/16 :goto_1

    :cond_b
    move-wide/from16 v4, p5

    goto/16 :goto_0
.end method

.method private a(JJ)Lo;
    .locals 4

    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-eqz v0, :cond_0

    cmp-long v0, p3, v1

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "friendships"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "show"

    aput-object v2, v0, v1

    const-string v1, "https://api.twitter.com/1"

    invoke-static {v1, v0}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "source_id"

    invoke-static {v0, v1, p1, p2}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    const-string v1, "target_id"

    invoke-static {v0, v1, p3, p4}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Lce;->a:Lce;

    invoke-direct {p0, v0, v2, v1}, Lcom/twitter/android/service/TwitterService;->b(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v0

    invoke-virtual {v0}, Lo;->a()Lo;

    move-result-object v0

    invoke-virtual {v0}, Lo;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-static {v1}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lbl;

    move-result-object v1

    invoke-static {v1}, Ldb;->k(Lbl;)I

    move-result v1

    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    invoke-virtual {v2, p3, p4, v1}, Lcom/twitter/android/provider/ab;->a(JI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v2, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v2, :cond_1

    const-string v2, "TwitterService"

    const-string v3, "Problem processing response."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Lce;J)Lo;
    .locals 9

    const/4 v2, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "trends"

    aput-object v1, v0, v8

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "https://api.twitter.com/1"

    invoke-static {v1, v0}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lce;->b:Lab;

    if-eqz v1, :cond_0

    const-string v1, "pc"

    invoke-static {v0, v1, v2}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x400

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-direct {p0, v0, p1, v1}, Lcom/twitter/android/service/TwitterService;->b(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v0

    invoke-virtual {v0}, Lo;->a()Lo;

    move-result-object v6

    invoke-virtual {v6}, Lo;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {v1}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lbl;

    move-result-object v0

    invoke-static {v0}, Ldb;->h(Lbl;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/twitter/android/provider/ab;->a(Ljava/util/ArrayList;I)I

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lda;

    iget-wide v1, v0, Lda;->g:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-wide v4, v0, Lda;->g:J

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/service/TwitterService;->a(Lce;ILjava/lang/String;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput v8, v6, Lo;->c:I

    iput-object v0, v6, Lo;->e:Ljava/lang/Exception;

    :cond_2
    return-object v6
.end method

.method private a(Lce;JIJJJILandroid/content/Intent;)Lo;
    .locals 17

    packed-switch p4, :pswitch_data_0

    :pswitch_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_1
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "statuses"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "user_timeline"

    aput-object v6, v4, v5

    const-string v5, "https://api.twitter.com/1"

    invoke-static {v5, v4}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "user_id"

    move-object v0, v4

    move-object v1, v5

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    const-string v5, "include_rts"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    :goto_0
    const-string v5, "include_entities"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    if-lez p11, :cond_0

    const-string v5, "count"

    move-object v0, v4

    move-object v1, v5

    move/from16 v2, p11

    invoke-static {v0, v1, v2}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_0
    const-wide/16 v5, 0x0

    cmp-long v5, p7, v5

    if-nez v5, :cond_1

    const-wide/16 v5, 0x0

    cmp-long v5, p9, v5

    if-nez v5, :cond_1

    const-wide/16 v5, 0x0

    cmp-long v5, p5, v5

    if-lez v5, :cond_1

    const-string v5, "since_id"

    move-object v0, v4

    move-object v1, v5

    move-wide/from16 v2, p5

    invoke-static {v0, v1, v2, v3}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_1
    const-wide/16 v5, 0x0

    cmp-long v5, p9, v5

    if-lez v5, :cond_2

    const-string v5, "max_id"

    move-object v0, v4

    move-object v1, v5

    move-wide/from16 v2, p9

    invoke-static {v0, v1, v2, v3}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_2
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p1

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/TwitterService;->b(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v4

    invoke-virtual {v4}, Lo;->a()Lo;

    move-result-object v15

    invoke-virtual {v15}, Lo;->b()Z

    move-result v4

    if-eqz v4, :cond_4

    :try_start_0
    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lbl;

    move-result-object v4

    const-wide/16 v5, 0x0

    cmp-long v5, p7, v5

    if-nez v5, :cond_7

    invoke-static {v4}, Ldb;->c(Lbl;)Ljava/util/ArrayList;

    move-result-object v4

    const-wide/16 v5, 0x0

    cmp-long v5, p9, v5

    if-lez v5, :cond_5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lq;->a:J

    move-wide v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v6, p9, v6

    if-lez v6, :cond_6

    const/4 v6, 0x1

    :goto_2
    move-object v13, v5

    move v12, v6

    move-object v5, v4

    :goto_3
    const-string v16, "new_tweet"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v4, v0

    const-wide/16 v9, -0x1

    const-wide/16 v6, 0x0

    cmp-long v6, p9, v6

    if-eqz v6, :cond_8

    const/4 v6, 0x1

    move v11, v6

    :goto_4
    const/4 v14, 0x1

    move-wide/from16 v6, p2

    move/from16 v8, p4

    invoke-virtual/range {v4 .. v14}, Lcom/twitter/android/provider/ab;->a(Ljava/util/ArrayList;JIJZZLjava/lang/String;Z)I

    move-result v4

    move-object/from16 v0, p12

    move-object/from16 v1, v16

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v6, 0x64

    if-lt v4, v6, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v4, v0

    const-wide/16 v8, -0x1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lq;->a:J

    move-wide v10, v0

    move-wide/from16 v5, p2

    move/from16 v7, p4

    invoke-virtual/range {v4 .. v11}, Lcom/twitter/android/provider/ab;->a(JIJJ)V

    :cond_3
    const/4 v4, 0x5

    move/from16 v0, p4

    move v1, v4

    if-ne v0, v1, :cond_4

    const-string v4, "unread_mention"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v5, v0

    const/4 v6, 0x5

    move-object v0, v5

    move-wide/from16 v1, p2

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/provider/ab;->d(JI)I

    move-result v5

    move-object/from16 v0, p12

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_5
    return-object v15

    :pswitch_2
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "statuses"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "mentions"

    aput-object v6, v4, v5

    const-string v5, "https://api.twitter.com/1"

    invoke-static {v5, v4}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto/16 :goto_0

    :pswitch_3
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "statuses"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "retweeted_by_me"

    aput-object v6, v4, v5

    const-string v5, "https://api.twitter.com/1"

    invoke-static {v5, v4}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto/16 :goto_0

    :pswitch_4
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "statuses"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "retweeted_to_me"

    aput-object v6, v4, v5

    const-string v5, "https://api.twitter.com/1"

    invoke-static {v5, v4}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto/16 :goto_0

    :pswitch_5
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "statuses"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "retweets_of_me"

    aput-object v6, v4, v5

    const-string v5, "https://api.twitter.com/1"

    invoke-static {v5, v4}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto/16 :goto_0

    :pswitch_6
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "statuses"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "show"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "https://api.twitter.com/1"

    invoke-static {v5, v4}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto/16 :goto_0

    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_7
    :try_start_1
    invoke-static {v4}, Ldb;->d(Lbl;)Lq;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v13, v6

    move v12, v4

    goto/16 :goto_3

    :cond_8
    const/4 v6, 0x0

    move v11, v6

    goto/16 :goto_4

    :catch_0
    move-exception v4

    sget-boolean v5, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v5, :cond_4

    const-string v5, "TwitterService"

    const-string v6, "Problem processing response."

    invoke-static {v5, v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private a(Lce;JLjava/lang/String;ILaz;Landroid/content/Intent;)Lo;
    .locals 19

    const-string v4, "status_id"

    const-wide/16 v5, 0x0

    move-object/from16 v0, p7

    move-object v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v4, "impression_id"

    move-object/from16 v0, p7

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v4, "lat"

    const-wide/16 v5, 0x0

    move-object/from16 v0, p7

    move-object v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v13

    const-string v4, "long"

    const-wide/16 v5, 0x0

    move-object/from16 v0, p7

    move-object v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v15

    if-eqz p6, :cond_7

    move-object/from16 v0, p6

    iget-object v0, v0, Laz;->d:Ljava/util/ArrayList;

    move-object v4, v0

    if-eqz v4, :cond_7

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p6

    iget-object v0, v0, Laz;->d:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_0
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ldi;

    move-object/from16 v0, p7

    iget-object v0, v0, Ldi;->e:Ljava/lang/String;

    move-object v4, v0

    if-nez v4, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Lce;->b:Lab;

    move-object v6, v0

    move-object/from16 v0, p7

    iget-object v0, v0, Ldi;->c:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move/from16 v5, p5

    move-object/from16 v8, p4

    invoke-static/range {v4 .. v9}, Lt;->a(Landroid/content/Context;ILab;Landroid/net/Uri;Ljava/lang/String;Lba;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1

    const/16 v5, 0x20

    move-object/from16 v0, v17

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v4

    move-object/from16 v1, p7

    iput-object v0, v1, Ldi;->e:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v4, v0

    const-wide/16 v5, 0x0

    move-object/from16 v7, p4

    move-wide/from16 v8, p2

    move-object/from16 v12, p6

    invoke-virtual/range {v4 .. v12}, Lcom/twitter/android/provider/ab;->a(JLjava/lang/String;JJLaz;)J

    const/4 v4, 0x0

    :goto_1
    return-object v4

    :cond_3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    :goto_2
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "statuses"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "update"

    aput-object v6, v4, v5

    invoke-static {v4}, Laf;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "status"

    invoke-static {v4, v5, v7}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    cmp-long v5, v10, v5

    if-lez v5, :cond_4

    const-string v5, "in_reply_to_status_id"

    invoke-static {v4, v5, v10, v11}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    if-eqz v12, :cond_4

    const-string v5, "impression_id"

    invoke-static {v4, v5, v12}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-wide/16 v5, 0x0

    cmpl-double v5, v13, v5

    if-eqz v5, :cond_5

    const-wide/16 v5, 0x0

    cmpl-double v5, v15, v5

    if-eqz v5, :cond_5

    const-string v5, "lat"

    invoke-static {v13, v14}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "long"

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v5, "include_entities"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p1

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/TwitterService;->a(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v4

    invoke-virtual {v4}, Lo;->a()Lo;

    move-result-object v13

    invoke-virtual {v13}, Lo;->b()Z

    move-result v4

    if-eqz v4, :cond_6

    :try_start_0
    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lbl;

    move-result-object v4

    invoke-static {v4}, Ldb;->d(Lbl;)Lq;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v4

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/provider/ab;->a(Lq;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move-object v4, v13

    goto/16 :goto_1

    :catch_0
    move-exception v4

    const/4 v4, 0x0

    iput v4, v13, Lo;->c:I

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v4, v0

    const-wide/16 v5, 0x0

    move-wide/from16 v8, p2

    move-object/from16 v12, p6

    invoke-virtual/range {v4 .. v12}, Lcom/twitter/android/provider/ab;->a(JLjava/lang/String;JJLaz;)J

    goto :goto_3

    :cond_7
    move-object/from16 v7, p4

    goto/16 :goto_2
.end method

.method private a(Lce;JZ)Lo;
    .locals 4

    const/4 v3, 0x0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "direct_messages"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "destroy"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "https://api.twitter.com/1"

    invoke-static {v1, v0}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v0, p1, v3}, Lcom/twitter/android/service/TwitterService;->a(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v0

    invoke-virtual {v0}, Lo;->a()Lo;

    move-result-object v0

    if-eqz p4, :cond_1

    invoke-virtual {v0}, Lo;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    invoke-virtual {v1, p2, p3}, Lcom/twitter/android/provider/ab;->c(J)V

    :cond_1
    :goto_1
    invoke-static {p0, v0}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;Lo;)V

    goto :goto_0

    :cond_2
    iget v1, v0, Lo;->c:I

    const/16 v2, 0x194

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    invoke-virtual {v1, p2, p3}, Lcom/twitter/android/provider/ab;->c(J)V

    goto :goto_1
.end method

.method private a(Lce;Lac;JJILandroid/content/Intent;)Lo;
    .locals 32

    const-string v5, "account"

    move-object/from16 v0, p8

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/4 v5, -0x2

    move/from16 v0, p7

    move v1, v5

    if-ne v0, v1, :cond_2

    const/4 v5, 0x1

    :goto_0
    move-object/from16 v0, p2

    iget-wide v0, v0, Lac;->a:J

    move-wide v6, v0

    if-eqz v5, :cond_14

    const/16 v8, 0x64

    :goto_1
    if-eqz v5, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v6, v7, v10}, Lcom/twitter/android/provider/ab;->c(JI)J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v11, v0

    const/4 v12, 0x0

    invoke-virtual {v11, v6, v7, v12}, Lcom/twitter/android/provider/ab;->b(JI)J

    move-result-wide v11

    sget-boolean v13, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v13, :cond_0

    const-string v13, "TwitterService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[Refresh] sinceId: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", maxId: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v13, 0x0

    cmp-long v13, v9, v13

    if-eqz v13, :cond_1

    const-wide/16 v13, 0x0

    cmp-long v13, v11, v13

    if-eqz v13, :cond_1

    cmp-long v13, v11, v9

    if-nez v13, :cond_3

    :cond_1
    const/4 v5, 0x0

    :goto_2
    return-object v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    move-wide/from16 v20, v11

    :goto_3
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "statuses"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, "home_timeline"

    aput-object v13, v11, v12

    invoke-static {v11}, Laf;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".json"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-lez v8, :cond_4

    const-string v12, "count"

    invoke-static {v11, v12, v8}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_4
    const-wide/16 v12, 0x0

    cmp-long v8, v20, v12

    if-lez v8, :cond_5

    const-string v8, "max_id"

    move-object v0, v11

    move-object v1, v8

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_5
    const-wide/16 v12, 0x0

    cmp-long v8, v9, v12

    if-lez v8, :cond_6

    const-string v8, "since_id"

    invoke-static {v11, v8, v9, v10}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_6
    const-string v8, "include_entities"

    const/4 v12, 0x1

    invoke-static {v11, v8, v12}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const-string v8, "include_my_retweet"

    const/4 v12, 0x1

    invoke-static {v11, v8, v12}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    new-instance v8, Ljava/io/ByteArrayOutputStream;

    const/16 v12, 0x400

    invoke-direct {v8, v12}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, p1

    move-object v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/TwitterService;->b(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v11

    invoke-virtual {v11}, Lo;->a()Lo;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lo;->b()Z

    move-result v11

    if-eqz v11, :cond_9

    :try_start_0
    invoke-static {v8}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lbl;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Ldb;->a(Lbl;Lac;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x0

    const-wide v13, 0x7fffffffffffffffL

    const-wide/16 v15, 0x0

    if-lez v11, :cond_11

    if-nez v5, :cond_11

    const-wide/16 v17, 0x0

    cmp-long v5, v20, v17

    if-lez v5, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v5, v0

    move-object v0, v5

    move-wide v1, v6

    move-wide/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/provider/ab;->b(JJ)I

    move-result v5

    if-lez v5, :cond_a

    const/4 v5, 0x1

    sub-int v5, v11, v5

    move-object/from16 v0, v23

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq;

    if-eqz p1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v5, v0

    const/4 v8, 0x0

    invoke-virtual/range {p1 .. p1}, Lq;->a()Lq;

    move-result-object v9

    iget-wide v9, v9, Lq;->a:J

    invoke-virtual/range {v5 .. v10}, Lcom/twitter/android/provider/ab;->a(JIJ)Z

    move-result v5

    if-nez v5, :cond_12

    const/4 v5, 0x1

    move-object/from16 v0, p1

    iget-wide v0, v0, Lq;->a:J

    move-wide v8, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lq;->d:J

    move-wide v12, v0

    :goto_4
    move-wide/from16 v24, v8

    move-wide/from16 v26, v12

    :goto_5
    const-wide/16 v8, 0x0

    cmp-long v8, v20, v8

    if-lez v8, :cond_d

    if-lez v11, :cond_d

    const/4 v8, 0x1

    sub-int v8, v11, v8

    move-object/from16 v0, v23

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lq;->a:J

    move-wide v8, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v17, v8

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v8, v0

    const/4 v12, 0x0

    const-wide/16 v13, -0x1

    const-wide/16 v9, 0x0

    cmp-long v9, v20, v9

    if-eqz v9, :cond_e

    const/4 v9, 0x1

    move v15, v9

    :goto_7
    const-wide/16 v9, 0x0

    cmp-long v9, v20, v9

    if-lez v9, :cond_f

    if-nez v5, :cond_f

    const/4 v9, 0x1

    move/from16 v16, v9

    :goto_8
    const/16 v18, 0x0

    move-object/from16 v9, v23

    move-wide v10, v6

    invoke-virtual/range {v8 .. v18}, Lcom/twitter/android/provider/ab;->a(Ljava/util/ArrayList;JIJZZLjava/lang/String;Z)I

    move-result v13

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v5, v0

    const/4 v12, 0x0

    move-wide/from16 v8, v24

    move-wide/from16 v10, v26

    invoke-virtual/range {v5 .. v12}, Lcom/twitter/android/provider/ab;->a(JJJI)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v8, Lcom/twitter/android/provider/ai;->a:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v5, v0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/twitter/android/provider/ab;->d(JI)I

    move-result v5

    const-string v6, "com.android.contacts"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lcom/twitter/android/platform/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-eqz v6, :cond_8

    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/twitter/android/platform/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_8
    :try_start_2
    const-string v6, "new_tweet"

    move-object/from16 v0, p8

    move-object v1, v6

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "unread_tweet"

    move-object/from16 v0, p8

    move-object v1, v6

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_9
    :goto_9
    move-object/from16 v5, v22

    goto/16 :goto_2

    :cond_a
    const-wide/16 v17, 0x0

    cmp-long v5, v9, v17

    if-lez v5, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v5, v0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/twitter/android/provider/ab;->b(JI)J

    move-result-wide v8

    const-wide/16 v17, 0x0

    cmp-long v5, v8, v17

    if-lez v5, :cond_11

    const/4 v5, 0x1

    const/4 v10, 0x1

    sub-int v10, v11, v10

    move-wide/from16 v28, v15

    move-wide/from16 v30, v13

    move-wide/from16 v14, v30

    move-wide/from16 v12, v28

    :goto_a
    if-ltz v10, :cond_10

    move-object/from16 v0, v23

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq;

    invoke-virtual/range {p1 .. p1}, Lq;->a()Lq;

    move-result-object v16

    move-object/from16 v0, v16

    iget-wide v0, v0, Lq;->a:J

    move-wide/from16 v16, v0

    cmp-long v16, v8, v16

    if-nez v16, :cond_b

    const/4 v5, 0x0

    move-wide/from16 v24, v12

    move-wide/from16 v26, v14

    goto/16 :goto_5

    :cond_b
    move-object/from16 v0, p1

    iget-wide v0, v0, Lq;->d:J

    move-wide/from16 v16, v0

    cmp-long v16, v14, v16

    if-lez v16, :cond_c

    move-object/from16 v0, p1

    iget-wide v0, v0, Lq;->d:J

    move-wide v12, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lq;->a:J

    move-wide v14, v0

    move-wide/from16 v28, v14

    move-wide v14, v12

    move-wide/from16 v12, v28

    :cond_c
    add-int/lit8 v10, v10, -0x1

    goto :goto_a

    :cond_d
    const/4 v8, 0x0

    move-object/from16 v17, v8

    goto/16 :goto_6

    :cond_e
    const/4 v9, 0x0

    move v15, v9

    goto/16 :goto_7

    :cond_f
    const/4 v9, 0x0

    move/from16 v16, v9

    goto/16 :goto_8

    :catch_0
    move-exception v5

    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v5

    sget-boolean v6, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v6, :cond_9

    const-string v6, "TwitterService"

    const-string v7, "Problem processing response."

    invoke-static {v6, v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    :cond_10
    move-wide/from16 v24, v12

    move-wide/from16 v26, v14

    goto/16 :goto_5

    :cond_11
    move-wide/from16 v24, v15

    move-wide/from16 v26, v13

    move v5, v12

    goto/16 :goto_5

    :cond_12
    move-wide v8, v15

    move v5, v12

    move-wide/from16 v28, v13

    move-wide/from16 v12, v28

    goto/16 :goto_4

    :cond_13
    move-wide/from16 v20, p5

    move-wide/from16 v9, p3

    goto/16 :goto_3

    :cond_14
    move/from16 v8, p7

    goto/16 :goto_1
.end method

.method private a(Lce;Landroid/content/Intent;)Lo;
    .locals 19

    const-string v4, "status_id"

    const-wide/16 v5, 0x0

    move-object/from16 v0, p2

    move-object v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v4, "impression_id"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v4, "user_id"

    const-wide/16 v5, 0x0

    move-object/from16 v0, p2

    move-object v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v4, v0

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/twitter/android/provider/ab;->a(JJZ)V

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v11, "favorites"

    aput-object v11, v4, v9

    const/4 v9, 0x1

    const-string v11, "create"

    aput-object v11, v4, v9

    const/4 v9, 0x2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v4, v9

    const-string v9, "https://api.twitter.com/1"

    invoke-static {v9, v4}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ".json"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v10, :cond_0

    const-string v9, "impression_id"

    invoke-static {v4, v9, v10}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v9, "include_entities"

    const/4 v10, 0x1

    invoke-static {v4, v9, v10}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p1

    move-object v3, v9

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/TwitterService;->a(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v4

    invoke-virtual {v4}, Lo;->a()Lo;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lo;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    :try_start_0
    invoke-static {v9}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lbl;

    move-result-object v4

    invoke-static {v4}, Ldb;->d(Lbl;)Lq;

    move-result-object v4

    const/4 v7, 0x1

    iput-boolean v7, v4, Lq;->k:Z

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v7, v0

    const/4 v11, 0x2

    const-wide/16 v12, -0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-wide v9, v5

    invoke-virtual/range {v7 .. v17}, Lcom/twitter/android/provider/ab;->a(Ljava/util/ArrayList;JIJZZLjava/lang/String;Z)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v18

    :catch_0
    move-exception v4

    sget-boolean v5, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v5, :cond_1

    const-string v5, "TwitterService"

    const-string v6, "Problem processing response."

    invoke-static {v5, v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v4, v0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/twitter/android/provider/ab;->a(JJZ)V

    goto :goto_0
.end method

.method private a(Lce;Landroid/content/Intent;Z)Lo;
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v0, "user_id"

    invoke-virtual {p2, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "owner_id"

    invoke-virtual {p2, v2, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    if-eqz p3, :cond_1

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "report_spam"

    aput-object v5, v4, v6

    const-string v5, "https://api.twitter.com/1"

    invoke-static {v5, v4}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "id"

    invoke-static {v4, v5, v0, v1}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    move-object v0, v4

    :goto_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lcom/twitter/android/service/TwitterService;->a(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v0

    invoke-virtual {v0}, Lo;->a()Lo;

    move-result-object v9

    invoke-virtual {v9}, Lo;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v1}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lbl;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Ldb;->a(Lbl;J)Lac;

    move-result-object v6

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    const/4 v1, 0x1

    iget-wide v4, v6, Lac;->a:J

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/provider/ab;->a(IJJ)V

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    const/4 v1, 0x0

    iget-wide v4, v6, Lac;->a:J

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/provider/ab;->a(IJJ)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    const/4 v4, 0x2

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/twitter/android/provider/ab;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-object v9

    :cond_1
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "blocks"

    aput-object v5, v4, v6

    const-string v5, "create"

    aput-object v5, v4, v7

    const-string v5, "https://api.twitter.com/1"

    invoke-static {v5, v4}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "user_id"

    invoke-static {v4, v5, v0, v1}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    move-object v0, v4

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "TwitterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createBlock, spam: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private a(Lce;Ljava/lang/String;JLjava/io/ByteArrayOutputStream;)Lo;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "users"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "show"

    aput-object v2, v0, v1

    const-string v1, "https://api.twitter.com/1"

    invoke-static {v1, v0}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-nez v1, :cond_0

    const-string v1, "screen_name"

    invoke-static {v0, v1, p2}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, v0, p1, p5}, Lcom/twitter/android/service/TwitterService;->b(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v0

    invoke-virtual {v0}, Lo;->a()Lo;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "user_id"

    invoke-static {v0, v1, p3, p4}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private a(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;
    .locals 3

    new-instance v0, Lo;

    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p2, p3}, Lo;-><init>(Lorg/apache/http/client/methods/HttpRequestBase;Lce;Ljava/io/OutputStream;)V

    invoke-static {p0, v0}, Laf;->a(Landroid/content/Context;Lo;)V

    return-object v0
.end method

.method private a(Lce;ILjava/lang/String;J)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "promoted_content"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "log"

    aput-object v2, v0, v1

    const-string v1, "https://api.twitter.com/1"

    invoke-static {v1, v0}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p3, :cond_0

    const-string v1, "impression_id"

    invoke-static {v0, v1, p3}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    if-lez v1, :cond_1

    const-string v1, "promoted_trend_id"

    invoke-static {v0, v1, p4, p5}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_1
    const-string v1, "event"

    sget-object v2, Lcom/twitter/android/service/TwitterService;->b:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-static {v0, v1, v2}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/twitter/android/service/TwitterService;->b(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v0

    invoke-virtual {v0}, Lo;->a()Lo;

    return-void
.end method

.method private static b(Ljava/io/ByteArrayOutputStream;)Lbl;
    .locals 2

    sget-object v0, Ldb;->a:Ldp;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ldp;->a([B)Lbl;

    move-result-object v0

    invoke-virtual {v0}, Lbl;->g()Lcg;

    return-object v0
.end method

.method private b(Lce;Landroid/content/Intent;)Lo;
    .locals 13

    const/4 v12, 0x0

    const/4 v10, 0x1

    const-string v0, "page"

    invoke-virtual {p2, v0, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string v0, "user_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    new-array v0, v10, [Ljava/lang/Object;

    const-string v1, "favorites"

    aput-object v1, v0, v12

    const-string v1, "https://api.twitter.com/1"

    invoke-static {v1, v0}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "id"

    invoke-static {v0, v1, v2, v3}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    if-lez v8, :cond_0

    const-string v1, "page"

    invoke-static {v0, v1, v8}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_0
    const-string v1, "include_entities"

    invoke-static {v0, v1, v10}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lcom/twitter/android/service/TwitterService;->b(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v0

    invoke-virtual {v0}, Lo;->a()Lo;

    move-result-object v11

    invoke-virtual {v11}, Lo;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {v1}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lbl;

    move-result-object v0

    invoke-static {v0}, Ldb;->c(Lbl;)Ljava/util/ArrayList;

    move-result-object v1

    if-lez v8, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v10

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq;

    iget-wide v4, v0, Lq;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    :goto_0
    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    const/4 v4, 0x2

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    if-lez v8, :cond_3

    move v8, v10

    :goto_1
    const/4 v10, 0x1

    invoke-virtual/range {v0 .. v10}, Lcom/twitter/android/provider/ab;->a(Ljava/util/ArrayList;JIJZZLjava/lang/String;Z)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    return-object v11

    :cond_2
    const/4 v0, 0x0

    move-object v9, v0

    goto :goto_0

    :cond_3
    move v8, v12

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "TwitterService"

    const-string v2, "Problem processing response."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private b(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;
    .locals 3

    new-instance v0, Lo;

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p2, p3}, Lo;-><init>(Lorg/apache/http/client/methods/HttpRequestBase;Lce;Ljava/io/OutputStream;)V

    invoke-static {p0, v0}, Laf;->a(Landroid/content/Context;Lo;)V

    return-object v0
.end method

.method private c(Lce;Landroid/content/Intent;)Lo;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "account"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "rate_limit_status"

    aput-object v2, v0, v1

    const-string v1, "https://api.twitter.com/1"

    invoke-static {v1, v0}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lcom/twitter/android/service/TwitterService;->b(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v0

    invoke-virtual {v0}, Lo;->a()Lo;

    move-result-object v0

    invoke-virtual {v0}, Lo;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {v1}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lbl;

    move-result-object v1

    const-string v2, "rate_limit"

    invoke-static {v1}, Ldb;->i(Lbl;)Lak;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    iput v3, v0, Lo;->c:I

    goto :goto_0
.end method

.method private d(Lce;Landroid/content/Intent;)Lo;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "client_applications"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "configuration"

    aput-object v2, v0, v1

    const-string v1, "https://api.twitter.com/1"

    invoke-static {v1, v0}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lcom/twitter/android/service/TwitterService;->b(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v0

    invoke-virtual {v0}, Lo;->a()Lo;

    move-result-object v0

    invoke-virtual {v0}, Lo;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {v1}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lbl;

    move-result-object v1

    const-string v2, "settings"

    invoke-static {v1}, Ldb;->j(Lbl;)Ldf;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    iput v3, v0, Lo;->c:I

    goto :goto_0
.end method

.method private e(Lce;Landroid/content/Intent;)Lo;
    .locals 11

    const-wide/16 v5, 0x0

    const/4 v8, 0x3

    const/4 v1, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v0, "list_type"

    invoke-virtual {p2, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v0, "user_id"

    invoke-virtual {p2, v0, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v0, "owner_id"

    invoke-virtual {p2, v0, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v0, "page"

    invoke-virtual {p2, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/provider/ab;->a(IIJI)Ljava/lang/String;

    move-result-object v0

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid list type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v9

    const-string v5, "lists"

    aput-object v5, v1, v10

    const-string v5, "https://api.twitter.com/1"

    invoke-static {v5, v1}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ".json"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    if-eqz v0, :cond_0

    const-string v5, "cursor"

    invoke-static {v1, v5, v0}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, v1, p1, v0}, Lcom/twitter/android/service/TwitterService;->b(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v1

    invoke-virtual {v1}, Lo;->a()Lo;

    move-result-object v1

    invoke-virtual {v1}, Lo;->b()Z

    move-result v5

    if-eqz v5, :cond_1

    packed-switch v2, :pswitch_data_1

    move v5, v9

    :goto_1
    :try_start_0
    invoke-static {v0}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lbl;

    move-result-object v0

    invoke-static {v0, v5}, Ldb;->a(Lbl;I)Ldh;

    move-result-object v0

    iget-object v5, p0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    invoke-virtual {v0}, Ldh;->b()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v0}, Ldh;->a()Ljava/lang/String;

    move-result-object v10

    move-wide v7, v3

    move v9, v2

    invoke-virtual/range {v5 .. v10}, Lcom/twitter/android/provider/ab;->a(Ljava/util/Collection;JILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    return-object v1

    :pswitch_1
    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v9

    const-string v8, "lists"

    aput-object v8, v5, v10

    const-string v8, "memberships"

    aput-object v8, v5, v1

    const-string v1, "https://api.twitter.com/1"

    invoke-static {v1, v5}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ".json"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v9

    const-string v8, "lists"

    aput-object v8, v5, v10

    const-string v8, "subscriptions"

    aput-object v8, v5, v1

    const-string v1, "https://api.twitter.com/1"

    invoke-static {v1, v5}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ".json"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_3
    move v5, v9

    goto :goto_1

    :pswitch_4
    cmp-long v5, v3, v6

    if-nez v5, :cond_2

    move v5, v10

    goto :goto_1

    :cond_2
    move v5, v9

    goto :goto_1

    :pswitch_5
    cmp-long v5, v3, v6

    if-nez v5, :cond_3

    move v5, v10

    goto :goto_1

    :cond_3
    move v5, v9

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v2, :cond_1

    const-string v2, "TwitterService"

    const-string v3, "Problem processing response."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private f(Lce;Landroid/content/Intent;)Lo;
    .locals 18

    const-string v4, "page"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string v4, "user_id"

    const-wide/16 v5, 0x0

    move-object/from16 v0, p2

    move-object v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v4, "user_type"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/twitter/android/provider/ab;->a(IIJI)Ljava/lang/String;

    move-result-object v4

    packed-switch v6, :pswitch_data_0

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown user type: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_0
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "statuses"

    aput-object v11, v5, v10

    const/4 v10, 0x1

    const-string v11, "followers"

    aput-object v11, v5, v10

    const-string v10, "https://api.twitter.com/1"

    invoke-static {v10, v5}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    :goto_0
    const-string v10, ".json"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "user_id"

    invoke-static {v5, v10, v7, v8}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    if-eqz v4, :cond_0

    const-string v10, "cursor"

    invoke-static {v5, v10, v4}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p1

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/TwitterService;->b(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v5

    invoke-virtual {v5}, Lo;->a()Lo;

    move-result-object v5

    invoke-virtual {v5}, Lo;->b()Z

    move-result v10

    if-eqz v10, :cond_1

    :try_start_0
    invoke-static {v4}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lbl;

    move-result-object v4

    invoke-static {v4}, Ldb;->a(Lbl;)Ldh;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v11, v0

    invoke-virtual {v4}, Ldh;->b()Ljava/util/ArrayList;

    move-result-object v10

    const-wide/16 v14, -0x1

    if-nez v9, :cond_2

    const-string v9, "-1"

    move-object/from16 v16, v9

    :goto_1
    invoke-virtual {v4}, Ldh;->a()Ljava/lang/String;

    move-result-object v17

    move-object v9, v11

    move-wide v11, v7

    move v13, v6

    invoke-virtual/range {v9 .. v17}, Lcom/twitter/android/provider/ab;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    return-object v5

    :pswitch_1
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "statuses"

    aput-object v11, v5, v10

    const/4 v10, 0x1

    const-string v11, "friends"

    aput-object v11, v5, v10

    const-string v10, "https://api.twitter.com/1"

    invoke-static {v10, v5}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    move-object/from16 v16, v9

    goto :goto_1

    :catch_0
    move-exception v4

    sget-boolean v6, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v6, :cond_1

    const-string v6, "TwitterService"

    const-string v7, "Problem processing response."

    invoke-static {v6, v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private g(Lce;Landroid/content/Intent;)Lo;
    .locals 11

    const/4 v10, 0x0

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v4, 0x0

    const-string v0, "page"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v0, "user_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "blocks"

    aput-object v1, v0, v4

    const-string v1, "blocking"

    aput-object v1, v0, v8

    const-string v1, "https://api.twitter.com/1"

    invoke-static {v1, v0}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v7, :cond_0

    const-string v1, "page"

    invoke-static {v0, v1, v7}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lcom/twitter/android/service/TwitterService;->b(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v0

    invoke-virtual {v0}, Lo;->a()Lo;

    move-result-object v9

    invoke-virtual {v9}, Lo;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {v1}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lbl;

    move-result-object v0

    invoke-static {v0}, Ldb;->b(Lbl;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    const/4 v4, 0x2

    const-wide/16 v5, -0x1

    if-ne v7, v8, :cond_2

    const-string v7, "-1"

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "0"

    :goto_1
    invoke-virtual/range {v0 .. v8}, Lcom/twitter/android/provider/ab;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    return-object v9

    :cond_2
    move-object v7, v10

    goto :goto_0

    :cond_3
    move-object v8, v10

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "TwitterService"

    const-string v2, "Problem processing response."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private h(Lce;Landroid/content/Intent;)Lo;
    .locals 12

    const-wide/16 v2, 0x0

    const/4 v7, 0x1

    const/4 v11, 0x0

    const-string v0, "device_follow"

    invoke-virtual {p2, v0, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "user_id"

    invoke-virtual {p2, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v1, "owner_id"

    invoke-virtual {p2, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v6, "friendships"

    aput-object v6, v1, v11

    const-string v6, "create"

    aput-object v6, v1, v7

    const-string v6, "https://api.twitter.com/1"

    invoke-static {v6, v1}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ".json"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "user_id"

    invoke-static {v1, v6, v4, v5}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    if-eqz v0, :cond_0

    const-string v4, "follow"

    invoke-static {v1, v4, v0}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, v1, p1, v0}, Lcom/twitter/android/service/TwitterService;->a(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v1

    invoke-virtual {v1}, Lo;->a()Lo;

    move-result-object v9

    invoke-virtual {v9}, Lo;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {v0}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lbl;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Ldb;->a(Lbl;J)Lac;

    move-result-object v10

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/twitter/android/provider/ab;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    iget-wide v1, v10, Lac;->a:J

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/provider/ab;->a(JZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v9

    :catch_0
    move-exception v0

    iput v11, v9, Lo;->c:I

    goto :goto_0
.end method

.method private i(Lce;Landroid/content/Intent;)Lo;
    .locals 9

    const-wide/16 v1, 0x0

    const/4 v4, 0x0

    const-string v0, "user_id"

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v0, "owner_id"

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "friendships"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v4, "destroy"

    aput-object v4, v0, v1

    const-string v1, "https://api.twitter.com/1"

    invoke-static {v1, v0}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "user_id"

    invoke-static {v0, v1, v6, v7}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lcom/twitter/android/service/TwitterService;->a(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v0

    invoke-virtual {v0}, Lo;->a()Lo;

    move-result-object v8

    invoke-virtual {v8}, Lo;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v1}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lbl;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Ldb;->a(Lbl;J)Lac;

    move-result-object v4

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    const/4 v1, 0x0

    iget-wide v4, v4, Lac;->a:J

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/provider/ab;->a(IJJ)V

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v7, v1}, Lcom/twitter/android/provider/ab;->a(JZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v8

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "TwitterService"

    const-string v2, "Problem processing response."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private j(Lce;Landroid/content/Intent;)Lo;
    .locals 10

    const-wide/16 v3, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v0, "user_id"

    invoke-virtual {p2, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "owner_id"

    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v4, "screen_name"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.extra.TEXT"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "direct_messages"

    aput-object v7, v6, v8

    const-string v7, "new"

    aput-object v7, v6, v9

    const-string v7, "https://api.twitter.com/1"

    invoke-static {v7, v6}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".json"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_1

    const-string v4, "user_id"

    invoke-static {v6, v4, v0, v1}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :goto_0
    const-string v0, "text"

    invoke-static {v6, v0, v5}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "include_entities"

    invoke-static {v6, v0, v9}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, v6, p1, v0}, Lcom/twitter/android/service/TwitterService;->a(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v1

    invoke-virtual {v1}, Lo;->a()Lo;

    move-result-object v8

    invoke-virtual {v8}, Lo;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v0}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lbl;

    move-result-object v0

    invoke-static {v0}, Ldb;->f(Lbl;)Lch;

    move-result-object v9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/twitter/android/provider/ab;->a(Ljava/util/List;JIZZLjava/lang/String;)I

    const-string v0, "user"

    iget-object v1, v9, Lch;->e:Lac;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-object v8

    :cond_1
    const-string v0, "screen_name"

    invoke-static {v6, v0, v4}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "TwitterService"

    const-string v2, "Problem processing response."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private k(Lce;Landroid/content/Intent;)Lo;
    .locals 4

    const/4 v3, 0x0

    const-string v0, "url"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "urls"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "shorten"

    aput-object v3, v1, v2

    const-string v2, "https://api.twitter.com/1"

    invoke-static {v2, v1}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "url"

    invoke-static {v1, v2, v0}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, v1, p1, v0}, Lcom/twitter/android/service/TwitterService;->b(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v1

    invoke-virtual {v1}, Lo;->a()Lo;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lo;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "short_url"

    const-string v3, "url"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v2, "errors"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "message"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lo;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private l(Lce;Landroid/content/Intent;)Lo;
    .locals 13

    const-wide/16 v1, 0x0

    const-string v0, "user_id"

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v0, "owner_id"

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    const-string v0, "screen_name"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/service/TwitterService;->a(Lce;Ljava/lang/String;JLjava/io/ByteArrayOutputStream;)Lo;

    move-result-object v11

    invoke-virtual {v11}, Lo;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lbl;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Ldb;->a(Lbl;J)Lac;

    move-result-object v12

    if-eqz v12, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/twitter/android/provider/ab;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)V

    iget-wide v0, v12, Lac;->a:J

    cmp-long v0, v9, v0

    if-eqz v0, :cond_0

    iget-wide v0, v12, Lac;->a:J

    invoke-direct {p0, v9, v10, v0, v1}, Lcom/twitter/android/service/TwitterService;->a(JJ)Lo;

    :cond_0
    const-string v0, "user"

    invoke-virtual {p2, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v11

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "TwitterService"

    const-string v2, "Problem processing response."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private m(Lce;Landroid/content/Intent;)Lo;
    .locals 9

    const-wide/16 v4, 0x0

    const/4 v8, 0x1

    const-string v0, "status_id"

    invoke-virtual {p2, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "impression_id"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "owner_id"

    invoke-virtual {p2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "statuses"

    aput-object v7, v5, v6

    const-string v6, "retweet"

    aput-object v6, v5, v8

    const/4 v6, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    const-string v0, "https://api.twitter.com/1"

    invoke-static {v0, v5}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v2, :cond_0

    const-string v1, "impression_id"

    invoke-static {v0, v1, v2}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "include_entities"

    invoke-static {v0, v1, v8}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lcom/twitter/android/service/TwitterService;->a(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v0

    invoke-virtual {v0}, Lo;->a()Lo;

    move-result-object v0

    invoke-virtual {v0}, Lo;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-static {v1}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lbl;

    move-result-object v1

    invoke-static {v1}, Ldb;->d(Lbl;)Lq;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    invoke-virtual {v2, v1, v3, v4}, Lcom/twitter/android/provider/ab;->a(Lq;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v2, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v2, :cond_1

    const-string v2, "TwitterService"

    const-string v3, "retweet"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private n(Lce;Landroid/content/Intent;)Lo;
    .locals 7

    const-wide/16 v3, 0x0

    const-string v0, "status_id"

    invoke-virtual {p2, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "owner_id"

    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "statuses"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "destroy"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "https://api.twitter.com/1"

    invoke-static {v5, v4}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, v4, p1, v5}, Lcom/twitter/android/service/TwitterService;->a(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v4

    invoke-virtual {v4}, Lo;->a()Lo;

    move-result-object v4

    invoke-virtual {v4}, Lo;->b()Z

    move-result v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lbl;

    move-result-object v0

    invoke-static {v0}, Ldb;->d(Lbl;)Lq;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    invoke-virtual {v1, v2, v3, v0}, Lcom/twitter/android/provider/ab;->a(JLq;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "TwitterService"

    const-string v2, "destroyStatus"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    iget v5, v4, Lo;->c:I

    const/16 v6, 0x194

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    invoke-virtual {v5, v0, v1}, Lcom/twitter/android/provider/ab;->a(J)Lq;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    invoke-virtual {v0, v2, v3, v5}, Lcom/twitter/android/provider/ab;->a(JLq;)V

    goto :goto_0

    :cond_2
    const-string v2, "TwitterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "destroyStatus: status not found: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private o(Lce;Landroid/content/Intent;)Lo;
    .locals 7

    const-wide/16 v2, 0x0

    const/4 v1, 0x2

    const-string v0, "user_id"

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v0, "owner_id"

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v6, "blocks"

    aput-object v6, v0, v1

    const/4 v1, 0x1

    const-string v6, "destroy"

    aput-object v6, v0, v1

    const-string v1, "https://api.twitter.com/1"

    invoke-static {v1, v0}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "user_id"

    invoke-static {v0, v1, v4, v5}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/twitter/android/service/TwitterService;->a(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v0

    invoke-virtual {v0}, Lo;->a()Lo;

    move-result-object v6

    invoke-virtual {v6}, Lo;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    const/4 v1, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/provider/ab;->a(IJJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v6

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "TwitterService"

    const-string v2, "destroyBlock"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private p(Lce;Landroid/content/Intent;)Lo;
    .locals 12

    const/4 v11, 0x2

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v0, "owner_id"

    invoke-virtual {p2, v0, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v0, "name"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "desc"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "list_mode"

    invoke-virtual {p2, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "list_id"

    invoke-virtual {p2, v5, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v7, v5, v7

    if-nez v7, :cond_2

    new-array v5, v11, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v9

    const-string v6, "lists"

    aput-object v6, v5, v10

    const-string v6, "https://api.twitter.com/1"

    invoke-static {v6, v5}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    :goto_0
    const-string v6, "name"

    invoke-static {v5, v6, v0}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v4, :pswitch_data_0

    :goto_1
    if-eqz v1, :cond_0

    const-string v0, "description"

    invoke-static {v5, v0, v1}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, v5, p1, v0}, Lcom/twitter/android/service/TwitterService;->a(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v1

    invoke-virtual {v1}, Lo;->a()Lo;

    move-result-object v6

    invoke-virtual {v6}, Lo;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {v0}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lbl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ldb;->b(Lbl;I)Lcm;

    move-result-object v7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/provider/ab;->a(Ljava/util/Collection;JILjava/lang/String;)V

    const-string v0, "list_id"

    invoke-virtual {v7}, Lcm;->a()J

    move-result-wide v1

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    return-object v6

    :cond_2
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v9

    const-string v8, "lists"

    aput-object v8, v7, v10

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v7, v11

    const-string v5, "https://api.twitter.com/1"

    invoke-static {v5, v7}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    goto :goto_0

    :pswitch_0
    const-string v0, "mode"

    const-string v4, "public"

    invoke-static {v5, v0, v4}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    const-string v0, "mode"

    const-string v4, "private"

    invoke-static {v5, v0, v4}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "TwitterService"

    const-string v2, "createList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private q(Lce;Landroid/content/Intent;)Lo;
    .locals 8

    const-wide/16 v3, 0x0

    const/4 v7, 0x2

    const-string v0, "owner_id"

    invoke-virtual {p2, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "list_id"

    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "lists"

    aput-object v6, v4, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    const-string v5, "https://api.twitter.com/1"

    invoke-static {v5, v4}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_method"

    const-string v6, "DELETE"

    invoke-static {v4, v5, v6}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, v4, p1, v5}, Lcom/twitter/android/service/TwitterService;->a(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v4

    invoke-virtual {v4}, Lo;->a()Lo;

    move-result-object v4

    invoke-virtual {v4}, Lo;->b()Z

    move-result v6

    if-eqz v6, :cond_0

    :try_start_0
    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lbl;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Ldb;->b(Lbl;I)Lcm;

    iget-object v5, p0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/twitter/android/provider/ab;->a(JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "TwitterService"

    const-string v2, "createList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private r(Lce;Landroid/content/Intent;)Lo;
    .locals 19

    const-string v4, "list_mode"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "since_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    const-string v5, "user_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v5, "list_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    const-string v5, "max_id"

    const-wide/16 v13, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    move-wide v2, v13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    const-string v5, "count"

    const/16 v8, 0x64

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v8, v13

    const/4 v13, 0x1

    const-string v16, "lists"

    aput-object v16, v8, v13

    const/4 v13, 0x2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v8, v13

    const/4 v13, 0x3

    const-string v16, "statuses"

    aput-object v16, v8, v13

    const-string v13, "https://api.twitter.com/1"

    invoke-static {v13, v8}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v13, ".json"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-wide/16 v16, 0x0

    cmp-long v13, v11, v16

    if-lez v13, :cond_0

    const-string v13, "since_id"

    invoke-static {v8, v13, v11, v12}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_0
    const-wide/16 v11, 0x0

    cmp-long v11, v14, v11

    if-lez v11, :cond_1

    const-string v11, "max_id"

    invoke-static {v8, v11, v14, v15}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_1
    const-string v11, "per_page"

    invoke-static {v8, v11, v5}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v5, "include_entities"

    const/4 v11, 0x1

    invoke-static {v8, v5, v11}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v11, 0x1

    if-ne v4, v11, :cond_3

    move-object/from16 v4, p1

    :goto_0
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v4

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/TwitterService;->b(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v4

    invoke-virtual {v4}, Lo;->a()Lo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lo;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    :try_start_0
    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lbl;

    move-result-object v4

    invoke-static {v4}, Ldb;->c(Lbl;)Ljava/util/ArrayList;

    move-result-object v5

    const-wide/16 v11, 0x0

    cmp-long v4, v14, v11

    if-lez v4, :cond_4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v8, 0x1

    sub-int/2addr v4, v8

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lq;->a:J

    move-wide v11, v0

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    move-object v13, v4

    :goto_1
    const-wide/16 v11, 0x0

    cmp-long v4, v14, v11

    if-lez v4, :cond_5

    const/4 v4, 0x1

    move v12, v4

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v4, v0

    const/16 v8, 0x9

    const-wide/16 v17, 0x0

    cmp-long v11, v14, v17

    if-eqz v11, :cond_6

    const/4 v11, 0x1

    :goto_3
    const/4 v14, 0x1

    invoke-virtual/range {v4 .. v14}, Lcom/twitter/android/provider/ab;->a(Ljava/util/ArrayList;JIJZZLjava/lang/String;Z)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_4
    return-object v16

    :cond_3
    sget-object v4, Lce;->a:Lce;

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    move-object v13, v4

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    move v12, v4

    goto :goto_2

    :cond_6
    const/4 v11, 0x0

    goto :goto_3

    :catch_0
    move-exception v4

    sget-boolean v5, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v5, :cond_2

    const-string v5, "TwitterService"

    const-string v6, "getListTweets"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method private s(Lce;Landroid/content/Intent;)Lo;
    .locals 18

    const-string v4, "user_id"

    const-wide/16 v5, 0x0

    move-object/from16 v0, p2

    move-object v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v4, "list_id"

    const-wide/16 v5, 0x0

    move-object/from16 v0, p2

    move-object v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    const-string v4, "page"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string v4, "user_type"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/twitter/android/provider/ab;->a(IIJI)Ljava/lang/String;

    move-result-object v4

    packed-switch v6, :pswitch_data_0

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown user type: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_0
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v5, v10

    const/4 v10, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v5, v10

    const/4 v10, 0x2

    const-string v11, "members"

    aput-object v11, v5, v10

    const-string v10, "https://api.twitter.com/1"

    invoke-static {v10, v5}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    :goto_0
    const-string v10, ".json"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_0

    const-string v10, "cursor"

    invoke-static {v5, v10, v4}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p1

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/TwitterService;->b(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v5

    invoke-virtual {v5}, Lo;->a()Lo;

    move-result-object v5

    invoke-virtual {v5}, Lo;->b()Z

    move-result v10

    if-eqz v10, :cond_1

    :try_start_0
    invoke-static {v4}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lbl;

    move-result-object v4

    invoke-static {v4}, Ldb;->a(Lbl;)Ldh;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v11, v0

    invoke-virtual {v4}, Ldh;->b()Ljava/util/ArrayList;

    move-result-object v10

    if-nez v9, :cond_2

    const-string v9, "-1"

    move-object/from16 v16, v9

    :goto_1
    invoke-virtual {v4}, Ldh;->a()Ljava/lang/String;

    move-result-object v17

    move-object v9, v11

    move-wide v11, v7

    move v13, v6

    invoke-virtual/range {v9 .. v17}, Lcom/twitter/android/provider/ab;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    return-object v5

    :pswitch_1
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v5, v10

    const/4 v10, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v5, v10

    const/4 v10, 0x2

    const-string v11, "subscribers"

    aput-object v11, v5, v10

    const-string v10, "https://api.twitter.com/1"

    invoke-static {v10, v5}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    move-object/from16 v16, v9

    goto :goto_1

    :catch_0
    move-exception v4

    sget-boolean v6, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v6, :cond_1

    const-string v6, "TwitterService"

    const-string v7, "getListUsers"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private t(Lce;Landroid/content/Intent;)Lo;
    .locals 12

    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    const-string v0, "owner_id"

    invoke-virtual {p2, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v0, "user_id"

    invoke-virtual {p2, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v0, "list_id"

    invoke-virtual {p2, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v0, "user_type"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/service/TwitterService;->a(Lce;Ljava/lang/String;JLjava/io/ByteArrayOutputStream;)Lo;

    move-result-object v0

    invoke-virtual {v0}, Lo;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lbl;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Ldb;->a(Lbl;J)Lac;

    move-result-object v11

    if-eqz v11, :cond_0

    packed-switch v10, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown user type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "TwitterService"

    const-string v2, "addListUser"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const/4 v0, 0x3

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "members"

    aput-object v2, v0, v1

    invoke-static {v0}, Laf;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, v1, v3, v4}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :goto_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lcom/twitter/android/service/TwitterService;->a(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v0

    invoke-virtual {v0}, Lo;->a()Lo;

    move-result-object v8

    invoke-virtual {v8}, Lo;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lbl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ldb;->b(Lbl;I)Lcm;

    move-result-object v5

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-wide v1, v6

    move-object v3, v11

    move v4, v10

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/provider/ab;->a(JLac;ILcm;)V

    :cond_1
    move-object v0, v8

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "subscribers"

    aput-object v2, v0, v1

    invoke-static {v0}, Laf;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private u(Lce;Landroid/content/Intent;)Lo;
    .locals 12

    const/4 v8, 0x3

    const-wide/16 v6, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v0, "owner_id"

    invoke-virtual {p2, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v0, "user_id"

    invoke-virtual {p2, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v0, "list_id"

    invoke-virtual {p2, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v0, "user_type"

    invoke-virtual {p2, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown user type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v0, v9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v0, v10

    const-string v6, "members"

    aput-object v6, v0, v11

    const-string v6, "https://api.twitter.com/1"

    invoke-static {v6, v0}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ".json"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "id"

    invoke-static {v0, v6, v4, v5}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :goto_0
    const-string v6, "_method"

    const-string v7, "DELETE"

    invoke-static {v0, v6, v7}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, v0, p1, v6}, Lcom/twitter/android/service/TwitterService;->a(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v0

    invoke-virtual {v0}, Lo;->a()Lo;

    move-result-object v7

    invoke-virtual {v7}, Lo;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    packed-switch v1, :pswitch_data_1

    move v0, v9

    :goto_1
    :try_start_0
    invoke-static {v6}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lbl;

    move-result-object v6

    invoke-static {v6, v0}, Ldb;->b(Lbl;I)Lcm;

    move-result-object v6

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/android/provider/ab;->a(IJJLcm;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    return-object v7

    :pswitch_1
    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v0, v9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v0, v10

    const-string v6, "subscribers"

    aput-object v6, v0, v11

    const-string v6, "https://api.twitter.com/1"

    invoke-static {v6, v0}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ".json"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    move v0, v10

    goto :goto_1

    :pswitch_3
    move v0, v11

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "TwitterService"

    const-string v2, "removeListUser"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private v(Lce;Landroid/content/Intent;)Lo;
    .locals 28

    const-string v5, "owner_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    const-string v5, "max_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v18

    const-string v5, "since_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v20

    const-string v5, "page"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    const-string v5, "q"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "q_name"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "q_type"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    const-string v5, "place"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v5, "lang"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "show_user"

    const/4 v9, 0x0

    move-object/from16 v0, p2

    move-object v1, v8

    move v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    const-string v9, "geo"

    move-object/from16 v0, p2

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "locale"

    move-object/from16 v0, p2

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "count"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    move-object v1, v11

    move v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    if-gtz v11, :cond_e

    const/16 v11, 0x14

    move/from16 v24, v11

    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "http://search.twitter.com/search.json"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "q"

    invoke-static {v11, v12, v7}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x5

    move/from16 v0, v23

    move v1, v12

    if-ne v0, v1, :cond_7

    const-string v12, "result_type"

    const-string v13, "recent"

    invoke-static {v11, v12, v13}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz v5, :cond_0

    const-string v12, "lang"

    invoke-static {v11, v12, v5}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v10, :cond_1

    const-string v5, "locale"

    invoke-static {v11, v5, v10}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-wide/16 v12, 0x0

    cmp-long v5, v20, v12

    if-eqz v5, :cond_2

    const-string v5, "since_id"

    move-object v0, v11

    move-object v1, v5

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_2
    const-string v5, "rpp"

    move-object v0, v11

    move-object v1, v5

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-wide/16 v12, 0x0

    cmp-long v5, v18, v12

    if-eqz v5, :cond_3

    const-string v5, "max_id"

    move-object v0, v11

    move-object v1, v5

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_3
    if-eqz v8, :cond_4

    const-string v5, "show_user"

    invoke-static {v11, v5, v8}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    :cond_4
    if-eqz v9, :cond_5

    const-string v5, "geocode"

    invoke-static {v11, v5, v9}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, p1

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/TwitterService;->b(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v8

    invoke-virtual {v8}, Lo;->a()Lo;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lo;->b()Z

    move-result v8

    if-eqz v8, :cond_a

    :try_start_0
    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lbl;

    move-result-object v5

    invoke-static {v5}, Ldb;->g(Lbl;)Ljava/util/ArrayList;

    move-result-object v26

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    if-eqz v9, :cond_d

    new-instance v11, Ljava/util/StringTokenizer;

    const-string v12, ","

    const/4 v13, 0x0

    invoke-direct {v11, v9, v12, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v9, 0x0

    move/from16 v27, v9

    move-object v9, v8

    move-object v8, v10

    move-object v10, v5

    move/from16 v5, v27

    :goto_2
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    packed-switch v5, :pswitch_data_0

    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    const-string v12, "result_type"

    const-string v13, "mixed"

    invoke-static {v11, v12, v13}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_0
    :try_start_1
    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    goto :goto_3

    :pswitch_1
    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    goto :goto_3

    :pswitch_2
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x2

    if-le v13, v14, :cond_6

    const/4 v8, 0x0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x2

    sub-int/2addr v13, v14

    invoke-virtual {v12, v8, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    goto :goto_3

    :cond_8
    move-object v14, v8

    move-object v13, v9

    move-object v12, v10

    :goto_4
    const/4 v5, 0x5

    move/from16 v0, v23

    move v1, v5

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p1

    iget-object v0, v0, Lce;->b:Lab;

    move-object v5, v0

    if-eqz v5, :cond_9

    const-wide/16 v8, 0x0

    cmp-long v5, v18, v8

    if-gtz v5, :cond_9

    const-wide/16 v8, 0x0

    cmp-long v5, v20, v8

    if-gtz v5, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move-wide/from16 v3, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/android/service/TwitterService;->a(Lce;Ljava/lang/String;J)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_9

    const/4 v8, 0x0

    move-object/from16 v0, v26

    move v1, v8

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    :cond_9
    new-instance v5, Lda;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-direct/range {v5 .. v15}, Lda;-><init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;)V

    const-string v15, "search_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v6, v0

    const-wide/16 v7, 0x0

    cmp-long v7, v20, v7

    if-nez v7, :cond_b

    const-wide/16 v7, 0x0

    cmp-long v7, v18, v7

    if-nez v7, :cond_b

    const/4 v7, 0x1

    move v11, v7

    :goto_5
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v7

    move v0, v7

    move/from16 v1, v24

    if-ge v0, v1, :cond_c

    const/4 v7, 0x1

    move v12, v7

    :goto_6
    move-wide/from16 v7, v16

    move-object v9, v5

    move-object/from16 v10, v26

    move/from16 v13, v22

    move/from16 v14, v23

    invoke-virtual/range {v6 .. v14}, Lcom/twitter/android/provider/ab;->a(JLda;Ljava/util/List;ZZII)J

    move-result-wide v5

    move-object/from16 v0, p2

    move-object v1, v15

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_a
    :goto_7
    return-object v25

    :cond_b
    const/4 v7, 0x0

    move v11, v7

    goto :goto_5

    :cond_c
    const/4 v7, 0x0

    move v12, v7

    goto :goto_6

    :catch_0
    move-exception v5

    sget-boolean v6, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v6, :cond_a

    const-string v6, "TwitterService"

    const-string v7, "searchTweets"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :cond_d
    move-object v14, v10

    move-object v13, v8

    move-object v12, v5

    goto/16 :goto_4

    :cond_e
    move/from16 v24, v11

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private w(Lce;Landroid/content/Intent;)Lo;
    .locals 18

    move-object/from16 v0, p1

    iget-object v0, v0, Lce;->b:Lab;

    move-object v4, v0

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    const-string v4, "owner_id"

    const-wide/16 v5, 0x0

    move-object/from16 v0, p2

    move-object v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    const-string v4, "q"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v4, "count"

    const/16 v6, 0x14

    move-object/from16 v0, p2

    move-object v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    const-string v4, "page"

    const/4 v6, 0x1

    move-object/from16 v0, p2

    move-object v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "users"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "search"

    aput-object v8, v6, v7

    const-string v7, "https://api.twitter.com/1"

    invoke-static {v7, v6}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".json"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "q"

    invoke-static {v6, v7, v5}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "per_page"

    invoke-static {v6, v7, v13}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    if-lez v4, :cond_1

    const-string v7, "page"

    invoke-static {v6, v7, v4}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_1
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/TwitterService;->b(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v6

    invoke-virtual {v6}, Lo;->a()Lo;

    move-result-object v14

    invoke-virtual {v14}, Lo;->b()Z

    move-result v6

    if-eqz v6, :cond_2

    :try_start_0
    invoke-static {v4}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lbl;

    move-result-object v4

    invoke-static {v4}, Ldb;->b(Lbl;)Ljava/util/ArrayList;

    move-result-object v15

    const-string v16, "search_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object/from16 v17, v0

    new-instance v4, Lda;

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object v6, v5

    invoke-direct/range {v4 .. v10}, Lda;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v13, :cond_3

    const/4 v5, 0x1

    move v10, v5

    :goto_1
    move-object/from16 v5, v17

    move-object v6, v4

    move-object v7, v15

    move-wide v8, v11

    invoke-virtual/range {v5 .. v10}, Lcom/twitter/android/provider/ab;->a(Lda;Ljava/util/List;JZ)J

    move-result-wide v4

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move-wide v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    move-object v4, v14

    goto/16 :goto_0

    :cond_3
    const/4 v5, 0x0

    move v10, v5

    goto :goto_1

    :catch_0
    move-exception v4

    sget-boolean v5, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v5, :cond_2

    const-string v5, "TwitterService"

    const-string v6, "searchUsers"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private x(Lce;Landroid/content/Intent;)Lo;
    .locals 11

    const-string v0, "name"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "desc"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "place"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "account"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "account"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "update_profile"

    aput-object v7, v5, v6

    const-string v6, "https://api.twitter.com/1"

    invoke-static {v6, v5}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_0

    const-string v6, "name"

    invoke-static {v5, v6, v0}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v2, :cond_1

    const-string v0, "url"

    invoke-static {v5, v0, v2}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v3, :cond_2

    const-string v0, "location"

    invoke-static {v5, v0, v3}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v1, :cond_3

    const-string v0, "description"

    invoke-static {v5, v0, v1}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, v5, p1, v0}, Lcom/twitter/android/service/TwitterService;->a(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v1

    invoke-virtual {v1}, Lo;->a()Lo;

    move-result-object v9

    invoke-virtual {v9}, Lo;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    :try_start_0
    invoke-static {v0}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lbl;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Ldb;->a(Lbl;J)Lac;

    move-result-object v10

    const/4 v0, 0x0

    invoke-static {p0, v4, v10, v0}, Lcom/twitter/android/platform/f;->a(Landroid/content/Context;Ljava/lang/String;Lac;Lbv;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/twitter/android/provider/ab;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)V

    const-string v0, "user"

    invoke-virtual {p2, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    return-object v9

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v1, :cond_4

    const-string v1, "TwitterService"

    const-string v2, "updateProfile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private y(Lce;Landroid/content/Intent;)Lo;
    .locals 8

    const-wide/16 v3, 0x0

    const-string v0, "lat"

    invoke-virtual {p2, v0, v3, v4}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v0

    const-string v2, "long"

    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v2

    const-string v4, "accuracy"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "geo"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "reverse_geocode"

    aput-object v7, v5, v6

    const-string v6, "https://api.twitter.com/1"

    invoke-static {v6, v5}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "lat"

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v6, v0}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "long"

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_0

    const-string v0, "accuracy"

    invoke-static {v5, v0, v4}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, v5, p1, v0}, Lcom/twitter/android/service/TwitterService;->b(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v1

    invoke-virtual {v1}, Lo;->a()Lo;

    move-result-object v1

    invoke-virtual {v1}, Lo;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    :try_start_0
    invoke-static {v0}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lbl;

    move-result-object v0

    invoke-static {v0}, Ldb;->l(Lbl;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lal;

    const/4 v4, 0x3

    iget v5, p0, Lal;->a:I

    if-ne v4, v5, :cond_1

    iget-object v2, p0, Lal;->b:Ljava/lang/String;

    sget-boolean v3, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v3, :cond_2

    const-string v3, "TwitterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found city type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lal;

    const/4 v3, 0x4

    iget v4, p0, Lal;->a:I

    if-ne v3, v4, :cond_3

    iget-object v0, p0, Lal;->b:Ljava/lang/String;

    sget-boolean v2, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v2, :cond_4

    const-string v2, "TwitterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found admin type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    const-string v2, "place"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v2, :cond_5

    const-string v2, "TwitterService"

    const-string v3, "reverseGeo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_6
    move-object v0, v2

    goto :goto_0
.end method

.method private z(Lce;Landroid/content/Intent;)Lo;
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "account"

    aput-object v1, v0, v5

    const/4 v1, 0x1

    const-string v2, "verify_credentials"

    aput-object v2, v0, v1

    const-string v1, "https://api.twitter.com/1"

    invoke-static {v1, v0}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lcom/twitter/android/service/TwitterService;->b(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v0

    invoke-virtual {v0}, Lo;->a()Lo;

    move-result-object v0

    invoke-virtual {v0}, Lo;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {v1}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lbl;

    move-result-object v1

    const-string v2, "user"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Ldb;->a(Lbl;J)Lac;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    iput v5, v0, Lo;->c:I

    iput-object v1, v0, Lo;->e:Ljava/lang/Exception;

    goto :goto_0
.end method


# virtual methods
.method final a(I)V
    .locals 4

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->f:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/twitter/android/service/TwitterService;->stopSelf(I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method final a(Landroid/content/Intent;I)V
    .locals 28

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    sget-object v5, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    new-instance v6, Lce;

    const-string v7, "auth"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lab;

    invoke-direct {v6, v7}, Lce;-><init>(Lab;)V

    if-nez v5, :cond_5

    const/4 v5, 0x0

    move/from16 v18, v5

    :goto_1
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v16, 0x0

    packed-switch v18, :pswitch_data_0

    sget-boolean v5, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v5, :cond_1

    const-string v5, "TwitterService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v5, v16

    :cond_2
    :goto_2
    if-eqz v5, :cond_26

    iget v6, v5, Lo;->c:I

    iget-object v7, v5, Lo;->d:Ljava/lang/String;

    iget-object v8, v5, Lo;->f:Lak;

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;Lo;)V

    move-object v5, v8

    move-object/from16 v27, v7

    move v7, v6

    move-object/from16 v6, v27

    :goto_3
    sget-boolean v8, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v8, :cond_3

    const-string v8, "rid"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "TwitterService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Action complete: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v10, 0x20

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v10, 0x20

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v8, "ibinder"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "action_code"

    move-object/from16 v0, p1

    move-object v1, v8

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "resp_code"

    move-object/from16 v0, p1

    move-object v1, v8

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "reason_phrase"

    move-object/from16 v0, p1

    move-object v1, v7

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "rate_limit"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->g:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->g:Landroid/os/Handler;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v18, v5

    goto/16 :goto_1

    :pswitch_0
    new-instance v5, Lcom/twitter/android/platform/o;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/twitter/android/platform/o;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/content/SyncResult;

    invoke-direct {v10}, Landroid/content/SyncResult;-><init>()V

    const-string v6, "account"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/accounts/Account;

    const-string v7, "_data"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "com.twitter.android.provider.TwitterProvider"

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/twitter/android/platform/o;->onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V

    move-object/from16 v5, v16

    goto/16 :goto_2

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v5, v0

    const-string v6, "owner_id"

    const-wide/16 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v8, "i_type"

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v8

    move v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-wide/16 v9, -0x1

    invoke-virtual/range {v5 .. v10}, Lcom/twitter/android/provider/ab;->b(JIJ)V

    move-object/from16 v5, v16

    goto/16 :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/twitter/android/provider/ab;->b()V

    move-object/from16 v5, v16

    goto/16 :goto_2

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v5, v0

    const-string v6, "owner_id"

    const-wide/16 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/twitter/android/provider/ab;->f(J)V

    move-object/from16 v5, v16

    goto/16 :goto_2

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/twitter/android/provider/ab;->a()V

    const-string v5, "account"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/twitter/android/platform/f;->c(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v5, v16

    goto/16 :goto_2

    :pswitch_5
    const-string v5, "user_id"

    const-wide/16 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v5, "status_type"

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string v5, "max_id"

    const-wide/16 v10, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    const-string v5, "status_id"

    const-wide/16 v10, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    const-string v5, "since_id"

    const-wide/16 v10, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v5, "count"

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    move-object/from16 v5, p0

    move-object/from16 v17, p1

    invoke-direct/range {v5 .. v17}, Lcom/twitter/android/service/TwitterService;->a(Lce;JIJJJILandroid/content/Intent;)Lo;

    move-result-object v5

    goto/16 :goto_2

    :pswitch_6
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/service/TwitterService;->a(Lce;Landroid/content/Intent;)Lo;

    move-result-object v5

    goto/16 :goto_2

    :pswitch_7
    const-string v5, "status_id"

    const-wide/16 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v5, "impression_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "user_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    move-object v1, v7

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v7, v0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/twitter/android/provider/ab;->a(JJZ)V

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "favorites"

    aput-object v13, v7, v12

    const/4 v12, 0x1

    const-string v13, "destroy"

    aput-object v13, v7, v12

    const/4 v12, 0x2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v7, v12

    invoke-static {v7}, Laf;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, ".json"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_6

    const-string v12, "impression_id"

    invoke-static {v7, v12, v5}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v6

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/TwitterService;->a(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v5

    invoke-virtual {v5}, Lo;->a()Lo;

    move-result-object v5

    iget v6, v5, Lo;->c:I

    const/16 v7, 0xc8

    if-eq v6, v7, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v7, v0

    const/4 v12, 0x1

    invoke-virtual/range {v7 .. v12}, Lcom/twitter/android/provider/ab;->a(JJZ)V

    goto/16 :goto_2

    :pswitch_8
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/service/TwitterService;->b(Lce;Landroid/content/Intent;)Lo;

    move-result-object v5

    goto/16 :goto_2

    :pswitch_9
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/service/TwitterService;->c(Lce;Landroid/content/Intent;)Lo;

    move-result-object v5

    goto/16 :goto_2

    :pswitch_a
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/service/TwitterService;->e(Lce;Landroid/content/Intent;)Lo;

    move-result-object v5

    goto/16 :goto_2

    :pswitch_b
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/service/TwitterService;->f(Lce;Landroid/content/Intent;)Lo;

    move-result-object v5

    goto/16 :goto_2

    :pswitch_c
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/service/TwitterService;->g(Lce;Landroid/content/Intent;)Lo;

    move-result-object v5

    goto/16 :goto_2

    :pswitch_d
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/service/TwitterService;->h(Lce;Landroid/content/Intent;)Lo;

    move-result-object v5

    goto/16 :goto_2

    :pswitch_e
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/service/TwitterService;->i(Lce;Landroid/content/Intent;)Lo;

    move-result-object v5

    goto/16 :goto_2

    :pswitch_f
    const-string v5, "user_id"

    const-wide/16 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v5, "max_id"

    const-wide/16 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    const-string v5, "since_id"

    const-wide/16 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    const-string v5, "count"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    const/16 v5, 0x10

    move/from16 v0, v18

    move v1, v5

    if-ne v0, v1, :cond_7

    const/4 v8, 0x1

    move-object/from16 v7, p0

    move-object v9, v6

    move-object/from16 v17, p1

    invoke-direct/range {v7 .. v17}, Lcom/twitter/android/service/TwitterService;->a(ILce;JJJILandroid/content/Intent;)Lo;

    move-result-object v5

    goto/16 :goto_2

    :cond_7
    const/4 v8, 0x0

    const/16 v17, 0x0

    move-object/from16 v7, p0

    move-object v9, v6

    invoke-direct/range {v7 .. v17}, Lcom/twitter/android/service/TwitterService;->a(ILce;JJJILandroid/content/Intent;)Lo;

    move-result-object v5

    goto/16 :goto_2

    :pswitch_10
    const-string v5, "user_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v7, "unread_tweet"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v5, v6, v9}, Lcom/twitter/android/provider/ab;->d(JI)I

    move-result v8

    move-object/from16 v0, p1

    move-object v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "unread_mention"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v8, v0

    const/4 v9, 0x5

    invoke-virtual {v8, v5, v6, v9}, Lcom/twitter/android/provider/ab;->d(JI)I

    move-result v5

    move-object/from16 v0, p1

    move-object v1, v7

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "unread_dm"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/twitter/android/provider/ab;->c()I

    move-result v6

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v5, v16

    goto/16 :goto_2

    :pswitch_11
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/service/TwitterService;->j(Lce;Landroid/content/Intent;)Lo;

    move-result-object v5

    goto/16 :goto_2

    :pswitch_12
    const-string v5, "message_id"

    const-wide/16 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v7

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/android/service/TwitterService;->a(Lce;JZ)Lo;

    move-result-object v5

    goto/16 :goto_2

    :pswitch_13
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/service/TwitterService;->k(Lce;Landroid/content/Intent;)Lo;

    move-result-object v5

    goto/16 :goto_2

    :pswitch_14
    const-string v5, "owner_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v7, "user_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    move-object v1, v7

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    move-object/from16 v0, p0

    move-wide v1, v5

    move-wide v3, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/android/service/TwitterService;->a(JJ)Lo;

    move-result-object v5

    goto/16 :goto_2

    :pswitch_15
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/service/TwitterService;->l(Lce;Landroid/content/Intent;)Lo;

    move-result-object v5

    goto/16 :goto_2

    :pswitch_16
    const-string v5, "owner_id"

    const-wide/16 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v5, "android.intent.extra.TEXT"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "_data"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v11

    check-cast v11, Laz;

    const-string v5, "i_type"

    const/4 v10, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    move-object/from16 v5, p0

    move-object/from16 v12, p1

    invoke-direct/range {v5 .. v12}, Lcom/twitter/android/service/TwitterService;->a(Lce;JLjava/lang/String;ILaz;Landroid/content/Intent;)Lo;

    move-result-object v5

    goto/16 :goto_2

    :pswitch_17
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/service/TwitterService;->m(Lce;Landroid/content/Intent;)Lo;

    move-result-object v5

    goto/16 :goto_2

    :pswitch_18
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/service/TwitterService;->n(Lce;Landroid/content/Intent;)Lo;

    move-result-object v5

    goto/16 :goto_2

    :pswitch_19
    const/16 v5, 0x1c

    move/from16 v0, v18

    move v1, v5

    if-ne v0, v1, :cond_8

    const/4 v5, 0x1

    :goto_4
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/TwitterService;->a(Lce;Landroid/content/Intent;Z)Lo;

    move-result-object v5

    goto/16 :goto_2

    :cond_8
    const/4 v5, 0x0

    goto :goto_4

    :pswitch_1a
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/service/TwitterService;->o(Lce;Landroid/content/Intent;)Lo;

    move-result-object v5

    goto/16 :goto_2

    :pswitch_1b
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/service/TwitterService;->p(Lce;Landroid/content/Intent;)Lo;

    move-result-object v5

    goto/16 :goto_2

    :pswitch_1c
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/service/TwitterService;->q(Lce;Landroid/content/Intent;)Lo;

    move-result-object v5

    goto/16 :goto_2

    :pswitch_1d
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/service/TwitterService;->r(Lce;Landroid/content/Intent;)Lo;

    move-result-object v5

    goto/16 :goto_2

    :pswitch_1e
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/service/TwitterService;->s(Lce;Landroid/content/Intent;)Lo;

    move-result-object v5

    goto/16 :goto_2

    :pswitch_1f
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/service/TwitterService;->t(Lce;Landroid/content/Intent;)Lo;

    move-result-object v5

    goto/16 :goto_2

    :pswitch_20
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/service/TwitterService;->u(Lce;Landroid/content/Intent;)Lo;

    move-result-object v5

    goto/16 :goto_2

    :pswitch_21
    const-string v5, "owner_id"

    const-wide/16 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v5, "user_id"

    const-wide/16 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    const-string v5, "list_id"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    const-string v5, "user_type"

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown user type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_22
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v13

    const/4 v7, 0x1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x2

    const-string v8, "members"

    aput-object v8, v5, v7

    const/4 v7, 0x3

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v5}, Laf;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    :goto_5
    const-string v7, ".json"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/TwitterService;->b(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v5

    invoke-virtual {v5}, Lo;->a()Lo;

    move-result-object v5

    invoke-virtual {v5}, Lo;->b()Z

    move-result v6

    if-eqz v6, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v11, v12, v7}, Lcom/twitter/android/provider/ab;->b(JZ)V

    goto/16 :goto_2

    :pswitch_23
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v13

    const/4 v7, 0x1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x2

    const-string v8, "subscribers"

    aput-object v8, v5, v7

    const/4 v7, 0x3

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v5}, Laf;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    goto :goto_5

    :cond_9
    iget v6, v5, Lo;->c:I

    const/16 v7, 0x194

    if-ne v6, v7, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v11, v12, v7}, Lcom/twitter/android/provider/ab;->b(JZ)V

    goto/16 :goto_2

    :pswitch_24
    const-string v5, "locale"

    const-wide/16 v7, 0x1

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/TwitterService;->a(Lce;J)Lo;

    move-result-object v5

    goto/16 :goto_2

    :pswitch_25
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/service/TwitterService;->v(Lce;Landroid/content/Intent;)Lo;

    move-result-object v5

    goto/16 :goto_2

    :pswitch_26
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/service/TwitterService;->w(Lce;Landroid/content/Intent;)Lo;

    move-result-object v5

    goto/16 :goto_2

    :pswitch_27
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/service/TwitterService;->x(Lce;Landroid/content/Intent;)Lo;

    move-result-object v5

    goto/16 :goto_2

    :pswitch_28
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/service/TwitterService;->y(Lce;Landroid/content/Intent;)Lo;

    move-result-object v5

    goto/16 :goto_2

    :pswitch_29
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/service/TwitterService;->z(Lce;Landroid/content/Intent;)Lo;

    move-result-object v5

    goto/16 :goto_2

    :pswitch_2a
    const-string v5, "screen_name"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "pass"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "https://api.twitter.com"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/oauth/access_token"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x_auth_mode"

    const-string v9, "client_auth"

    invoke-static {v7, v8, v9}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "x_auth_password"

    invoke-static {v7, v8, v6}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "x_auth_username"

    invoke-static {v7, v6, v5}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v8, Lce;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lce;-><init>(Lab;)V

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/TwitterService;->a(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v7

    invoke-virtual {v7}, Lo;->a()Lo;

    move-result-object v7

    invoke-virtual {v7}, Lo;->b()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-static {v6}, Lcom/twitter/android/service/TwitterService;->a(Ljava/io/ByteArrayOutputStream;)Lab;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/twitter/android/platform/f;->b(Landroid/content/Context;Ljava/lang/String;)V

    const-string v5, "auth"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v5, Lce;

    invoke-direct {v5, v6}, Lce;-><init>(Lab;)V

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/service/TwitterService;->z(Lce;Landroid/content/Intent;)Lo;

    move-result-object v5

    goto/16 :goto_2

    :cond_a
    move-object v5, v7

    goto/16 :goto_2

    :pswitch_2b
    const-string v5, "log_ev"

    const/4 v7, -0x1

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const/4 v5, -0x1

    if-eq v7, v5, :cond_1

    const-string v5, "impression_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "trend_id"

    const-wide/16 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/twitter/android/service/TwitterService;->a(Lce;ILjava/lang/String;J)V

    move-object/from16 v5, v16

    goto/16 :goto_2

    :pswitch_2c
    const-string v5, "max_id"

    const-wide/16 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v5, "since_id"

    const-wide/16 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v5, "count"

    const/16 v7, 0x64

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const-string v5, "user"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lac;

    move-object/from16 v5, p0

    move-object/from16 v13, p1

    invoke-direct/range {v5 .. v13}, Lcom/twitter/android/service/TwitterService;->a(Lce;Lac;JJILandroid/content/Intent;)Lo;

    move-result-object v5

    goto/16 :goto_2

    :pswitch_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v5, v0

    const-string v6, "status_id"

    const-wide/16 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v8, "android.intent.extra.TEXT"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "owner_id"

    const-wide/16 v10, 0x0

    move-object/from16 v0, p1

    move-object v1, v9

    move-wide v2, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    const-string v11, "android.intent.extra.UID"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    move-object v1, v11

    move-wide v2, v12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    const-string v13, "_data"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v13

    check-cast v13, Laz;

    invoke-virtual/range {v5 .. v13}, Lcom/twitter/android/provider/ab;->a(JLjava/lang/String;JJLaz;)J

    move-object/from16 v5, v16

    goto/16 :goto_2

    :pswitch_2e
    const-string v5, "status_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v7, "owner_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    move-object v1, v7

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v9, v0

    const/4 v10, 0x1

    new-array v10, v10, [J

    const/4 v11, 0x0

    aput-wide v5, v10, v11

    invoke-virtual {v9, v10, v7, v8}, Lcom/twitter/android/provider/ab;->a([JJ)I

    move-object/from16 v5, v16

    goto/16 :goto_2

    :pswitch_2f
    const-string v5, "owner_id"

    const-wide/16 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v13

    const-string v5, "i_type"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/service/TwitterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v5, Lcom/twitter/android/provider/ai;->l:Landroid/net/Uri;

    invoke-static {v5, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    const/4 v5, 0x3

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "g_status_id"

    aput-object v10, v9, v5

    const/4 v5, 0x1

    const-string v10, "content"

    aput-object v10, v9, v5

    const/4 v5, 0x2

    const-string v10, "entities"

    aput-object v10, v9, v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "updated_at ASC"

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    if-eqz v17, :cond_1

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v5

    move v0, v5

    new-array v0, v0, [J

    move-object/from16 v22, v0

    :goto_6
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    const/4 v7, 0x0

    move-object/from16 v0, v17

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    aput-wide v7, v22, v5

    const/4 v5, 0x1

    move-object/from16 v0, v17

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v5, 0x2

    move-object/from16 v0, v17

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-static {v5}, Laz;->a([B)Laz;

    move-result-object v11

    move-object/from16 v5, p0

    move-wide v7, v13

    move v10, v15

    move-object/from16 v12, p1

    invoke-direct/range {v5 .. v12}, Lcom/twitter/android/service/TwitterService;->a(Lce;JLjava/lang/String;ILaz;Landroid/content/Intent;)Lo;

    goto :goto_6

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v22

    move-wide v2, v13

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/provider/ab;->a([JJ)I

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    move-object/from16 v5, v16

    goto/16 :goto_2

    :pswitch_30
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "saved_searches"

    aput-object v8, v5, v7

    invoke-static {v5}, Laf;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ".json"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/TwitterService;->b(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v5

    invoke-virtual {v5}, Lo;->a()Lo;

    move-result-object v5

    invoke-virtual {v5}, Lo;->b()Z

    move-result v6

    if-eqz v6, :cond_2

    :try_start_0
    invoke-static {v7}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lbl;

    move-result-object v6

    invoke-static {v6}, Ldb;->n(Lbl;)Ljava/util/ArrayList;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v7, v0

    const/4 v8, 0x6

    invoke-virtual {v7, v6, v8}, Lcom/twitter/android/provider/ab;->a(Ljava/util/ArrayList;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v6

    sget-boolean v7, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v7, :cond_2

    const-string v7, "TwitterService"

    const-string v8, "getSavedSearches"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :pswitch_31
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "users"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "suggestions"

    aput-object v7, v5, v6

    invoke-static {v5}, Laf;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "lang"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "locale"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_c

    if-eqz v7, :cond_c

    const-string v8, "lang"

    invoke-static {v5, v8, v6}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "country"

    invoke-static {v5, v6, v7}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "localize"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    :cond_c
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v7, Lce;->a:Lce;

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v7

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/TwitterService;->b(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v5

    invoke-virtual {v5}, Lo;->a()Lo;

    move-result-object v5

    invoke-virtual {v5}, Lo;->b()Z

    move-result v7

    if-eqz v7, :cond_2

    :try_start_1
    invoke-static {v6}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lbl;

    move-result-object v6

    invoke-static {v6}, Ldb;->p(Lbl;)Ljava/util/ArrayList;

    move-result-object v6

    const-string v7, "count"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v8, v0

    const/4 v9, 0x7

    invoke-virtual {v8, v6, v9}, Lcom/twitter/android/provider/ab;->a(Ljava/util/ArrayList;I)I

    move-result v6

    move-object/from16 v0, p1

    move-object v1, v7

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v6

    sget-boolean v7, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v7, :cond_2

    const-string v7, "TwitterService"

    const-string v8, "Parsing suggestions"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :pswitch_32
    const-string v5, "q"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "users"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "suggestions"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v5, v6, v7

    invoke-static {v6}, Laf;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v7, Lce;->a:Lce;

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v7

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/TwitterService;->b(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v5

    invoke-virtual {v5}, Lo;->a()Lo;

    move-result-object v14

    invoke-virtual {v14}, Lo;->b()Z

    move-result v5

    if-eqz v5, :cond_2a

    :try_start_2
    invoke-static {v6}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lbl;

    move-result-object v5

    invoke-static {v5}, Ldb;->q(Lbl;)Ljava/util/ArrayList;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v5, v0

    const-string v7, "owner_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    move-object v1, v7

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const/4 v9, 0x6

    const-string v10, "list_id"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    move-object v1, v10

    move-wide v2, v11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v12, "-1"

    const-string v13, "0"

    invoke-virtual/range {v5 .. v13}, Lcom/twitter/android/provider/ab;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v5, v14

    goto/16 :goto_2

    :catch_2
    move-exception v5

    sget-boolean v6, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v6, :cond_d

    const-string v6, "TwitterService"

    const-string v7, "Parse slug users"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d
    move-object v5, v14

    goto/16 :goto_2

    :pswitch_33
    const-string v5, "screen_name"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "q"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const/4 v5, 0x1

    const-string v8, "lists"

    aput-object v8, v7, v5

    const/4 v5, 0x2

    aput-object v6, v7, v5

    invoke-static {v7}, Laf;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v7, Lce;->a:Lce;

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v7

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/TwitterService;->b(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v5

    invoke-virtual {v5}, Lo;->a()Lo;

    move-result-object v5

    invoke-virtual {v5}, Lo;->b()Z

    move-result v7

    if-eqz v7, :cond_2

    :try_start_3
    invoke-static {v6}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lbl;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ldb;->b(Lbl;I)Lcm;

    move-result-object v6

    const-string v7, "list_id"

    invoke-virtual {v6}, Lcm;->a()J

    move-result-wide v8

    move-object/from16 v0, p1

    move-object v1, v7

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v7, "owner_id"

    invoke-virtual {v6}, Lcm;->h()Lac;

    move-result-object v6

    iget-wide v8, v6, Lac;->a:J

    move-object/from16 v0, p1

    move-object v1, v7

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v6

    goto/16 :goto_2

    :pswitch_34
    const-string v5, "owner_id"

    const-wide/16 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    const-string v5, "email"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const-string v7, "phone"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    if-eqz v5, :cond_f

    array-length v7, v5

    :goto_7
    if-eqz v17, :cond_10

    move-object/from16 v0, v17

    array-length v0, v0

    move v8, v0

    :goto_8
    add-int/2addr v8, v7

    const/16 v11, 0x64

    invoke-static {v8, v11}, Laf;->a(II)I

    move-result v22

    const/4 v8, 0x0

    const/4 v11, 0x0

    move/from16 v23, v11

    move/from16 v27, v7

    move v7, v8

    move/from16 v8, v27

    :goto_9
    move/from16 v0, v23

    move/from16 v1, v22

    if-ge v0, v1, :cond_11

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "users"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, "lookup"

    aput-object v13, v11, v12

    invoke-static {v11}, Laf;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".json"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x64

    if-lez v8, :cond_29

    const/16 v12, 0x64

    const/16 v13, 0x64

    invoke-static {v8, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    sub-int/2addr v12, v13

    const-string v13, "email"

    mul-int/lit8 v14, v23, 0x64

    const/16 v15, 0x64

    invoke-static {v11, v13, v5, v14, v15}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;II)I

    move-result v13

    sub-int/2addr v8, v13

    move/from16 v24, v8

    move v8, v12

    :goto_a
    if-lez v8, :cond_28

    const-string v12, "phone"

    move-object v0, v11

    move-object v1, v12

    move-object/from16 v2, v17

    move v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;II)I

    move-result v8

    add-int/2addr v7, v8

    move/from16 v25, v7

    :goto_b
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v6

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/TwitterService;->b(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v8

    invoke-virtual {v8}, Lo;->a()Lo;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lo;->b()Z

    move-result v8

    if-eqz v8, :cond_e

    :try_start_4
    invoke-static {v7}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lbl;

    move-result-object v7

    invoke-static {v7}, Ldb;->b(Lbl;)Ljava/util/ArrayList;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v7, v0

    const/4 v11, 0x7

    const-wide/16 v12, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v7 .. v15}, Lcom/twitter/android/provider/ab;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_e
    :goto_c
    add-int/lit8 v7, v23, 0x1

    move/from16 v8, v24

    move/from16 v23, v7

    move/from16 v7, v25

    goto :goto_9

    :cond_f
    const/4 v7, 0x0

    goto/16 :goto_7

    :cond_10
    const/4 v8, 0x0

    goto/16 :goto_8

    :catch_4
    move-exception v7

    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, v26

    iput v0, v1, Lo;->c:I

    move-object v0, v7

    move-object/from16 v1, v26

    iput-object v0, v1, Lo;->e:Ljava/lang/Exception;

    goto :goto_c

    :cond_11
    move-object/from16 v5, v16

    goto/16 :goto_2

    :pswitch_35
    const-string v5, "name"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "screen_name"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "email"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "pass"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "q_name"

    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "q"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "lang"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "name"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v12, "email"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v12, "screen_name"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v12, "pass"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v12, "q_name"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v12, "q"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v12, "lang"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v12, "https://mobile.twitter.com/mobile_client_api"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "signup"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz v5, :cond_12

    const-string v13, "fullname"

    invoke-static {v12, v13, v5}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    if-eqz v6, :cond_13

    const-string v5, "screen_name"

    invoke-static {v12, v5, v6}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    if-eqz v7, :cond_14

    const-string v5, "email"

    invoke-static {v12, v5, v7}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    if-eqz v8, :cond_15

    const-string v5, "password"

    invoke-static {v12, v5, v8}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    if-eqz v11, :cond_16

    const-string v5, "lang"

    invoke-static {v12, v5, v11}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    if-eqz v9, :cond_17

    if-eqz v10, :cond_17

    const-string v5, "captcha_token"

    invoke-static {v12, v5, v9}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "captcha_solution"

    invoke-static {v12, v5, v10}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v6, Lce;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lce;-><init>(Lab;)V

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v6

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/TwitterService;->a(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v6

    sget-object v7, Lo;->a:Ljava/lang/String;

    sget-object v8, Lo;->b:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lo;->a(Ljava/lang/String;Ljava/lang/String;)Lo;

    invoke-virtual {v6}, Lo;->b()Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->a(Ljava/io/ByteArrayOutputStream;)Lab;

    move-result-object v5

    const-string v7, "auth"

    move-object/from16 v0, p1

    move-object v1, v7

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v7, Lce;

    invoke-direct {v7, v5}, Lce;-><init>(Lab;)V

    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/service/TwitterService;->z(Lce;Landroid/content/Intent;)Lo;

    move-result-object v5

    invoke-virtual {v5}, Lo;->b()Z

    move-result v5

    if-nez v5, :cond_18

    const/16 v5, 0x190

    iput v5, v6, Lo;->c:I

    :cond_18
    move-object v5, v6

    goto/16 :goto_2

    :cond_19
    iget v7, v6, Lo;->c:I

    const/16 v8, 0x193

    if-ne v7, v8, :cond_1e

    new-instance v7, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/lang/String;-><init>([B)V

    :try_start_5
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "fullname"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1a

    const-string v7, "fullname"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_1a

    const-string v8, "name"

    sget-object v9, Lg;->a:Lg;

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Lg;->a(Ljava/lang/String;)Ldj;

    move-result-object v7

    iget-object v7, v7, Ldj;->a:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1a
    const-string v7, "email"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b

    const-string v7, "email"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_1b

    const-string v8, "email"

    sget-object v9, Lg;->a:Lg;

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Lg;->a(Ljava/lang/String;)Ldj;

    move-result-object v7

    iget-object v7, v7, Ldj;->a:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1b
    const-string v7, "screen_name"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1c

    const-string v7, "screen_name"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_1c

    const-string v8, "screen_name"

    sget-object v9, Lg;->a:Lg;

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Lg;->a(Ljava/lang/String;)Ldj;

    move-result-object v7

    iget-object v7, v7, Ldj;->a:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1c
    const-string v7, "password"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1d

    const-string v7, "password"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_1d

    const-string v7, "pass"

    sget-object v8, Lg;->a:Lg;

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lg;->a(Ljava/lang/String;)Ldj;

    move-result-object v5

    iget-object v5, v5, Ldj;->a:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v7

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_1d
    move-object v5, v6

    goto/16 :goto_2

    :catch_5
    move-exception v5

    const/4 v7, 0x0

    iput v7, v6, Lo;->c:I

    iput-object v5, v6, Lo;->e:Ljava/lang/Exception;

    move-object v5, v6

    goto/16 :goto_2

    :cond_1e
    iget v7, v6, Lo;->c:I

    const/16 v8, 0x19c

    if-ne v7, v8, :cond_27

    new-instance v7, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/lang/String;-><init>([B)V

    :try_start_6
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "captcha_token"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1f

    const-string v7, "captcha_image_url"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1f

    const-string v7, "q_name"

    const-string v8, "captcha_token"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "q"

    const-string v8, "captcha_image_url"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v7

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v5, v6

    goto/16 :goto_2

    :cond_1f
    const/4 v5, 0x0

    iput v5, v6, Lo;->c:I
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    move-object v5, v6

    goto/16 :goto_2

    :catch_6
    move-exception v5

    const/4 v7, 0x0

    iput v7, v6, Lo;->c:I

    iput-object v5, v6, Lo;->e:Ljava/lang/Exception;

    move-object v5, v6

    goto/16 :goto_2

    :pswitch_36
    const-string v5, "user_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v5

    array-length v7, v5

    const/16 v8, 0x64

    invoke-static {v7, v8}, Laf;->a(II)I

    move-result v7

    const/4 v8, 0x0

    :goto_d
    if-ge v8, v7, :cond_21

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "friendships"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "create_all"

    aput-object v11, v9, v10

    invoke-static {v9}, Laf;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".json"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "user_id"

    mul-int/lit8 v11, v8, 0x64

    const/16 v12, 0x64

    invoke-static {v9, v10, v5, v11, v12}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;[JII)V

    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v6

    move-object v3, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/TwitterService;->a(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v9

    invoke-virtual {v9}, Lo;->a()Lo;

    move-result-object v9

    invoke-virtual {v9}, Lo;->b()Z

    move-result v9

    if-eqz v9, :cond_20

    :try_start_7
    invoke-static {v10}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lbl;

    move-result-object v9

    invoke-static {v9}, Ldb;->r(Lbl;)Ljava/util/ArrayList;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v10, v0

    const/4 v11, 0x1

    invoke-virtual {v10, v9, v11}, Lcom/twitter/android/provider/ab;->a(Ljava/util/ArrayList;Z)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    :cond_20
    :goto_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_21
    move-object/from16 v5, v16

    goto/16 :goto_2

    :pswitch_37
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/service/TwitterService;->d(Lce;Landroid/content/Intent;)Lo;

    move-result-object v5

    goto/16 :goto_2

    :pswitch_38
    const/16 v5, 0x3a

    move/from16 v0, v18

    move v1, v5

    if-ne v0, v1, :cond_22

    const/4 v5, 0x1

    :goto_f
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "account"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "settings"

    aput-object v9, v7, v8

    invoke-static {v7}, Laf;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".json"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/io/ByteArrayOutputStream;

    const/16 v9, 0x200

    invoke-direct {v8, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    if-eqz v5, :cond_23

    const-string v5, "geo_enabled"

    const-string v9, "geo"

    const/4 v10, 0x1

    move-object/from16 v0, p1

    move-object v1, v9

    move v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v7, v5, v9}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v6

    move-object v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/TwitterService;->a(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v5

    invoke-virtual {v5}, Lo;->a()Lo;

    move-result-object v5

    :goto_10
    invoke-virtual {v5}, Lo;->b()Z

    move-result v6

    if-eqz v6, :cond_2

    :try_start_8
    invoke-static {v8}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lbl;

    move-result-object v6

    const-string v7, "settings"

    invoke-static {v6}, Lbv;->a(Lbl;)Lbv;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v7

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto/16 :goto_2

    :catch_7
    move-exception v6

    const/4 v7, 0x0

    iput v7, v5, Lo;->c:I

    iput-object v6, v5, Lo;->e:Ljava/lang/Exception;

    goto/16 :goto_2

    :cond_22
    const/4 v5, 0x0

    goto :goto_f

    :cond_23
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v6

    move-object v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/TwitterService;->b(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v5

    invoke-virtual {v5}, Lo;->a()Lo;

    move-result-object v5

    goto :goto_10

    :pswitch_39
    const-string v5, "message_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v5

    if-eqz v5, :cond_1

    array-length v7, v5

    const/4 v8, 0x0

    :goto_11
    if-ge v8, v7, :cond_24

    aget-wide v9, v5, v8

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v9

    move v4, v11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/android/service/TwitterService;->a(Lce;JZ)Lo;

    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v6, v0

    invoke-virtual {v6, v5}, Lcom/twitter/android/provider/ab;->a([J)I

    move-object/from16 v5, v16

    goto/16 :goto_2

    :pswitch_3a
    const-string v5, "https://mobile.twitter.com/mobile_client_api"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "decider"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "android"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v7, Lce;->a:Lce;

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v7

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/TwitterService;->b(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v5

    invoke-virtual {v5}, Lo;->a()Lo;

    move-result-object v5

    invoke-virtual {v5}, Lo;->b()Z

    move-result v7

    if-eqz v7, :cond_2

    :try_start_9
    invoke-static {v6}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lbl;

    move-result-object v6

    const-string v7, "settings"

    invoke-static {v6}, Ldb;->s(Lbl;)Lau;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v7

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto/16 :goto_2

    :catch_8
    move-exception v6

    const/4 v7, 0x0

    iput v7, v5, Lo;->c:I

    iput-object v6, v5, Lo;->e:Ljava/lang/Exception;

    goto/16 :goto_2

    :pswitch_3b
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "saved_searches"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    const-string v8, "create"

    aput-object v8, v5, v7

    invoke-static {v5}, Laf;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ".json"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "q"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "query"

    invoke-static {v5, v8, v7}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/TwitterService;->a(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v5

    invoke-virtual {v5}, Lo;->a()Lo;

    move-result-object v5

    invoke-virtual {v5}, Lo;->b()Z

    move-result v6

    if-eqz v6, :cond_2

    :try_start_a
    invoke-static {v7}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lbl;

    move-result-object v6

    invoke-static {v6}, Ldb;->o(Lbl;)Lda;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v6, v0

    const/4 v8, 0x6

    invoke-virtual {v6, v7, v8}, Lcom/twitter/android/provider/ab;->a(Ljava/util/ArrayList;I)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    goto/16 :goto_2

    :catch_9
    move-exception v6

    const/4 v7, 0x0

    iput v7, v5, Lo;->c:I

    iput-object v6, v5, Lo;->e:Ljava/lang/Exception;

    goto/16 :goto_2

    :pswitch_3c
    const-string v5, "q"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v7, v0

    const/4 v8, 0x6

    invoke-virtual {v7, v5, v8}, Lcom/twitter/android/provider/ab;->a(Ljava/lang/String;I)J

    move-result-wide v7

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "saved_searches"

    aput-object v10, v5, v9

    const/4 v9, 0x1

    const-string v10, "destroy"

    aput-object v10, v5, v9

    const/4 v9, 0x2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v5, v9

    invoke-static {v5}, Laf;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ".json"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object v3, v9

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/TwitterService;->a(Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v5

    invoke-virtual {v5}, Lo;->a()Lo;

    move-result-object v5

    iget v6, v5, Lo;->c:I

    const/16 v9, 0xc8

    if-eq v6, v9, :cond_25

    iget v6, v5, Lo;->c:I

    const/16 v9, 0x194

    if-ne v6, v9, :cond_2

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    move-object v6, v0

    invoke-virtual {v6, v7, v8}, Lcom/twitter/android/provider/ab;->b(J)I

    goto/16 :goto_2

    :catch_a
    move-exception v9

    goto/16 :goto_e

    :cond_26
    move-object/from16 v5, v21

    move-object/from16 v6, v20

    move/from16 v7, v19

    goto/16 :goto_3

    :cond_27
    move-object v5, v6

    goto/16 :goto_2

    :cond_28
    move/from16 v25, v7

    goto/16 :goto_b

    :cond_29
    move/from16 v24, v8

    move v8, v12

    goto/16 :goto_a

    :cond_2a
    move-object v5, v14

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_22
        :pswitch_23
    .end packed-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x32

    const/high16 v2, 0x42480000    # 50.0f

    invoke-direct {v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IF)V

    iput-object v0, p0, Lcom/twitter/android/service/TwitterService;->f:Ljava/util/LinkedHashMap;

    invoke-static {p0}, Lcom/twitter/android/provider/ab;->a(Landroid/content/Context;)Lcom/twitter/android/provider/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/service/TwitterService;->e:Lcom/twitter/android/provider/ab;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/twitter/android/service/c;

    invoke-direct {v1, p0, p1, p3}, Lcom/twitter/android/service/c;-><init>(Lcom/twitter/android/service/TwitterService;Landroid/content/Intent;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->f:Ljava/util/LinkedHashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    return v0
.end method
