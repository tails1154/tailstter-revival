.class public Lcom/twitter/android/WelcomeActivity;
.super Lcom/twitter/android/TwitterListActivity;


# instance fields
.field private a:Lcom/twitter/android/cu;

.field private b:Lcom/twitter/android/cg;

.field private c:I

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/android/TwitterListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2

    const/4 v1, 0x3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/WelcomeActivity;->a:Lcom/twitter/android/cu;

    invoke-virtual {v0}, Lcom/twitter/android/cu;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/WelcomeActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/WelcomeActivity;->a(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/twitter/android/WelcomeActivity;->d(I)V

    goto :goto_0
.end method

.method public final a_(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/twitter/android/TwitterListActivity;->a_(I)V

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "home"

    invoke-virtual {p0, v0}, Lcom/twitter/android/WelcomeActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0e001c
        :pswitch_0
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "followers"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/twitter/android/WelcomeActivity;->c:I

    add-int/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/WelcomeActivity;->c:I

    iget v0, p0, Lcom/twitter/android/WelcomeActivity;->c:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/WelcomeActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/WelcomeActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/WelcomeActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f0900fb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget v0, p0, Lcom/twitter/android/WelcomeActivity;->c:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/twitter/android/WelcomeActivity;->o:Landroid/widget/TextView;

    const v1, 0x7f0900f8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    iget-object v0, p0, Lcom/twitter/android/WelcomeActivity;->e:Landroid/widget/TextView;

    iget v1, p0, Lcom/twitter/android/WelcomeActivity;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twitter/android/WelcomeActivity;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/twitter/android/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0007

    iget v3, p0, Lcom/twitter/android/WelcomeActivity;->c:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twitter/android/WelcomeActivity;->p:Landroid/widget/Button;

    const v1, 0x7f0900fd

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/WelcomeActivity;->o:Landroid/widget/TextView;

    const v1, 0x7f0900f9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/twitter/android/WelcomeActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/WelcomeActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/WelcomeActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f0900fa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/twitter/android/WelcomeActivity;->p:Landroid/widget/Button;

    const v1, 0x7f0900f4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v2, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const v0, 0x7f030036

    invoke-super {p0, p1, v0, v8, v9}, Lcom/twitter/android/TwitterListActivity;->a(Landroid/os/Bundle;IZZ)V

    iget-object v0, p0, Lcom/twitter/android/WelcomeActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->f()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0e008f

    invoke-virtual {p0, v0}, Lcom/twitter/android/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/WelcomeActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0e0090

    invoke-virtual {p0, v0}, Lcom/twitter/android/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/WelcomeActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f0e0091

    invoke-virtual {p0, v0}, Lcom/twitter/android/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/WelcomeActivity;->n:Landroid/widget/TextView;

    const v0, 0x7f0e0092

    invoke-virtual {p0, v0}, Lcom/twitter/android/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/WelcomeActivity;->o:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/twitter/android/WelcomeActivity;->k:Lcom/twitter/android/widget/Navbar;

    const v1, 0x7f0e001c

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/Navbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/twitter/android/WelcomeActivity;->p:Landroid/widget/Button;

    new-instance v0, Lcom/twitter/android/cu;

    invoke-direct {v0, p0}, Lcom/twitter/android/cu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/android/WelcomeActivity;->a:Lcom/twitter/android/cu;

    new-instance v0, Lcom/twitter/android/cg;

    invoke-virtual {p0}, Lcom/twitter/android/WelcomeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/cg;-><init>(Lcom/twitter/android/TwitterListActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/twitter/android/WelcomeActivity;->b:Lcom/twitter/android/cg;

    new-instance v0, Lcom/twitter/android/an;

    invoke-direct {v0, p0, v10}, Lcom/twitter/android/an;-><init>(Lcom/twitter/android/WelcomeActivity;Lcom/twitter/android/ce;)V

    iput-object v0, p0, Lcom/twitter/android/WelcomeActivity;->i:Lcom/twitter/android/client/m;

    new-instance v0, Lcom/twitter/android/bg;

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    new-array v2, v2, [Landroid/widget/BaseAdapter;

    new-instance v3, Lcom/twitter/android/dr;

    new-array v4, v9, [Lcom/twitter/android/dn;

    new-instance v5, Lcom/twitter/android/dn;

    const v6, 0x7f0900f6

    invoke-virtual {p0, v6}, Lcom/twitter/android/WelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f02003f

    invoke-direct {v5, v6, v7, v10}, Lcom/twitter/android/dn;-><init>(Ljava/lang/String;ILandroid/content/Intent;)V

    aput-object v5, v4, v8

    invoke-direct {v3, v4}, Lcom/twitter/android/dr;-><init>([Lcom/twitter/android/dn;)V

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/twitter/android/WelcomeActivity;->a:Lcom/twitter/android/cu;

    aput-object v3, v2, v9

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/bg;-><init>([I[Landroid/widget/BaseAdapter;)V

    invoke-virtual {p0}, Lcom/twitter/android/WelcomeActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    :array_0
    .array-data 4
        0x7f0900f5
        0x7f0900f3
    .end array-data
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/UsersActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    const-string v1, "com.twitter.android.intent.action.FOLLOW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/WelcomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/WelcomeActivity;->a:Lcom/twitter/android/cu;

    iget-object v1, p0, Lcom/twitter/android/WelcomeActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v1}, Lcom/twitter/android/client/i;->h()J

    move-result-wide v2

    const/4 v1, 0x3

    sub-int v4, p3, v1

    move-object v1, p0

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/android/cu;->a(Landroid/content/Context;JIJ)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 7

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/twitter/android/TwitterListActivity;->onResume()V

    iget-object v0, p0, Lcom/twitter/android/WelcomeActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->f()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/WelcomeActivity;->a:Lcom/twitter/android/cu;

    invoke-virtual {v0}, Lcom/twitter/android/cu;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/WelcomeActivity;->b_(I)V

    iget-object v0, p0, Lcom/twitter/android/WelcomeActivity;->b:Lcom/twitter/android/cg;

    iget-object v1, p0, Lcom/twitter/android/WelcomeActivity;->a:Lcom/twitter/android/cu;

    sget-object v2, Lcom/twitter/android/provider/a;->a:Landroid/net/Uri;

    sget-object v3, Lcom/twitter/android/cu;->a:[Ljava/lang/String;

    const-string v4, "type=7"

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/android/cg;->a(Landroid/widget/CursorAdapter;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
