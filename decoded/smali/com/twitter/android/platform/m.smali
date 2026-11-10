.class final Lcom/twitter/android/platform/m;
.super Landroid/content/AbstractThreadedSyncAdapter;


# static fields
.field private static final a:Z

.field private static final b:Z


# instance fields
.field private final c:Lcom/twitter/android/provider/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "TwitterContactsSync"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/twitter/android/platform/m;->a:Z

    const-string v0, "TwitterContactsSync"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/twitter/android/platform/m;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    invoke-static {p1}, Lcom/twitter/android/provider/ab;->a(Landroid/content/Context;)Lcom/twitter/android/provider/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/platform/m;->c:Lcom/twitter/android/provider/ab;

    return-void
.end method

.method private a(Landroid/content/Context;Lce;JLcom/twitter/android/platform/j;Landroid/accounts/Account;Landroid/content/SyncResult;)Z
    .locals 17

    sget-boolean v4, Lcom/twitter/android/platform/m;->a:Z

    if-eqz v4, :cond_0

    const-string v4, "TwitterContactsSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fetching from cursor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p5 .. p5}, Lcom/twitter/android/platform/j;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "statuses"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "friends"

    aput-object v6, v4, v5

    invoke-static {v4}, Laf;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "user_id"

    move-object v0, v4

    move-object v1, v5

    move-wide/from16 v2, p3

    invoke-static {v0, v1, v2, v3}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v4, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move v15, v4

    :goto_0
    if-nez v15, :cond_6

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lcom/twitter/android/platform/j;->c()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v4, "cursor"

    invoke-virtual/range {p5 .. p5}, Lcom/twitter/android/platform/j;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v4, v5}, Laf;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v5, Lo;

    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p2

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Lo;-><init>(Lorg/apache/http/client/methods/HttpRequestBase;Lce;Ljava/io/OutputStream;)V

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-static {v0, v1}, Laf;->a(Landroid/content/Context;Lo;)V

    invoke-static {v5}, Laf;->a(Lo;)V

    invoke-virtual {v5}, Lo;->a()Lo;

    iget v6, v5, Lo;->c:I

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_4

    sget-object v5, Ldb;->a:Ldp;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v5, v4}, Ldp;->a([B)Lbl;

    move-result-object v4

    invoke-virtual {v4}, Lbl;->g()Lcg;

    invoke-static {v4}, Ldb;->a(Lbl;)Ldh;

    move-result-object v16

    invoke-static/range {p1 .. p1}, Lcom/twitter/android/provider/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/platform/m;->c:Lcom/twitter/android/provider/ab;

    move-object v4, v0

    invoke-virtual/range {v16 .. v16}, Ldh;->b()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    invoke-virtual/range {v16 .. v16}, Ldh;->a()Ljava/lang/String;

    move-result-object v12

    move-wide/from16 v6, p3

    invoke-virtual/range {v4 .. v12}, Lcom/twitter/android/provider/ab;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual/range {v16 .. v16}, Ldh;->a()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p5

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/twitter/android/platform/j;->c(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ldh;->b()Ljava/util/ArrayList;

    move-result-object v4

    sget-boolean v5, Lcom/twitter/android/platform/m;->a:Z

    if-eqz v5, :cond_3

    const-string v5, "TwitterContactsSync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fetched friends: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", next cursor: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Ldh;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    move-object v2, v4

    move-object/from16 v3, p5

    invoke-static {v0, v1, v2, v3}, Lcom/twitter/android/platform/k;->a(Landroid/content/Context;Landroid/accounts/Account;Ljava/util/List;Lcom/twitter/android/platform/j;)V

    const-string v4, "0"

    invoke-virtual/range {v16 .. v16}, Ldh;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lz; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v4

    :goto_1
    const/4 v5, 0x0

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move v15, v4

    goto/16 :goto_0

    :cond_4
    :try_start_1
    iget v4, v5, Lo;->c:I

    const/16 v5, 0x191

    if-ne v4, v5, :cond_5

    move-object/from16 v0, p7

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v5, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    move v4, v15

    goto :goto_1

    :cond_5
    move-object/from16 v0, p7

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v5, v4, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_1
    .catch Lz; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    move v4, v15

    goto :goto_1

    :catch_0
    move-exception v4

    move-object/from16 v0, p7

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v5, v4, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroid/content/SyncStats;->numParseExceptions:J

    move v4, v15

    goto :goto_1

    :catch_1
    move-exception v4

    move-object/from16 v0, p7

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v5, v4, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroid/content/SyncStats;->numIoExceptions:J

    const/4 v4, 0x0

    :goto_2
    return v4

    :catch_2
    move-exception v4

    const/4 v4, 0x0

    goto :goto_2

    :catch_3
    move-exception v4

    const/4 v4, 0x0

    goto :goto_2

    :cond_6
    sget-boolean v4, Lcom/twitter/android/platform/m;->a:Z

    if-eqz v4, :cond_7

    const-string v4, "TwitterContactsSync"

    const-string v5, "Sync complete."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v4, v15

    goto :goto_2
.end method


# virtual methods
.method public final onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 18

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/platform/m;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    const-string v6, "account_user_info"

    move-object v0, v4

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    move-object/from16 v0, p5

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v5, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    const-string v4, "TwitterContactsSync"

    const-string v5, "ACCOUNT_USER_INFO_KEY content not found."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v7, "com.twitter.android.oauth.token"

    const/4 v8, 0x0

    move-object v0, v4

    move-object/from16 v1, p1

    move-object v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.twitter.android.oauth.token.secret"

    const/4 v9, 0x0

    move-object v0, v4

    move-object/from16 v1, p1

    move-object v2, v8

    move v3, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    if-eqz v7, :cond_2

    if-nez v4, :cond_3

    :cond_2
    move-object/from16 v0, p5

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v5, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    const-string v4, "TwitterContactsSync"

    const-string v5, "Token not found."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    :catch_0
    move-exception v4

    move-object/from16 v0, p5

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v5, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-static {v6}, Ldb;->c(Ljava/lang/String;)Lac;

    move-result-object v8

    new-instance v10, Lab;

    invoke-direct {v10, v7, v4}, Lab;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v4, Lcom/twitter/android/platform/m;->a:Z

    if-eqz v4, :cond_4

    const-string v4, "TwitterContactsSync"

    const-string v6, "=====> Sync friends enter"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/twitter/android/platform/k;->b(Landroid/content/Context;Landroid/accounts/Account;)Lcom/twitter/android/platform/j;

    move-result-object v9

    const-string v4, "DONE"

    invoke-virtual {v9}, Lcom/twitter/android/platform/j;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v9

    invoke-static {v0, v1, v2}, Lcom/twitter/android/platform/k;->a(Landroid/content/Context;Landroid/accounts/Account;Lcom/twitter/android/platform/j;)V

    new-instance v6, Lce;

    invoke-direct {v6, v10}, Lce;-><init>(Lab;)V

    iget-wide v7, v8, Lac;->a:J

    move-object/from16 v4, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p5

    invoke-direct/range {v4 .. v11}, Lcom/twitter/android/platform/m;->a(Landroid/content/Context;Lce;JLcom/twitter/android/platform/j;Landroid/accounts/Account;Landroid/content/SyncResult;)Z

    move-result v4

    sget-boolean v6, Lcom/twitter/android/platform/m;->a:Z

    if-eqz v6, :cond_5

    const-string v6, "TwitterContactsSync"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Twitter sync complete: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz v4, :cond_6

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v9

    invoke-static {v0, v1, v2}, Lcom/twitter/android/platform/k;->b(Landroid/content/Context;Landroid/accounts/Account;Lcom/twitter/android/platform/j;)V

    :cond_6
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v5, v6}, Lcom/twitter/android/platform/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    sget-boolean v7, Lcom/twitter/android/platform/m;->b:Z

    if-eqz v7, :cond_7

    const-string v7, "TwitterContactsSync"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Downloading image count: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v7, 0x0

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_a

    const/4 v8, 0x1

    :goto_2
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    sget-boolean v10, Lcom/twitter/android/platform/m;->b:Z

    if-eqz v10, :cond_8

    const-string v10, "TwitterContactsSync"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Downloading image for user: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object v0, v6

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz v8, :cond_12

    const-string v10, "_normal."

    const-string v11, "_bigger."

    move-object/from16 v0, p2

    move-object v1, v10

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    :goto_4
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    const/16 v12, 0x1000

    invoke-direct {v11, v12}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v12, Lo;

    new-instance v13, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v13, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    sget-object v10, Lce;->a:Lce;

    invoke-direct {v12, v13, v10, v11}, Lo;-><init>(Lorg/apache/http/client/methods/HttpRequestBase;Lce;Ljava/io/OutputStream;)V

    const/4 v10, 0x0

    invoke-virtual {v12, v10}, Lo;->a(I)Lo;

    iget v10, v12, Lo;->c:I

    iget-object v13, v12, Lo;->d:Ljava/lang/String;

    iget-object v12, v12, Lo;->e:Ljava/lang/Exception;

    const/16 v14, 0xc8

    if-ne v10, v14, :cond_b

    add-int/lit8 v7, v7, 0x1

    const/16 v10, 0xc8

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    move-object v0, v5

    move-object/from16 v1, p0

    move v2, v10

    move-object v3, v11

    invoke-static {v0, v1, v2, v3}, Lcom/twitter/android/platform/k;->a(Landroid/content/Context;Ljava/lang/Long;I[B)V
    :try_end_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_3

    :catch_1
    move-exception v4

    sget-boolean v5, Lcom/twitter/android/platform/m;->b:Z

    if-eqz v5, :cond_0

    const-string v5, "TwitterContactsSync"

    const-string v6, "Contact sync canceled"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_9
    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_b
    const/16 v11, 0x193

    if-eq v10, v11, :cond_c

    const/16 v11, 0x194

    if-eq v10, v11, :cond_c

    const/16 v11, 0x1a1

    if-ne v10, v11, :cond_d

    :cond_c
    add-int/lit8 v7, v7, 0x1

    const/4 v11, 0x0

    :try_start_2
    move-object v0, v5

    move-object/from16 v1, p0

    move v2, v10

    move-object v3, v11

    invoke-static {v0, v1, v2, v3}, Lcom/twitter/android/platform/k;->a(Landroid/content/Context;Ljava/lang/Long;I[B)V

    const-string v11, "TwitterContactsSync"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "User image error ignored for user id: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v14, 0x20

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v12, 0x2f

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/accounts/AuthenticatorException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5

    goto/16 :goto_3

    :catch_2
    move-exception v4

    sget-boolean v5, Lcom/twitter/android/platform/m;->b:Z

    if-eqz v5, :cond_0

    const-string v5, "TwitterContactsSync"

    const-string v6, "onPerformSync"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_d
    const/4 v11, 0x0

    :try_start_3
    move-object v0, v5

    move-object/from16 v1, p0

    move v2, v10

    move-object v3, v11

    invoke-static {v0, v1, v2, v3}, Lcom/twitter/android/platform/k;->a(Landroid/content/Context;Ljava/lang/Long;I[B)V

    if-eqz v12, :cond_e

    instance-of v11, v12, Ljava/io/IOException;

    if-nez v11, :cond_e

    move-object/from16 v0, p5

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v11, v0

    iget-wide v14, v11, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    iput-wide v14, v11, Landroid/content/SyncStats;->numParseExceptions:J

    :goto_5
    const-string v11, "TwitterContactsSync"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "User image download error for user id: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v14, 0x20

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v12, 0x2f

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/accounts/AuthenticatorException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_3

    :catch_3
    move-exception v4

    move-object/from16 v0, p5

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v5, v4, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroid/content/SyncStats;->numIoExceptions:J

    goto/16 :goto_0

    :cond_e
    :try_start_4
    move-object/from16 v0, p5

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v11, v0

    iget-wide v14, v11, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    iput-wide v14, v11, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_4
    .catch Landroid/accounts/AuthenticatorException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_5

    :catch_4
    move-exception v4

    move-object/from16 v0, p5

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v5, v4, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroid/content/SyncStats;->numParseExceptions:J

    goto/16 :goto_0

    :cond_f
    if-eqz v4, :cond_11

    :try_start_5
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v4

    if-ne v4, v7, :cond_11

    sget-boolean v4, Lcom/twitter/android/platform/m;->a:Z

    if-eqz v4, :cond_10

    const-string v4, "TwitterContactsSync"

    const-string v6, "Sync end"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/twitter/android/platform/k;->a(Landroid/content/Context;Landroid/accounts/Account;)V

    :cond_11
    sget-boolean v4, Lcom/twitter/android/platform/m;->a:Z

    if-eqz v4, :cond_0

    const-string v4, "TwitterContactsSync"

    const-string v5, "====> Sync friends exit"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/accounts/AuthenticatorException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v4

    move-object/from16 v0, p5

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v5, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    goto/16 :goto_0

    :cond_12
    move-object/from16 v10, p2

    goto/16 :goto_4
.end method
