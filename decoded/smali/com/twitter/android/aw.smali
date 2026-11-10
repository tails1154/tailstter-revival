.class final Lcom/twitter/android/aw;
.super Lcom/twitter/android/u;


# instance fields
.field private synthetic a:Lcom/twitter/android/SearchTweetsActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/SearchTweetsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/aw;->a:Lcom/twitter/android/SearchTweetsActivity;

    invoke-direct {p0, p1}, Lcom/twitter/android/u;-><init>(Lcom/twitter/android/TweetListActivity;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/SearchTweetsActivity;Lcom/twitter/android/cq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/aw;-><init>(Lcom/twitter/android/SearchTweetsActivity;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;DDLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/aw;->a:Lcom/twitter/android/SearchTweetsActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/SearchTweetsActivity;->e(Ljava/lang/String;)Lcom/twitter/android/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/aw;->a:Lcom/twitter/android/SearchTweetsActivity;

    iput-object p9, v0, Lcom/twitter/android/SearchTweetsActivity;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/aw;->a:Lcom/twitter/android/SearchTweetsActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/twitter/android/SearchTweetsActivity;->g(I)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;JI)V
    .locals 8

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/twitter/android/aw;->a:Lcom/twitter/android/SearchTweetsActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/SearchTweetsActivity;->e(Ljava/lang/String;)Lcom/twitter/android/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0xc8

    if-ne p3, v1, :cond_2

    iget v1, v0, Lcom/twitter/android/cj;->b:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/twitter/android/aw;->a:Lcom/twitter/android/SearchTweetsActivity;

    iget-object v0, v0, Lcom/twitter/android/SearchTweetsActivity;->a:Lcom/twitter/android/cg;

    iget-object v1, p0, Lcom/twitter/android/aw;->a:Lcom/twitter/android/SearchTweetsActivity;

    iget-object v1, v1, Lcom/twitter/android/SearchTweetsActivity;->j:Landroid/widget/CursorAdapter;

    sget-object v2, Lcom/twitter/android/provider/an;->a:Landroid/net/Uri;

    sget-object v3, Lcom/twitter/android/provider/aj;->a:[Ljava/lang/String;

    const-string v4, "tag=?"

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/android/cg;->a(Landroid/widget/CursorAdapter;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-lez p7, :cond_0

    iget-object v0, p0, Lcom/twitter/android/aw;->a:Lcom/twitter/android/SearchTweetsActivity;

    add-int/lit8 v1, p7, 0x1

    iput v1, v0, Lcom/twitter/android/SearchTweetsActivity;->b:I

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/twitter/android/aw;->a:Lcom/twitter/android/SearchTweetsActivity;

    iget v0, v0, Lcom/twitter/android/cj;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/SearchTweetsActivity;->d(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/twitter/android/aw;->a:Lcom/twitter/android/SearchTweetsActivity;

    const v2, 0x7f09007b

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/twitter/android/aw;->a:Lcom/twitter/android/SearchTweetsActivity;

    iget v0, v0, Lcom/twitter/android/cj;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/SearchTweetsActivity;->d(I)V

    goto :goto_1
.end method

.method public final a(Ljava/util/HashMap;)V
    .locals 4

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln;

    if-eqz v0, :cond_0

    iget-object v2, v0, Ln;->a:Ljava/lang/String;

    const-string v3, "http://maps.google.com/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/twitter/android/aw;->a:Lcom/twitter/android/SearchTweetsActivity;

    iget-object v2, v2, Lcom/twitter/android/SearchTweetsActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ln;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    return-void
.end method
