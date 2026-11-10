.class final Lcom/twitter/android/bd;
.super Landroid/os/AsyncTask;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lba;


# instance fields
.field final synthetic a:Lcom/twitter/android/EditProfileActivity;

.field private b:Landroid/app/ProgressDialog;


# direct methods
.method private constructor <init>(Lcom/twitter/android/EditProfileActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/bd;->a:Lcom/twitter/android/EditProfileActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/EditProfileActivity;Lcom/twitter/android/db;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/bd;-><init>(Lcom/twitter/android/EditProfileActivity;)V

    return-void
.end method

.method private varargs a([Landroid/net/Uri;)Lac;
    .locals 13

    const/4 v2, 0x0

    const/4 v12, 0x0

    iget-object v0, p0, Lcom/twitter/android/bd;->a:Lcom/twitter/android/EditProfileActivity;

    iget-object v1, p0, Lcom/twitter/android/bd;->a:Lcom/twitter/android/EditProfileActivity;

    iget-object v1, v1, Lcom/twitter/android/EditProfileActivity;->u:Lcom/twitter/android/client/i;

    invoke-virtual {v1}, Lcom/twitter/android/client/i;->d()Ljava/lang/String;

    move-result-object v1

    aget-object v2, p1, v2

    :try_start_0
    new-instance v3, Lao;

    invoke-direct {v3, p0}, Lao;-><init>(Lba;)V

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    :try_start_1
    invoke-virtual {v9}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v10, v2, [B

    const/4 v2, 0x0

    array-length v4, v10

    invoke-virtual {v9, v10, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const-string v4, "image"

    const/16 v5, 0x8

    invoke-static {v5}, Lci;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v10}, Lao;->a(Ljava/lang/String;Ljava/lang/String;[B)I

    invoke-virtual {v3}, Lao;->a()V

    sget-boolean v4, Lcom/twitter/android/EditProfileActivity;->a:Z

    if-eqz v4, :cond_0

    const-string v4, "EditProfile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Uploading bytes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "account"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "update_profile_image"

    aput-object v5, v2, v4

    invoke-static {v2}, Laf;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".json"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    new-instance v2, Lo;

    new-instance v3, Lce;

    iget-object v6, p0, Lcom/twitter/android/bd;->a:Lcom/twitter/android/EditProfileActivity;

    iget-object v6, v6, Lcom/twitter/android/EditProfileActivity;->u:Lcom/twitter/android/client/i;

    invoke-virtual {v6}, Lcom/twitter/android/client/i;->c()Lab;

    move-result-object v6

    invoke-direct {v3, v6}, Lce;-><init>(Lab;)V

    invoke-direct {v2, v5, v3, v4}, Lo;-><init>(Lorg/apache/http/client/methods/HttpRequestBase;Lce;Ljava/io/OutputStream;)V

    invoke-static {v0, v2}, Laf;->a(Landroid/content/Context;Lo;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lo;->a(I)Lo;

    invoke-virtual {v2}, Lo;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Ldb;->a:Ldp;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ldp;->a([B)Lbl;

    move-result-object v2

    invoke-virtual {v2}, Lbl;->g()Lcg;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Ldb;->a(Lbl;J)Lac;

    move-result-object v11

    const/4 v2, 0x0

    invoke-static {v0, v1, v11, v2}, Lcom/twitter/android/platform/f;->a(Landroid/content/Context;Ljava/lang/String;Lac;Lbv;)V

    invoke-static {v0}, Lcom/twitter/android/provider/ab;->a(Landroid/content/Context;)Lcom/twitter/android/provider/ab;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/twitter/android/provider/ab;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)V

    iget-wide v1, v11, Lac;->a:J

    iget-object v3, v11, Lac;->c:Ljava/lang/String;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/provider/ab;->a(JLjava/lang/String;Ljava/io/ByteArrayInputStream;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v9}, Lci;->a(Ljava/io/Closeable;)V

    move-object v0, v11

    :goto_0
    return-object v0

    :cond_1
    invoke-static {v9}, Lci;->a(Ljava/io/Closeable;)V

    :goto_1
    move-object v0, v12

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v12

    :goto_2
    :try_start_2
    sget-boolean v2, Lcom/twitter/android/EditProfileActivity;->a:Z

    if-eqz v2, :cond_2

    const-string v2, "EditProfile"

    const-string v3, "updateProfileImage"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_2
    invoke-static {v1}, Lci;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v12

    :goto_3
    invoke-static {v1}, Lci;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v9

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v9

    goto :goto_2
.end method


# virtual methods
.method public final a(JJ)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const-wide/16 v2, 0x64

    mul-long/2addr v2, p1

    div-long/2addr v2, p3

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/twitter/android/bd;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/twitter/android/bd;->a([Landroid/net/Uri;)Lac;

    move-result-object v0

    return-object v0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/bd;->cancel(Z)Z

    return-void
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 6

    const/4 v5, 0x0

    check-cast p1, Lac;

    iget-object v0, p0, Lcom/twitter/android/bd;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/bd;->a:Lcom/twitter/android/EditProfileActivity;

    iget-object v0, v0, Lcom/twitter/android/EditProfileActivity;->u:Lcom/twitter/android/client/i;

    invoke-virtual {v0, p1}, Lcom/twitter/android/client/i;->a(Lac;)V

    iget-object v1, p0, Lcom/twitter/android/bd;->a:Lcom/twitter/android/EditProfileActivity;

    invoke-virtual {v1, v5}, Lcom/twitter/android/EditProfileActivity;->a(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/twitter/android/i;

    invoke-direct {v2, p0, v0, p1}, Lcom/twitter/android/i;-><init>(Lcom/twitter/android/bd;Lcom/twitter/android/client/i;Lac;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/twitter/android/bd;->a:Lcom/twitter/android/EditProfileActivity;

    iput-object v5, v0, Lcom/twitter/android/EditProfileActivity;->b:Landroid/net/Uri;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/bd;->a:Lcom/twitter/android/EditProfileActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/EditProfileActivity;->showDialog(I)V

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 4

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/twitter/android/bd;->a:Lcom/twitter/android/EditProfileActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v1, p0, Lcom/twitter/android/bd;->a:Lcom/twitter/android/EditProfileActivity;

    const v2, 0x7f09002d

    invoke-virtual {v1, v2}, Lcom/twitter/android/EditProfileActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/twitter/android/bd;->a:Lcom/twitter/android/EditProfileActivity;

    const v3, 0x7f0900a3

    invoke-virtual {v2, v3}, Lcom/twitter/android/EditProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iput-object v0, p0, Lcom/twitter/android/bd;->b:Landroid/app/ProgressDialog;

    return-void
.end method

.method protected final bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 2

    check-cast p1, [Ljava/lang/Integer;

    iget-object v0, p0, Lcom/twitter/android/bd;->b:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    return-void
.end method
