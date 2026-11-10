.class final Lcom/twitter/android/bf;
.super Landroid/os/AsyncTask;


# instance fields
.field private synthetic a:Lcom/twitter/android/PostActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/PostActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/bf;->a:Lcom/twitter/android/PostActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/PostActivity;Lcom/twitter/android/dm;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/bf;-><init>(Lcom/twitter/android/PostActivity;)V

    return-void
.end method

.method private a(Lcom/twitter/android/bt;)F
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/twitter/android/bf;->a:Lcom/twitter/android/PostActivity;

    invoke-virtual {v1}, Lcom/twitter/android/PostActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p1, Lcom/twitter/android/bt;->d:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x44800000    # 1024.0f

    div-float/2addr v1, v2

    invoke-static {v0}, Lci;->a(Ljava/io/Closeable;)V

    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    :try_start_2
    sget-boolean v2, Lcom/twitter/android/PostActivity;->a:Z

    if-eqz v2, :cond_0

    const-string v2, "PostActivity"

    const-string v3, "checkFilesize"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_0
    invoke-static {v1}, Lci;->a(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2
    invoke-static {v1}, Lci;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    check-cast p1, [Lcom/twitter/android/bt;

    aget-object v6, p1, v7

    invoke-direct {p0, v6}, Lcom/twitter/android/bf;->a(Lcom/twitter/android/bt;)F

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/bf;->a:Lcom/twitter/android/PostActivity;

    const v2, 0x7f090103

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-virtual {v1, v2, v4}, Lcom/twitter/android/PostActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/twitter/android/bt;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/bf;->a:Lcom/twitter/android/PostActivity;

    invoke-virtual {v0}, Lcom/twitter/android/PostActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, v6, Lcom/twitter/android/bt;->d:Landroid/net/Uri;

    new-array v2, v5, [Ljava/lang/String;

    const-string v4, "title"

    aput-object v4, v2, v7

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/twitter/android/bt;->i:Ljava/lang/String;

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    const/high16 v0, 0x42900000    # 72.0f

    iget-object v1, p0, Lcom/twitter/android/bf;->a:Lcom/twitter/android/PostActivity;

    invoke-virtual {v1}, Lcom/twitter/android/PostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/twitter/android/bf;->a:Lcom/twitter/android/PostActivity;

    iget-object v2, v6, Lcom/twitter/android/bt;->d:Landroid/net/Uri;

    invoke-static {v1, v2, v0, v0, v7}, Laa;->a(Landroid/content/Context;Landroid/net/Uri;FFI)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v6, Lcom/twitter/android/bt;->g:Landroid/graphics/Bitmap;

    return-object v6
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/twitter/android/bt;

    iget-object v0, p0, Lcom/twitter/android/bf;->a:Lcom/twitter/android/PostActivity;

    iget-object v0, v0, Lcom/twitter/android/PostActivity;->e:Lcom/twitter/android/ca;

    invoke-virtual {v0, p1}, Lcom/twitter/android/ca;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/twitter/android/bf;->a:Lcom/twitter/android/PostActivity;

    invoke-virtual {v0}, Lcom/twitter/android/PostActivity;->e()V

    return-void
.end method
