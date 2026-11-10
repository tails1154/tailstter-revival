.class public Lcom/twitter/android/ListTabActivity;
.super Lcom/twitter/android/TwitterTabActivity;


# static fields
.field private static i:[Ljava/lang/String;


# instance fields
.field a:J

.field b:J

.field c:I

.field private g:J

.field private h:Lcom/twitter/android/ee;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "i_follow"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/ListTabActivity;->i:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/TwitterTabActivity;-><init>(Z)V

    iput v0, p0, Lcom/twitter/android/ListTabActivity;->c:I

    return-void
.end method


# virtual methods
.method final a()V
    .locals 10

    const/4 v2, 0x0

    sget-object v0, Lcom/twitter/android/provider/ad;->b:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/twitter/android/ListTabActivity;->a:J

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iget-object v0, p0, Lcom/twitter/android/ListTabActivity;->h:Lcom/twitter/android/ee;

    const/4 v1, 0x2

    sget-object v4, Lcom/twitter/android/ListTabActivity;->i:[Ljava/lang/String;

    const-string v5, "owner_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/twitter/android/ListTabActivity;->g:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/twitter/android/ee;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final b()V
    .locals 11

    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x1

    const-wide/16 v8, 0x0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/android/ListTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/twitter/android/TimelineActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "type"

    const/16 v6, 0x9

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "owner_id"

    iget-wide v6, p0, Lcom/twitter/android/ListTabActivity;->b:J

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v5, "tag"

    iget-wide v6, p0, Lcom/twitter/android/ListTabActivity;->a:J

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v5, "list_mode"

    invoke-virtual {p0}, Lcom/twitter/android/ListTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "list_mode"

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "timeline"

    invoke-virtual {v3, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    const v6, 0x7f02008f

    invoke-static {v0, v3, v6}, Lcom/twitter/android/ListTabActivity;->a(Landroid/view/LayoutInflater;Landroid/widget/TabHost;I)Lcom/twitter/android/widget/TabIndicator;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/twitter/android/UsersActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "type"

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "owner_id"

    iget-wide v6, p0, Lcom/twitter/android/ListTabActivity;->b:J

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v5, "tag"

    iget-wide v6, p0, Lcom/twitter/android/ListTabActivity;->a:J

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v5, "members"

    invoke-virtual {v3, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    const v6, 0x7f020092

    invoke-static {v0, v3, v6}, Lcom/twitter/android/ListTabActivity;->a(Landroid/view/LayoutInflater;Landroid/widget/TabHost;I)Lcom/twitter/android/widget/TabIndicator;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-wide v3, p0, Lcom/twitter/android/ListTabActivity;->a:J

    cmp-long v0, v3, v8

    if-lez v0, :cond_1

    iget-wide v3, p0, Lcom/twitter/android/ListTabActivity;->g:J

    cmp-long v0, v3, v8

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/ListTabActivity;->h:Lcom/twitter/android/ee;

    sget-object v3, Lcom/twitter/android/provider/ad;->b:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/twitter/android/ListTabActivity;->a:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/twitter/android/ListTabActivity;->i:[Ljava/lang/String;

    const-string v5, "owner_id=?"

    new-array v6, v1, [Ljava/lang/String;

    iget-wide v7, p0, Lcom/twitter/android/ListTabActivity;->g:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/twitter/android/ee;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v2, p0, Lcom/twitter/android/ListTabActivity;->a:J

    cmp-long v0, v2, v8

    if-lez v0, :cond_2

    iget-wide v2, p0, Lcom/twitter/android/ListTabActivity;->b:J

    cmp-long v0, v2, v8

    if-gtz v0, :cond_0

    :cond_2
    const v0, 0x7f090068

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/TwitterTabActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/twitter/android/ListTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "list_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "list_description"

    const-string v3, "description"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "list_fullname"

    const-string v3, "full_name"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "list_mode"

    const-string v3, "mode"

    const/4 v4, 0x0

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/twitter/android/ListTabActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const-wide/16 v5, 0x0

    invoke-super {p0, p1}, Lcom/twitter/android/TwitterTabActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/ListTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/ep;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/twitter/android/ep;-><init>(Lcom/twitter/android/ListTabActivity;Lcom/twitter/android/ed;)V

    iput-object v1, p0, Lcom/twitter/android/ListTabActivity;->e:Lcom/twitter/android/client/m;

    new-instance v1, Lcom/twitter/android/ee;

    invoke-direct {v1, p0, p0}, Lcom/twitter/android/ee;-><init>(Lcom/twitter/android/ListTabActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/twitter/android/ListTabActivity;->h:Lcom/twitter/android/ee;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "twitter"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "slug"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "screen_name"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    :goto_0
    const-string v3, "owner_id"

    invoke-virtual {v0, v3, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/ListTabActivity;->g:J

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/twitter/android/ListTabActivity;->b(Z)V

    iget-object v3, p0, Lcom/twitter/android/ListTabActivity;->d:Lcom/twitter/android/client/i;

    invoke-virtual {v3, v2, v1}, Lcom/twitter/android/client/i;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/twitter/android/ListTabActivity;->a(Ljava/lang/String;)V

    :goto_1
    const-string v2, "list_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/twitter/android/ListTabActivity;->c(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_0
    const-string v1, "slug"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "screen_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, "creator_id"

    invoke-virtual {v0, v2, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/twitter/android/ListTabActivity;->b:J

    const-string v2, "list_id"

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/twitter/android/ListTabActivity;->a:J

    invoke-virtual {p0}, Lcom/twitter/android/ListTabActivity;->b()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Lcom/twitter/android/ListTabActivity;->c(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/twitter/android/TwitterTabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/twitter/android/ListTabActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v1, 0x5

    const/4 v5, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/twitter/android/TwitterTabActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/twitter/android/ListTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/ListCreateEditActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "list_id"

    iget-wide v3, p0, Lcom/twitter/android/ListTabActivity;->a:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "name"

    const-string v3, "list_name"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "description"

    const-string v3, "list_description"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "full_name"

    const-string v3, "list_fullname"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mode"

    const-string v3, "list_mode"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1, v5}, Lcom/twitter/android/ListTabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v5

    goto :goto_1

    :pswitch_1
    new-instance v0, Lcom/twitter/android/ed;

    invoke-direct {v0, p0}, Lcom/twitter/android/ed;-><init>(Lcom/twitter/android/ListTabActivity;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09005f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090060

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0900a4

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900a5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move v0, v5

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/twitter/android/ListTabActivity;->d:Lcom/twitter/android/client/i;

    iget-wide v2, p0, Lcom/twitter/android/ListTabActivity;->a:J

    iget-wide v4, p0, Lcom/twitter/android/ListTabActivity;->b:J

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/client/i;->b(IJJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ListTabActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/twitter/android/ListTabActivity;->d:Lcom/twitter/android/client/i;

    iget-wide v2, p0, Lcom/twitter/android/ListTabActivity;->a:J

    iget-wide v4, p0, Lcom/twitter/android/ListTabActivity;->b:J

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/client/i;->a(IJJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ListTabActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0e00a3
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/twitter/android/TwitterTabActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    iget-wide v0, p0, Lcom/twitter/android/ListTabActivity;->b:J

    iget-object v2, p0, Lcom/twitter/android/ListTabActivity;->d:Lcom/twitter/android/client/i;

    invoke-virtual {v2}, Lcom/twitter/android/client/i;->h()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    move v0, v4

    :goto_0
    const v1, 0x7f0e00a3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f0e00a4

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f0e00a5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-nez v0, :cond_1

    iget v2, p0, Lcom/twitter/android/ListTabActivity;->c:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    move v2, v4

    :goto_1
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f0e00a6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/twitter/android/ListTabActivity;->c:I

    if-ne v0, v4, :cond_2

    move v0, v4

    :goto_2
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return v4

    :cond_0
    move v0, v5

    goto :goto_0

    :cond_1
    move v2, v5

    goto :goto_1

    :cond_2
    move v0, v5

    goto :goto_2
.end method

.method protected onResume()V
    .locals 4

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/twitter/android/ListTabActivity;->d:Lcom/twitter/android/client/i;

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/twitter/android/ListTabActivity;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/twitter/android/ListTabActivity;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/twitter/android/ListTabActivity;->c()Z

    move-result v0

    invoke-super {p0}, Lcom/twitter/android/TwitterTabActivity;->onResume()V

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/ListTabActivity;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/ListTabActivity;->c:I

    invoke-virtual {p0}, Lcom/twitter/android/ListTabActivity;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0}, Lcom/twitter/android/TwitterTabActivity;->onResume()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Lcom/twitter/android/TwitterTabActivity;->onStart()V

    sget-object v0, Lcom/twitter/android/service/l;->h:Lcom/twitter/android/service/l;

    invoke-static {p0, v0}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;Lcom/twitter/android/service/l;)V

    return-void
.end method
