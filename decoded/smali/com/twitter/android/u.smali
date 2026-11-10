.class public Lcom/twitter/android/u;
.super Lcom/twitter/android/client/m;


# instance fields
.field private synthetic a:Lcom/twitter/android/TweetListActivity;


# direct methods
.method protected constructor <init>(Lcom/twitter/android/TweetListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/u;->a:Lcom/twitter/android/TweetListActivity;

    invoke-direct {p0}, Lcom/twitter/android/client/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/u;->a:Lcom/twitter/android/TweetListActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TweetListActivity;->e(Ljava/lang/String;)Lcom/twitter/android/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/u;->a:Lcom/twitter/android/TweetListActivity;

    const v1, 0x7f09003e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;J)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/u;->a:Lcom/twitter/android/TweetListActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TweetListActivity;->e(Ljava/lang/String;)Lcom/twitter/android/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/u;->a:Lcom/twitter/android/TweetListActivity;

    const v1, 0x7f090038

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final b(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;J)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/u;->a:Lcom/twitter/android/TweetListActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TweetListActivity;->e(Ljava/lang/String;)Lcom/twitter/android/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/u;->a:Lcom/twitter/android/TweetListActivity;

    const v1, 0x7f090039

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final c(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;J)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/u;->a:Lcom/twitter/android/TweetListActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TweetListActivity;->e(Ljava/lang/String;)Lcom/twitter/android/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    const/16 v0, 0x194

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/u;->a:Lcom/twitter/android/TweetListActivity;

    const v1, 0x7f09003c

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
