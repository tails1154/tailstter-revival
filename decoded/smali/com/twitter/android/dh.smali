.class final Lcom/twitter/android/dh;
.super Lcom/twitter/android/client/m;


# instance fields
.field private synthetic a:Lcom/twitter/android/ProfileActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/ProfileActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/dh;->a:Lcom/twitter/android/ProfileActivity;

    invoke-direct {p0}, Lcom/twitter/android/client/m;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/ProfileActivity;Lcom/twitter/android/dw;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/dh;-><init>(Lcom/twitter/android/ProfileActivity;)V

    return-void
.end method


# virtual methods
.method public final h(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/dh;->a:Lcom/twitter/android/ProfileActivity;

    iget-wide v0, v0, Lcom/twitter/android/ProfileActivity;->b:J

    cmp-long v0, p5, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/dh;->a:Lcom/twitter/android/ProfileActivity;

    invoke-virtual {v0}, Lcom/twitter/android/ProfileActivity;->b()V

    :cond_0
    return-void
.end method

.method public final i(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/twitter/android/dh;->a:Lcom/twitter/android/ProfileActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/ProfileActivity;->e(Ljava/lang/String;)Lcom/twitter/android/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/dh;->a:Lcom/twitter/android/ProfileActivity;

    iget v1, v0, Lcom/twitter/android/ProfileActivity;->c:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Lcom/twitter/android/ProfileActivity;->c:I

    iget-object v0, p0, Lcom/twitter/android/dh;->a:Lcom/twitter/android/ProfileActivity;

    const v1, 0x7f02003a

    const v2, 0x7f0900c6

    invoke-virtual {v0, v3, v1, v2}, Lcom/twitter/android/ProfileActivity;->a(ZII)V

    iget-object v0, p0, Lcom/twitter/android/dh;->a:Lcom/twitter/android/ProfileActivity;

    const v1, 0x7f090051

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final j(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/twitter/android/dh;->a:Lcom/twitter/android/ProfileActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/ProfileActivity;->e(Ljava/lang/String;)Lcom/twitter/android/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/dh;->a:Lcom/twitter/android/ProfileActivity;

    iget v1, v0, Lcom/twitter/android/ProfileActivity;->c:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/twitter/android/ProfileActivity;->c:I

    iget-object v0, p0, Lcom/twitter/android/dh;->a:Lcom/twitter/android/ProfileActivity;

    const v1, 0x7f0200a5

    const v2, 0x7f090052

    invoke-virtual {v0, v3, v1, v2}, Lcom/twitter/android/ProfileActivity;->a(ZII)V

    iget-object v0, p0, Lcom/twitter/android/dh;->a:Lcom/twitter/android/ProfileActivity;

    const v1, 0x7f090054

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
