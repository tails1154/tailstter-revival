.class public Lcom/twitter/android/service/ScribeService;
.super Landroid/app/IntentService;


# static fields
.field private static final a:Z

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static final d:Ljava/util/HashMap;

.field private static final e:[Ljava/lang/String;


# instance fields
.field private f:Lcom/twitter/android/provider/ab;

.field private g:Lcom/twitter/android/service/j;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "ScribeService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/twitter/android/service/ScribeService;->a:Z

    const-string v0, "log_interval"

    sput-object v0, Lcom/twitter/android/service/ScribeService;->b:Ljava/lang/String;

    const-string v0, "log_enabled"

    sput-object v0, Lcom/twitter/android/service/ScribeService;->c:Ljava/lang/String;

    new-instance v0, Lcom/twitter/android/service/f;

    invoke-direct {v0}, Lcom/twitter/android/service/f;-><init>()V

    sput-object v0, Lcom/twitter/android/service/ScribeService;->d:Ljava/util/HashMap;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "log"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/service/ScribeService;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "ScribeService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/twitter/android/service/ScribeService;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/service/ScribeService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "FLUSH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/android/service/g;)V
    .locals 1

    invoke-static {p0}, Lcom/twitter/android/service/ScribeService;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/twitter/android/service/ScribeService;->b(Landroid/content/Context;Lcom/twitter/android/service/g;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/android/service/l;)V
    .locals 1

    invoke-static {p0}, Lcom/twitter/android/service/ScribeService;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/twitter/android/service/g;

    invoke-direct {v0, p1}, Lcom/twitter/android/service/g;-><init>(Lcom/twitter/android/service/l;)V

    invoke-static {p0, v0}, Lcom/twitter/android/service/ScribeService;->b(Landroid/content/Context;Lcom/twitter/android/service/g;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lo;)V
    .locals 8

    invoke-static {p0}, Lcom/twitter/android/service/ScribeService;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lo;->d()Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lo;->c()[Lam;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    iget v5, v4, Lam;->a:I

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_0

    new-instance v5, Lcom/twitter/android/service/g;

    sget-object v6, Lcom/twitter/android/service/l;->q:Lcom/twitter/android/service/l;

    invoke-direct {v5, v6}, Lcom/twitter/android/service/g;-><init>(Lcom/twitter/android/service/l;)V

    iput-object v0, v5, Lcom/twitter/android/service/g;->f:Ljava/lang/String;

    iget v6, v4, Lam;->a:I

    iput v6, v5, Lcom/twitter/android/service/g;->e:I

    iget-wide v6, v4, Lam;->c:J

    iput-wide v6, v5, Lcom/twitter/android/service/g;->d:J

    invoke-static {p0, v5}, Lcom/twitter/android/service/ScribeService;->b(Landroid/content/Context;Lcom/twitter/android/service/g;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;ZJ)V
    .locals 2

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/service/ScribeService;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/service/ScribeService;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/twitter/android/service/g;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/service/ScribeService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "LOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "log"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/service/ScribeService;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    invoke-static {p0}, Lcom/twitter/android/provider/ab;->a(Landroid/content/Context;)Lcom/twitter/android/provider/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/service/ScribeService;->f:Lcom/twitter/android/provider/ab;

    new-instance v0, Lcom/twitter/android/service/j;

    invoke-direct {v0, p0}, Lcom/twitter/android/service/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/android/service/ScribeService;->g:Lcom/twitter/android/service/j;

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 13

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/service/ScribeService;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    move v0, v4

    :goto_0
    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :pswitch_0
    const-string v0, "log"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/service/g;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x60

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    new-instance v0, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    const-string v3, "log"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v1, p0, Lcom/twitter/android/service/ScribeService;->f:Lcom/twitter/android/provider/ab;

    invoke-virtual {v1}, Lcom/twitter/android/provider/ab;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v3, "scribe"

    const-string v4, "log"

    invoke-virtual {v1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    iget-object v0, p0, Lcom/twitter/android/service/ScribeService;->g:Lcom/twitter/android/service/j;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/service/j;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/service/ScribeService;->b:Ljava/lang/String;

    const-wide/32 v3, 0xea60

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v3, p0, Lcom/twitter/android/service/ScribeService;->g:Lcom/twitter/android/service/j;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0, v1}, Lcom/twitter/android/service/j;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :cond_2
    invoke-static {v2}, Lci;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v3

    :goto_2
    invoke-static {v0}, Lci;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v3

    :goto_3
    invoke-static {v1}, Lci;->a(Ljava/io/Closeable;)V

    throw v0

    :pswitch_1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.twitter.android.auth.login"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_6

    array-length v2, v1

    if-lez v2, :cond_6

    aget-object v1, v1, v4

    invoke-static {v0, v1}, Lcom/twitter/android/platform/f;->a(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Lab;

    move-result-object v0

    move-object v8, v0

    :goto_4
    iget-object v0, p0, Lcom/twitter/android/service/ScribeService;->f:Lcom/twitter/android/provider/ab;

    invoke-virtual {v0}, Lcom/twitter/android/provider/ab;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "scribe"

    sget-object v2, Lcom/twitter/android/service/ScribeService;->e:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_a

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    const-string v1, "log[]="

    invoke-virtual {v5, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    sget-object v1, Ldb;->a:Ldp;

    invoke-virtual {v1, v5}, Ldp;->a(Ljava/io/Writer;)Las;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-result-object v6

    :try_start_4
    invoke-virtual {v6}, Las;->a()V

    move-object v1, v3

    :goto_5
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v7

    if-eqz v7, :cond_7

    :try_start_5
    new-instance v7, Ljava/io/ObjectInputStream;

    new-instance v9, Ljava/io/ByteArrayInputStream;

    const/4 v10, 0x0

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v7, v9}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :try_start_6
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/service/g;

    invoke-virtual {v6}, Las;->c()V

    const-string v9, "_category_"

    const-string v10, "client_event"

    invoke-virtual {v6, v9, v10}, Las;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v1, Lcom/twitter/android/service/g;->c:Lcom/twitter/android/service/l;

    if-eqz v9, :cond_3

    const-string v9, "referring_event"

    iget-object v10, v1, Lcom/twitter/android/service/g;->c:Lcom/twitter/android/service/l;

    invoke-virtual {v10}, Lcom/twitter/android/service/l;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Las;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v9, "event_name"

    iget-object v10, v1, Lcom/twitter/android/service/g;->a:Lcom/twitter/android/service/l;

    invoke-virtual {v10}, Lcom/twitter/android/service/l;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Las;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "ts"

    iget-wide v10, v1, Lcom/twitter/android/service/g;->b:J

    invoke-virtual {v6, v9, v10, v11}, Las;->a(Ljava/lang/String;J)V

    iget-object v9, v1, Lcom/twitter/android/service/g;->a:Lcom/twitter/android/service/l;

    sget-object v10, Lcom/twitter/android/service/l;->q:Lcom/twitter/android/service/l;

    if-ne v9, v10, :cond_4

    const-string v9, "duration_ms"

    iget-wide v10, v1, Lcom/twitter/android/service/g;->d:J

    invoke-virtual {v6, v9, v10, v11}, Las;->a(Ljava/lang/String;J)V

    const-string v9, "status_code"

    iget v10, v1, Lcom/twitter/android/service/g;->e:I

    invoke-virtual {v6, v9, v10}, Las;->a(Ljava/lang/String;I)V

    :cond_4
    iget-object v9, v1, Lcom/twitter/android/service/g;->f:Ljava/lang/String;

    if-eqz v9, :cond_5

    const-string v9, "url"

    iget-object v1, v1, Lcom/twitter/android/service/g;->f:Ljava/lang/String;

    invoke-virtual {v6, v9, v1}, Las;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v6}, Las;->d()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-static {v7}, Lci;->a(Ljava/io/Closeable;)V

    move-object v1, v7

    goto :goto_5

    :cond_6
    move-object v8, v3

    goto/16 :goto_4

    :catch_1
    move-exception v1

    move-object v1, v7

    :goto_6
    invoke-static {v1}, Lci;->a(Ljava/io/Closeable;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_5

    :catch_2
    move-exception v1

    move-object v1, v5

    move-object v4, v6

    :goto_7
    const-string v5, "scribe"

    invoke-virtual {v0, v5, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {v4}, Lci;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lci;->a(Ljava/io/Closeable;)V

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catch_3
    move-exception v1

    move-object v1, v7

    :goto_8
    :try_start_8
    invoke-static {v1}, Lci;->a(Ljava/io/Closeable;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_5

    :catchall_1
    move-exception v1

    move-object v4, v5

    move-object v5, v6

    :goto_9
    const-string v6, "scribe"

    invoke-virtual {v0, v6, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {v5}, Lci;->a(Ljava/io/Closeable;)V

    invoke-static {v4}, Lci;->a(Ljava/io/Closeable;)V

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v1

    :catchall_2
    move-exception v1

    move-object v4, v7

    :goto_a
    :try_start_9
    invoke-static {v4}, Lci;->a(Ljava/io/Closeable;)V

    throw v1

    :cond_7
    invoke-virtual {v6}, Las;->b()V

    invoke-virtual {v6}, Las;->e()V

    sget-boolean v1, Lcom/twitter/android/service/ScribeService;->a:Z

    if-eqz v1, :cond_8

    const-string v1, "ScribeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Starting request ("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " bytes)"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    const-string v7, "https://scribe.twitter.com/scribe"

    invoke-direct {v1, v7}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v7, "Content-Type"

    const-string v9, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v7, v9}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v7, v4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v1, v7}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    if-eqz v8, :cond_9

    new-instance v4, Lce;

    invoke-direct {v4, v8}, Lce;-><init>(Lab;)V

    :goto_b
    new-instance v7, Lo;

    const/4 v8, 0x0

    invoke-direct {v7, v1, v4, v8}, Lo;-><init>(Lorg/apache/http/client/methods/HttpRequestBase;Lce;Ljava/io/OutputStream;)V

    invoke-static {p0, v7}, Laf;->a(Landroid/content/Context;Lo;)V

    invoke-virtual {v7}, Lo;->a()Lo;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object v1, v5

    move-object v4, v6

    :goto_c
    const-string v5, "scribe"

    invoke-virtual {v0, v5, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {v4}, Lci;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lci;->a(Ljava/io/Closeable;)V

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_9
    :try_start_a
    sget-object v4, Lce;->a:Lce;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_b

    :catchall_3
    move-exception v1

    move-object v4, v3

    move-object v5, v3

    goto/16 :goto_9

    :catchall_4
    move-exception v1

    move-object v4, v5

    move-object v5, v3

    goto/16 :goto_9

    :catch_4
    move-exception v1

    move-object v1, v3

    move-object v4, v3

    goto/16 :goto_7

    :catch_5
    move-exception v1

    move-object v1, v5

    move-object v4, v3

    goto/16 :goto_7

    :catchall_5
    move-exception v4

    move-object v12, v4

    move-object v4, v1

    move-object v1, v12

    goto/16 :goto_a

    :catch_6
    move-exception v7

    goto/16 :goto_8

    :catch_7
    move-exception v7

    goto/16 :goto_6

    :catchall_6
    move-exception v0

    move-object v1, v2

    goto/16 :goto_3

    :catch_8
    move-exception v0

    move-object v0, v2

    goto/16 :goto_2

    :cond_a
    move-object v1, v3

    move-object v4, v3

    goto :goto_c

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
