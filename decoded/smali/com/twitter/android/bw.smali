.class final Lcom/twitter/android/bw;
.super Lcom/twitter/android/client/m;


# instance fields
.field private synthetic a:Lcom/twitter/android/HomeTabActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/HomeTabActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/bw;->a:Lcom/twitter/android/HomeTabActivity;

    invoke-direct {p0}, Lcom/twitter/android/client/m;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/HomeTabActivity;Lcom/twitter/android/eg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/bw;-><init>(Lcom/twitter/android/HomeTabActivity;)V

    return-void
.end method

.method private a(I)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/bw;->a:Lcom/twitter/android/HomeTabActivity;

    invoke-virtual {v0}, Lcom/twitter/android/HomeTabActivity;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/twitter/android/widget/TabIndicator;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TabIndicator;->a(Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;II)V
    .locals 1

    if-lez p5, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/twitter/android/bw;->a(I)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;JJII)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-nez v0, :cond_0

    if-lez p9, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/bw;->a(I)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;JJII)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-nez v0, :cond_0

    if-lez p9, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twitter/android/bw;->a(I)V

    :cond_0
    return-void
.end method

.method public final c(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1

    if-lez p5, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twitter/android/bw;->a(I)V

    :cond_0
    return-void
.end method

.method public final f(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/bw;->a(I)V

    :cond_0
    return-void
.end method

.method public final g(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/bw;->a:Lcom/twitter/android/HomeTabActivity;

    invoke-static {v0}, Lcom/twitter/android/StartActivity;->a(Landroid/app/Activity;)V

    return-void
.end method
