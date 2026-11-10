.class final Lcom/twitter/android/ci;
.super Lcom/twitter/android/client/m;


# instance fields
.field private synthetic a:Lcom/twitter/android/UsersActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/UsersActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/UsersActivity;

    invoke-direct {p0}, Lcom/twitter/android/client/m;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/UsersActivity;Lcom/twitter/android/cr;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/ci;-><init>(Lcom/twitter/android/UsersActivity;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;IJJ)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/UsersActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/UsersActivity;->e(Ljava/lang/String;)Lcom/twitter/android/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/UsersActivity;

    const v1, 0x7f090058

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final b(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;IJJ)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/UsersActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/UsersActivity;->e(Ljava/lang/String;)Lcom/twitter/android/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/UsersActivity;

    const v1, 0x7f090057

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final b(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;JI)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/UsersActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/UsersActivity;->e(Ljava/lang/String;)Lcom/twitter/android/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/UsersActivity;

    iget v0, v0, Lcom/twitter/android/cj;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/UsersActivity;->d(I)V

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/UsersActivity;

    const v1, 0x7f090049

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final c(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;JI)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/UsersActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/UsersActivity;->e(Ljava/lang/String;)Lcom/twitter/android/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/UsersActivity;

    iget v0, v0, Lcom/twitter/android/cj;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/UsersActivity;->d(I)V

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/UsersActivity;

    const v1, 0x7f090049

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final d(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;J)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/UsersActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/UsersActivity;->e(Ljava/lang/String;)Lcom/twitter/android/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/UsersActivity;

    const v1, 0x7f09004f

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final e(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;J)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/UsersActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/UsersActivity;->e(Ljava/lang/String;)Lcom/twitter/android/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/UsersActivity;

    const v1, 0x7f09004d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final f(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;J)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/UsersActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/UsersActivity;->e(Ljava/lang/String;)Lcom/twitter/android/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/UsersActivity;

    const v1, 0x7f090050

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final h(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/UsersActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/UsersActivity;->e(Ljava/lang/String;)Lcom/twitter/android/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/UsersActivity;

    iget v0, v0, Lcom/twitter/android/cj;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/UsersActivity;->d(I)V

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/UsersActivity;

    const v1, 0x7f090049

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final i(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/UsersActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/UsersActivity;->e(Ljava/lang/String;)Lcom/twitter/android/cj;

    return-void
.end method

.method public final j(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/UsersActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/UsersActivity;->e(Ljava/lang/String;)Lcom/twitter/android/cj;

    return-void
.end method

.method public final k(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/UsersActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/UsersActivity;->e(Ljava/lang/String;)Lcom/twitter/android/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/UsersActivity;

    iget v0, v0, Lcom/twitter/android/cj;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/UsersActivity;->d(I)V

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/UsersActivity;

    const v1, 0x7f090049

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final l(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/UsersActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/UsersActivity;->e(Ljava/lang/String;)Lcom/twitter/android/cj;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/UsersActivity;

    iget-object v0, v0, Lcom/twitter/android/UsersActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v0, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/UsersActivity;

    const v3, 0x7f0e003a

    invoke-virtual {v0, v3}, Lcom/twitter/android/UsersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/UsersActivity;

    invoke-virtual {v3}, Lcom/twitter/android/UsersActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0008

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/UsersActivity;

    iget v1, v1, Lcom/twitter/android/cj;->b:I

    invoke-virtual {v0, v1}, Lcom/twitter/android/UsersActivity;->d(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/android/UsersActivity;

    invoke-virtual {v0}, Lcom/twitter/android/UsersActivity;->k()V

    goto :goto_0
.end method
