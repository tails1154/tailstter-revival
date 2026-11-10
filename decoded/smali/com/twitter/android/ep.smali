.class final Lcom/twitter/android/ep;
.super Lcom/twitter/android/client/m;


# instance fields
.field private synthetic a:Lcom/twitter/android/ListTabActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/ListTabActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/ep;->a:Lcom/twitter/android/ListTabActivity;

    invoke-direct {p0}, Lcom/twitter/android/client/m;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/ListTabActivity;Lcom/twitter/android/ed;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/ep;-><init>(Lcom/twitter/android/ListTabActivity;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;IJJ)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/twitter/android/ep;->a:Lcom/twitter/android/ListTabActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/ListTabActivity;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/ep;->a:Lcom/twitter/android/ListTabActivity;

    iput v2, v0, Lcom/twitter/android/ListTabActivity;->c:I

    const v0, 0x7f090062

    :goto_0
    iget-object v1, p0, Lcom/twitter/android/ep;->a:Lcom/twitter/android/ListTabActivity;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void

    :cond_1
    const v0, 0x7f090063

    goto :goto_0
.end method

.method public final a(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;JJ)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/ep;->a:Lcom/twitter/android/ListTabActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/ListTabActivity;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/ep;->a:Lcom/twitter/android/ListTabActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/ListTabActivity;->b(Z)V

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ep;->a:Lcom/twitter/android/ListTabActivity;

    iput-wide p5, v0, Lcom/twitter/android/ListTabActivity;->b:J

    iget-object v0, p0, Lcom/twitter/android/ep;->a:Lcom/twitter/android/ListTabActivity;

    iput-wide p7, v0, Lcom/twitter/android/ListTabActivity;->a:J

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ep;->a:Lcom/twitter/android/ListTabActivity;

    invoke-virtual {v0}, Lcom/twitter/android/ListTabActivity;->b()V

    :cond_1
    return-void
.end method

.method public final b(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;IJJ)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/ep;->a:Lcom/twitter/android/ListTabActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/ListTabActivity;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/ep;->a:Lcom/twitter/android/ListTabActivity;

    const/4 v1, 0x2

    iput v1, v0, Lcom/twitter/android/ListTabActivity;->c:I

    const v0, 0x7f090064

    :goto_0
    iget-object v1, p0, Lcom/twitter/android/ep;->a:Lcom/twitter/android/ListTabActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void

    :cond_1
    const v0, 0x7f090065

    goto :goto_0
.end method

.method public final c(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;IJJ)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/ep;->a:Lcom/twitter/android/ListTabActivity;

    iget-wide v0, v0, Lcom/twitter/android/ListTabActivity;->a:J

    cmp-long v0, v0, p6

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/ep;->a:Lcom/twitter/android/ListTabActivity;

    iget-object v0, v0, Lcom/twitter/android/ListTabActivity;->d:Lcom/twitter/android/client/i;

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->h()J

    move-result-wide v0

    cmp-long v0, p8, v0

    if-nez v0, :cond_1

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    const/16 v0, 0x194

    if-ne p3, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ep;->a:Lcom/twitter/android/ListTabActivity;

    invoke-virtual {v0}, Lcom/twitter/android/ListTabActivity;->a()V

    :cond_1
    return-void
.end method
