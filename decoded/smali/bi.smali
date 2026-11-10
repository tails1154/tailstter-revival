.class final Lbi;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Ljava/util/HashMap;

.field private synthetic b:Lax;


# direct methods
.method constructor <init>(Lax;)V
    .locals 0

    iput-object p1, p0, Lbi;->b:Lax;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    const/4 v10, 0x0

    iget-object v0, p0, Lbi;->a:Ljava/util/HashMap;

    sget-boolean v1, Lax;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "ImageCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Queueing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_6

    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbb;

    iget-object v4, v0, Lbb;->a:Ljava/lang/String;

    iget-object v5, p0, Lbi;->b:Lax;

    invoke-virtual {v5, v3, v4}, Lax;->a(Ljava/lang/Object;Ljava/lang/String;)Ln;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    sget-boolean v6, Lax;->a:Z

    if-eqz v6, :cond_3

    const-string v6, "ImageCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fetch "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/16 v7, 0x1000

    invoke-direct {v6, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v7, Lo;

    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v8, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    sget-object v9, Lce;->a:Lce;

    invoke-direct {v7, v8, v9, v6}, Lo;-><init>(Lorg/apache/http/client/methods/HttpRequestBase;Lce;Ljava/io/OutputStream;)V

    invoke-virtual {v7, v10}, Lo;->a(I)Lo;

    iget-boolean v0, v0, Lbb;->b:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbi;->b:Lax;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lax;->a(Ljava/lang/Object;Ljava/lang/String;[B)Ln;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    invoke-static {v0, v10, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v5, p0, Lbi;->b:Lax;

    invoke-virtual {v5, v3, v4}, Lax;->b(Ljava/lang/Object;Ljava/lang/String;)Ln;

    move-result-object v4

    invoke-virtual {v4, v0}, Ln;->a(Landroid/graphics/Bitmap;)V

    move-object v0, v4

    goto :goto_1

    :cond_5
    move-object v0, v1

    :goto_2
    return-object v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    move-object v0, v5

    goto :goto_1
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lbi;->b:Lax;

    invoke-virtual {v0, p1}, Lax;->b(Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method protected final onPreExecute()V
    .locals 3

    iget-object v0, p0, Lbi;->b:Lax;

    iget-object v0, v0, Lax;->c:[I

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lbi;->b:Lax;

    iget-object v2, v2, Lax;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lbi;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lbi;->a:Ljava/util/HashMap;

    iget-object v2, p0, Lbi;->b:Lax;

    iget-object v2, v2, Lax;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v1, p0, Lbi;->b:Lax;

    iget-object v1, v1, Lax;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
