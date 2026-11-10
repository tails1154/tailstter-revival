.class final Lcom/twitter/android/es;
.super Lcom/twitter/android/u;


# instance fields
.field private synthetic a:Lcom/twitter/android/TimelineActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/TimelineActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/TimelineActivity;

    invoke-direct {p0, p1}, Lcom/twitter/android/u;-><init>(Lcom/twitter/android/TweetListActivity;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/TimelineActivity;Lcom/twitter/android/af;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/es;-><init>(Lcom/twitter/android/TimelineActivity;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;JJII)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/TimelineActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TimelineActivity;->e(Ljava/lang/String;)Lcom/twitter/android/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/TimelineActivity;

    iget v0, v0, Lcom/twitter/android/cj;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/TimelineActivity;->d(I)V

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/TimelineActivity;

    const v1, 0x7f090036

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final b(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;JJII)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/TimelineActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TimelineActivity;->e(Ljava/lang/String;)Lcom/twitter/android/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/TimelineActivity;

    iget v0, v0, Lcom/twitter/android/cj;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/TimelineActivity;->d(I)V

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/TimelineActivity;

    const v1, 0x7f090036

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final c(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/TimelineActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TimelineActivity;->e(Ljava/lang/String;)Lcom/twitter/android/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/TimelineActivity;

    iget v0, v0, Lcom/twitter/android/cj;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/TimelineActivity;->d(I)V

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/TimelineActivity;

    const v1, 0x7f090036

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final i(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;J)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/TimelineActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TimelineActivity;->e(Ljava/lang/String;)Lcom/twitter/android/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/TimelineActivity;

    iget v0, v0, Lcom/twitter/android/cj;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/TimelineActivity;->d(I)V

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/TimelineActivity;

    const v1, 0x7f090036

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final j(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;J)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/TimelineActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TimelineActivity;->e(Ljava/lang/String;)Lcom/twitter/android/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/TimelineActivity;

    iget v0, v0, Lcom/twitter/android/cj;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/TimelineActivity;->d(I)V

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/TimelineActivity;

    const v1, 0x7f090036

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final k(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;J)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/TimelineActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TimelineActivity;->e(Ljava/lang/String;)Lcom/twitter/android/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/TimelineActivity;

    iget v0, v0, Lcom/twitter/android/cj;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/TimelineActivity;->d(I)V

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/TimelineActivity;

    const v1, 0x7f090036

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final m(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/TimelineActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TimelineActivity;->e(Ljava/lang/String;)Lcom/twitter/android/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/TimelineActivity;

    iget v0, v0, Lcom/twitter/android/cj;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/TimelineActivity;->d(I)V

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/TimelineActivity;

    const v1, 0x7f090036

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final n(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/TimelineActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TimelineActivity;->e(Ljava/lang/String;)Lcom/twitter/android/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/TimelineActivity;

    iget v0, v0, Lcom/twitter/android/cj;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/TimelineActivity;->d(I)V

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/TimelineActivity;

    const v1, 0x7f090036

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final o(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/TimelineActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TimelineActivity;->e(Ljava/lang/String;)Lcom/twitter/android/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/TimelineActivity;

    iget v0, v0, Lcom/twitter/android/cj;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/TimelineActivity;->d(I)V

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/es;->a:Lcom/twitter/android/TimelineActivity;

    const v1, 0x7f090036

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
