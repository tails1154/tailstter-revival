.class public final Lcom/twitter/android/platform/o;
.super Landroid/content/AbstractThreadedSyncAdapter;


# static fields
.field private static final a:Z


# instance fields
.field private final b:Lcom/twitter/android/provider/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "TwitterDataSync"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/twitter/android/platform/o;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    invoke-static {p1}, Lcom/twitter/android/provider/ab;->a(Landroid/content/Context;)Lcom/twitter/android/provider/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/platform/o;->b:Lcom/twitter/android/provider/ab;

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;
    .locals 3

    new-instance v0, Lo;

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p2, p3}, Lo;-><init>(Lorg/apache/http/client/methods/HttpRequestBase;Lce;Ljava/io/OutputStream;)V

    invoke-static {p0, v0}, Laf;->a(Landroid/content/Context;Lo;)V

    invoke-static {v0}, Laf;->a(Lo;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;Lab;Lac;ILandroid/content/SyncResult;)V
    .locals 9

    sget-boolean v0, Lcom/twitter/android/platform/o;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "TwitterDataSync"

    const-string v1, "=====> Sync direct messages"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-wide v3, p3, Lac;->a:J

    iget-object v0, p0, Lcom/twitter/android/platform/o;->b:Lcom/twitter/android/provider/ab;

    const/4 v1, 0x4

    const/4 v5, 0x1

    move v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/provider/ab;->a(IIJI)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/twitter/android/platform/o;->b:Lcom/twitter/android/provider/ab;

    invoke-virtual {v0, p4}, Lcom/twitter/android/provider/ab;->a(I)J

    move-result-wide v0

    const/16 v2, 0x64

    :goto_0
    if-nez p4, :cond_8

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "direct_messages"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "sent"

    aput-object v7, v5, v6

    const-string v6, "https://api.twitter.com/1"

    invoke-static {v6, v5}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    const-string v6, "since_id"

    invoke-static {v5, v6, v0, v1}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_1
    if-lez v2, :cond_2

    const-string v6, "count"

    invoke-static {v5, v6, v2}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_2
    const-string v2, "include_entities"

    const/4 v6, 0x1

    invoke-static {v5, v2, v6}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v6, Lce;

    invoke-direct {v6, p2}, Lce;-><init>(Lab;)V

    invoke-static {p1, v5, v6, v2}, Lcom/twitter/android/platform/o;->a(Landroid/content/Context;Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v5

    invoke-virtual {v5}, Lo;->a()Lo;

    move-result-object v5

    iget v6, v5, Lo;->c:I

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_a

    sget-object v5, Ldb;->a:Ldp;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v5, v2}, Ldp;->a([B)Lbl;

    move-result-object v2

    invoke-virtual {v2}, Lbl;->g()Lcg;

    invoke-static {v2}, Ldb;->e(Lbl;)Ljava/util/ArrayList;

    move-result-object v2

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-nez v0, :cond_9

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lch;

    iget-wide v0, p2, Lch;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    :goto_2
    invoke-static {p1}, Lcom/twitter/android/provider/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/twitter/android/platform/o;->b:Lcom/twitter/android/provider/ab;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, p4

    invoke-virtual/range {v1 .. v8}, Lcom/twitter/android/provider/ab;->a(Ljava/util/List;JIZZLjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne p4, v1, :cond_5

    iget-object v1, p0, Lcom/twitter/android/platform/o;->b:Lcom/twitter/android/provider/ab;

    invoke-virtual {v1}, Lcom/twitter/android/provider/ab;->c()I

    move-result v1

    if-lez v0, :cond_5

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lch;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.twitter.android.poll.messages"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "type"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "new"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "unread"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "sample"

    iget-object v3, p0, Lch;->b:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lch;->e:Lac;

    if-eqz v1, :cond_3

    const-string v1, "owner_id"

    iget-object v3, p0, Lch;->e:Lac;

    iget-wide v3, v3, Lac;->a:J

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_3
    iget-object v1, p0, Lch;->d:Lac;

    if-eqz v1, :cond_4

    const-string v1, "sender_id"

    iget-object v3, p0, Lch;->d:Lac;

    iget-wide v3, v3, Lac;->a:J

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "sender"

    iget-object v3, p0, Lch;->d:Lac;

    iget-object v3, v3, Lac;->f:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_5
    sget-boolean v1, Lcom/twitter/android/platform/o;->a:Z

    if-eqz v1, :cond_6

    const-string v1, "TwitterDataSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "====> Sync direct messages, got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lz; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_6
    :goto_3
    return-void

    :cond_7
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "direct_messages"

    aput-object v7, v5, v6

    const-string v6, "https://api.twitter.com/1"

    invoke-static {v6, v5}, Laf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    goto/16 :goto_1

    :cond_9
    const/4 v0, 0x0

    move-object v8, v0

    goto/16 :goto_2

    :cond_a
    :try_start_1
    iget v0, v5, Lo;->c:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_b

    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numAuthExceptions:J
    :try_end_1
    .catch Lz; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_0
    move-exception v0

    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numParseExceptions:J

    goto :goto_3

    :cond_b
    :try_start_2
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_2
    .catch Lz; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    goto :goto_3
.end method

.method private a(Landroid/content/Context;Landroid/accounts/Account;Lab;Lac;ILandroid/content/SyncResult;)V
    .locals 17

    sget-boolean v4, Lcom/twitter/android/platform/o;->a:Z

    if-eqz v4, :cond_0

    const-string v4, "TwitterDataSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "=====> Sync statuses of type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p4

    iget-wide v0, v0, Lac;->a:J

    move-wide v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/platform/o;->b:Lcom/twitter/android/provider/ab;

    move-object v4, v0

    const/4 v5, 0x3

    const/4 v9, 0x1

    move/from16 v6, p5

    invoke-virtual/range {v4 .. v9}, Lcom/twitter/android/provider/ab;->a(IIJI)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/platform/o;->b:Lcom/twitter/android/provider/ab;

    move-object v4, v0

    move-object v0, v4

    move-wide v1, v7

    move/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/provider/ab;->b(JI)J

    move-result-wide v4

    const/16 v6, 0x64

    :goto_0
    sget-boolean v9, Lcom/twitter/android/platform/o;->a:Z

    if-eqz v9, :cond_1

    const-string v9, "TwitterDataSync"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "syncStatuses newer than sinceId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    packed-switch p5, :pswitch_data_0

    :pswitch_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "statuses"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "home_timeline"

    aput-object v11, v9, v10

    invoke-static {v9}, Laf;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".json"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    :goto_1
    const-string v10, "include_entities"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    if-lez v6, :cond_3

    const-string v10, "count"

    invoke-static {v9, v10, v6}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_3
    const-wide/16 v10, 0x0

    cmp-long v6, v4, v10

    if-lez v6, :cond_4

    const-string v6, "since_id"

    invoke-static {v9, v6, v4, v5}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_4
    :try_start_0
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v10, Lce;

    move-object v0, v10

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lce;-><init>(Lab;)V

    move-object/from16 v0, p1

    move-object v1, v9

    move-object v2, v10

    move-object v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/twitter/android/platform/o;->a(Landroid/content/Context;Ljava/lang/CharSequence;Lce;Ljava/io/OutputStream;)Lo;

    move-result-object v9

    invoke-virtual {v9}, Lo;->a()Lo;

    move-result-object v9

    iget v10, v9, Lo;->c:I

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_b

    sget-object v9, Ldb;->a:Ldp;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v9, v6}, Ldp;->a([B)Lbl;

    move-result-object v6

    invoke-virtual {v6}, Lbl;->g()Lcg;

    invoke-static {v6}, Ldb;->c(Lbl;)Ljava/util/ArrayList;

    move-result-object v6

    const-wide/16 v9, 0x0

    cmp-long v4, v4, v9

    if-nez v4, :cond_a

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_a

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lq;

    move-object/from16 v0, p3

    iget-wide v0, v0, Lq;->a:J

    move-wide v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    :try_end_0
    .catch Lz; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    move-object v14, v4

    :goto_2
    if-nez p5, :cond_5

    :try_start_1
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lcom/twitter/android/platform/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lz; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_5
    :goto_3
    :try_start_2
    invoke-static/range {p1 .. p1}, Lcom/twitter/android/provider/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/platform/o;->b:Lcom/twitter/android/provider/ab;

    move-object v5, v0

    const-wide/16 v10, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x1

    move/from16 v9, p5

    invoke-virtual/range {v5 .. v15}, Lcom/twitter/android/provider/ab;->a(Ljava/util/ArrayList;JIJZZLjava/lang/String;Z)I

    move-result v4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v9, 0x64

    if-lt v5, v9, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/platform/o;->b:Lcom/twitter/android/provider/ab;

    move-object v9, v0

    const-wide/16 v13, -0x1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v10, 0x1

    sub-int/2addr v5, v10

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lq;

    move-object/from16 v0, p2

    iget-wide v0, v0, Lq;->a:J

    move-wide v15, v0

    move-wide v10, v7

    move/from16 v12, p5

    invoke-virtual/range {v9 .. v16}, Lcom/twitter/android/provider/ab;->a(JIJJ)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/platform/o;->b:Lcom/twitter/android/provider/ab;

    move-object v5, v0

    move-object v0, v5

    move-wide v1, v7

    move/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/provider/ab;->d(JI)I

    move-result v5

    if-lez v4, :cond_8

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lq;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.twitter.android.poll.statuses"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "new"

    invoke-virtual {v6, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "unread"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "type"

    move-object v0, v6

    move-object v1, v5

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "sample"

    move-object/from16 v0, p0

    iget-object v0, v0, Lq;->g:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "status_id"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lq;->a:J

    move-wide v7, v0

    invoke-virtual {v6, v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lq;->l:Lac;

    move-object v5, v0

    if-eqz v5, :cond_7

    const-string v5, "sender_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lq;->l:Lac;

    move-object v7, v0

    iget-wide v7, v7, Lac;->a:J

    invoke-virtual {v6, v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v5, "sender"

    move-object/from16 v0, p0

    iget-object v0, v0, Lq;->l:Lac;

    move-object v7, v0

    iget-object v7, v7, Lac;->f:Ljava/lang/String;

    invoke-virtual {v6, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_7
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_8
    sget-boolean v5, Lcom/twitter/android/platform/o;->a:Z

    if-eqz v5, :cond_9

    const-string v5, "TwitterDataSync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "====> Sync statuses of type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", got "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lz; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_9
    :goto_4
    return-void

    :pswitch_2
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "statuses"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "user_timeline"

    aput-object v11, v9, v10

    invoke-static {v9}, Laf;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".json"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "user_id"

    invoke-static {v9, v10, v7, v8}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    const-string v10, "include_rts"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    goto/16 :goto_1

    :pswitch_3
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "statuses"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "mentions"

    aput-object v11, v9, v10

    invoke-static {v9}, Laf;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".json"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    goto/16 :goto_1

    :pswitch_4
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "statuses"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "retweeted_by_me"

    aput-object v11, v9, v10

    invoke-static {v9}, Laf;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".json"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    goto/16 :goto_1

    :pswitch_5
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "statuses"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "retweeted_to_me"

    aput-object v11, v9, v10

    invoke-static {v9}, Laf;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".json"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    goto/16 :goto_1

    :pswitch_6
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "statuses"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "retweets_of_me"

    aput-object v11, v9, v10

    invoke-static {v9}, Laf;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".json"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    goto/16 :goto_1

    :cond_a
    const/4 v4, 0x0

    move-object v14, v4

    goto/16 :goto_2

    :catch_0
    move-exception v4

    :try_start_3
    const-string v5, "TwitterDataSync"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lz; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_3

    :catch_1
    move-exception v4

    move-object/from16 v0, p6

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v5, v4, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroid/content/SyncStats;->numParseExceptions:J

    goto/16 :goto_4

    :cond_b
    :try_start_4
    iget v4, v9, Lo;->c:I

    const/16 v5, 0x191

    if-ne v4, v5, :cond_c

    move-object/from16 v0, p6

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v5, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroid/content/SyncStats;->numAuthExceptions:J
    :try_end_4
    .catch Lz; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_4

    :catch_2
    move-exception v4

    move-object/from16 v0, p6

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v5, v4, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroid/content/SyncStats;->numIoExceptions:J

    goto/16 :goto_4

    :cond_c
    :try_start_5
    move-object/from16 v0, p6

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v5, v4, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_5
    .catch Lz; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public final onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 12

    :try_start_0
    invoke-virtual {p0}, Lcom/twitter/android/platform/o;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v3, "account_user_info"

    invoke-virtual {v1, p1, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move-object/from16 v0, p5

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v1, v0

    iget-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    const-string v1, "TwitterDataSync"

    const-string v2, "ACCOUNT_USER_INFO_KEY content not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "com.twitter.android.oauth.token"

    const/4 v5, 0x0

    invoke-virtual {v1, p1, v4, v5}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    const-string v4, "com.twitter.android.oauth.token.secret"

    const/4 v5, 0x0

    invoke-virtual {v1, p1, v4, v5}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v6, :cond_2

    if-nez v1, :cond_3

    :cond_2
    move-object/from16 v0, p5

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v1, v0

    iget-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    const-string v1, "TwitterDataSync"

    const-string v2, "Token not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    :catch_0
    move-exception v1

    move-object/from16 v0, p5

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v1, v0

    iget-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-static {v3}, Ldb;->c(Ljava/lang/String;)Lac;

    move-result-object v5

    new-instance v4, Lab;

    invoke-direct {v4, v6, v1}, Lab;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/twitter/android/platform/C2DMService;->a(Landroid/content/Context;)V

    if-eqz p2, :cond_4

    const-string v1, "home"

    const/4 v3, 0x1

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/twitter/android/platform/o;->a(Landroid/content/Context;Landroid/accounts/Account;Lab;Lac;ILandroid/content/SyncResult;)V

    :cond_5
    if-eqz p2, :cond_6

    const-string v1, "mentions"

    const/4 v3, 0x1

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    const/4 v6, 0x5

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/twitter/android/platform/o;->a(Landroid/content/Context;Landroid/accounts/Account;Lab;Lac;ILandroid/content/SyncResult;)V

    const/16 v6, 0x8

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/twitter/android/platform/o;->a(Landroid/content/Context;Landroid/accounts/Account;Lab;Lac;ILandroid/content/SyncResult;)V

    :cond_7
    if-eqz p2, :cond_8

    const-string v1, "messages"

    const/4 v3, 0x1

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    const/4 v10, 0x1

    move-object v6, p0

    move-object v7, v2

    move-object v8, v4

    move-object v9, v5

    move-object/from16 v11, p5

    invoke-direct/range {v6 .. v11}, Lcom/twitter/android/platform/o;->a(Landroid/content/Context;Lab;Lac;ILandroid/content/SyncResult;)V

    const/4 v10, 0x0

    move-object v6, p0

    move-object v7, v2

    move-object v8, v4

    move-object v9, v5

    move-object/from16 v11, p5

    invoke-direct/range {v6 .. v11}, Lcom/twitter/android/platform/o;->a(Landroid/content/Context;Lab;Lac;ILandroid/content/SyncResult;)V

    :cond_9
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "auto_clean"

    const-wide/16 v6, 0x0

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-wide/32 v8, 0x36ee80

    add-long/2addr v6, v8

    cmp-long v4, v6, v2

    if-gez v4, :cond_a

    iget-object v4, p0, Lcom/twitter/android/platform/o;->b:Lcom/twitter/android/provider/ab;

    iget-wide v5, v5, Lac;->a:J

    invoke-virtual {v4, v5, v6}, Lcom/twitter/android/provider/ab;->f(J)V

    const-string v4, "auto_clean"

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_a
    const-string v4, "last_sync"

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    :catch_1
    move-exception v1

    sget-boolean v1, Lcom/twitter/android/platform/o;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "TwitterDataSync"

    const-string v2, "Sync canceled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_2
    move-exception v1

    move-object/from16 v0, p5

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v1, v0

    iget-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    goto/16 :goto_0

    :catch_3
    move-exception v1

    move-object/from16 v0, p5

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v1, v0

    iget-wide v2, v1, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numParseExceptions:J

    goto/16 :goto_0
.end method
