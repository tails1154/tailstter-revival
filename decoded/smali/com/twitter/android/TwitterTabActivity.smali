.class public Lcom/twitter/android/TwitterTabActivity;
.super Landroid/app/TabActivity;

# interfaces
.implements Lcom/twitter/android/f;
.implements Lcom/twitter/android/widget/f;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Landroid/widget/TextView;

.field private c:Z

.field protected d:Lcom/twitter/android/client/i;

.field protected e:Lcom/twitter/android/client/m;

.field protected f:Lcom/twitter/android/widget/Navbar;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    iput-boolean p1, p0, Lcom/twitter/android/TwitterTabActivity;->c:Z

    return-void
.end method

.method protected static a(Landroid/view/LayoutInflater;Landroid/widget/TabHost;I)Lcom/twitter/android/widget/TabIndicator;
    .locals 3

    const v0, 0x7f030012

    invoke-virtual {p1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/twitter/android/widget/TabIndicator;

    invoke-virtual {p0, p2}, Lcom/twitter/android/widget/TabIndicator;->a(I)V

    return-object p0
.end method

.method private a()V
    .locals 3

    invoke-virtual {p0}, Lcom/twitter/android/TwitterTabActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/HomeTabActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/twitter/android/TwitterTabActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/os/Bundle;I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, p2}, Lcom/twitter/android/TwitterTabActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/twitter/android/client/i;->a(Landroid/content/Context;)Lcom/twitter/android/client/i;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TwitterTabActivity;->d:Lcom/twitter/android/client/i;

    iget-boolean v0, p0, Lcom/twitter/android/TwitterTabActivity;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TwitterTabActivity;->d:Lcom/twitter/android/client/i;

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/TwitterTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/twitter/android/StartActivity;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "pending_reqs"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TwitterTabActivity;->a:Ljava/util/ArrayList;

    :goto_1
    const v0, 0x7f0e0019

    invoke-virtual {p0, v0}, Lcom/twitter/android/TwitterTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/Navbar;

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/Navbar;->a(Lcom/twitter/android/widget/f;)V

    iput-object v0, p0, Lcom/twitter/android/TwitterTabActivity;->f:Lcom/twitter/android/widget/Navbar;

    invoke-virtual {p0}, Lcom/twitter/android/TwitterTabActivity;->d_()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/TwitterTabActivity;->a:Ljava/util/ArrayList;

    goto :goto_1
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/TwitterTabActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a_(I)V
    .locals 2

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/twitter/android/TwitterTabActivity;->a()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/twitter/android/TwitterTabActivity;->onSearchRequested()Z

    goto :goto_0

    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/PostActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.twitter.android.post.status"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/TwitterTabActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0e001a -> :sswitch_0
        0x7f0e001c -> :sswitch_2
        0x7f0e003d -> :sswitch_1
    .end sparse-switch
.end method

.method protected final b(Z)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/TwitterTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    const v1, 0x7f0e0041

    invoke-virtual {p0, v1}, Lcom/twitter/android/TwitterTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->setVisibility(I)V

    invoke-virtual {p0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->setVisibility(I)V

    invoke-virtual {p0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final b(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/TwitterTabActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/TwitterTabActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected final c()Z
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/TwitterTabActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d_()V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/TwitterTabActivity;->f:Lcom/twitter/android/widget/Navbar;

    const v1, 0x7f0e001a

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/Navbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/TwitterTabActivity;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/twitter/android/TwitterTabActivity;->d:Lcom/twitter/android/client/i;

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TwitterTabActivity;->f:Lcom/twitter/android/widget/Navbar;

    const/16 v1, 0x8

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/widget/Navbar;->a(I[I)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x7f0e001c
        0x7f0e003d
    .end array-data
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/app/TabActivity;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/twitter/android/TwitterTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    const v0, 0x7f03002b

    invoke-virtual {p0, p1, v0}, Lcom/twitter/android/TwitterTabActivity;->a(Landroid/os/Bundle;I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    iget-object v0, p0, Lcom/twitter/android/TwitterTabActivity;->d:Lcom/twitter/android/client/i;

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/TwitterTabActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0f0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/TabActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/twitter/android/TwitterTabActivity;->a()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0e00a0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    iget-object v0, p0, Lcom/twitter/android/TwitterTabActivity;->d:Lcom/twitter/android/client/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TwitterTabActivity;->e:Lcom/twitter/android/client/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TwitterTabActivity;->d:Lcom/twitter/android/client/i;

    iget-object v1, p0, Lcom/twitter/android/TwitterTabActivity;->e:Lcom/twitter/android/client/m;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/i;->b(Lcom/twitter/android/client/m;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    invoke-static {p0}, Lcom/twitter/android/client/i;->a(Landroid/content/Context;)Lcom/twitter/android/client/i;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TwitterTabActivity;->d:Lcom/twitter/android/client/i;

    iget-boolean v0, p0, Lcom/twitter/android/TwitterTabActivity;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/TwitterTabActivity;->d:Lcom/twitter/android/client/i;

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->f()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/twitter/android/StartActivity;->a(Landroid/app/Activity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/TwitterTabActivity;->e:Lcom/twitter/android/client/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TwitterTabActivity;->d:Lcom/twitter/android/client/i;

    iget-object v1, p0, Lcom/twitter/android/TwitterTabActivity;->e:Lcom/twitter/android/client/m;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/i;->a(Lcom/twitter/android/client/m;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/TabActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "pending_reqs"

    iget-object v1, p0, Lcom/twitter/android/TwitterTabActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onSearchRequested()Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/TwitterTabActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    return v0
.end method
