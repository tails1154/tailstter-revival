.class final Lcom/twitter/android/am;
.super Landroid/os/AsyncTask;


# instance fields
.field private synthetic a:Lcom/twitter/android/ImageActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/ImageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/am;->a:Lcom/twitter/android/ImageActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/ImageActivity;Lcom/twitter/android/ai;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/am;-><init>(Lcom/twitter/android/ImageActivity;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v4, 0x0

    check-cast p1, [Landroid/net/Uri;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v1, Lo;

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    aget-object v3, p1, v4

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    sget-object v3, Lce;->a:Lce;

    invoke-direct {v1, v2, v3, v0}, Lo;-><init>(Lorg/apache/http/client/methods/HttpRequestBase;Lce;Ljava/io/OutputStream;)V

    invoke-virtual {v1, v4}, Lo;->a(I)Lo;

    move-result-object v1

    invoke-virtual {v1}, Lo;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-static {v1, v4, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/twitter/android/am;->a:Lcom/twitter/android/ImageActivity;

    iget-object v0, v0, Lcom/twitter/android/ImageActivity;->b:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/am;->a:Lcom/twitter/android/ImageActivity;

    iget-object v0, v0, Lcom/twitter/android/ImageActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/twitter/android/am;->a:Lcom/twitter/android/ImageActivity;

    iget-object v0, v0, Lcom/twitter/android/ImageActivity;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/am;->a:Lcom/twitter/android/ImageActivity;

    const v1, 0x7f090122

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/am;->a:Lcom/twitter/android/ImageActivity;

    iget-object v0, v0, Lcom/twitter/android/ImageActivity;->b:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/am;->a:Lcom/twitter/android/ImageActivity;

    iget-object v0, v0, Lcom/twitter/android/ImageActivity;->a:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
