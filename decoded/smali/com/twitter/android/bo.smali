.class final Lcom/twitter/android/bo;
.super Lcom/twitter/android/client/m;


# instance fields
.field private synthetic a:Lcom/twitter/android/ProfileTabActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/ProfileTabActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/bo;->a:Lcom/twitter/android/ProfileTabActivity;

    invoke-direct {p0}, Lcom/twitter/android/client/m;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/ProfileTabActivity;Lcom/twitter/android/ae;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/bo;-><init>(Lcom/twitter/android/ProfileTabActivity;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;Lac;)V
    .locals 4

    const v1, 0x7f090045

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/twitter/android/bo;->a:Lcom/twitter/android/ProfileTabActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/ProfileTabActivity;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p5, :cond_3

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/bo;->a:Lcom/twitter/android/ProfileTabActivity;

    iget-object v1, p5, Lac;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/twitter/android/ProfileTabActivity;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/bo;->a:Lcom/twitter/android/ProfileTabActivity;

    iget-wide v1, p5, Lac;->a:J

    iput-wide v1, v0, Lcom/twitter/android/ProfileTabActivity;->b:J

    iget-object v0, p0, Lcom/twitter/android/bo;->a:Lcom/twitter/android/ProfileTabActivity;

    invoke-virtual {v0}, Lcom/twitter/android/ProfileTabActivity;->a()V

    move v0, v3

    :goto_0
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/bo;->a:Lcom/twitter/android/ProfileTabActivity;

    invoke-virtual {v1, v3}, Lcom/twitter/android/ProfileTabActivity;->b(Z)V

    iget-object v1, p0, Lcom/twitter/android/bo;->a:Lcom/twitter/android/ProfileTabActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/twitter/android/bo;->a:Lcom/twitter/android/ProfileTabActivity;

    invoke-virtual {v0}, Lcom/twitter/android/ProfileTabActivity;->finish()V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x193

    if-ne p3, v0, :cond_2

    iget-boolean v0, p5, Lac;->g:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0900ae

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/16 v0, 0x194

    if-ne p3, v0, :cond_4

    const v0, 0x7f0900f2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method
