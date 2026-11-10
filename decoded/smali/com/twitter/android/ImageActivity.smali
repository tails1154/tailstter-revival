.class public Lcom/twitter/android/ImageActivity;
.super Landroid/app/Activity;


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/twitter/android/ImageActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/twitter/android/ImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must be started with a valid Uri"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const v0, 0x7f0e0040

    invoke-virtual {p0, v0}, Lcom/twitter/android/ImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/ImageActivity;->a:Landroid/widget/ImageView;

    const v0, 0x7f0e0041

    invoke-virtual {p0, v0}, Lcom/twitter/android/ImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/twitter/android/ImageActivity;->b:Landroid/widget/ProgressBar;

    new-instance v0, Lcom/twitter/android/am;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/twitter/android/am;-><init>(Lcom/twitter/android/ImageActivity;Lcom/twitter/android/ai;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/twitter/android/am;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
