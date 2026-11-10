.class public Lcom/twitter/android/MessagesActivity;
.super Lcom/twitter/android/TwitterListActivity;


# instance fields
.field private a:Lcom/twitter/android/cg;

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/android/TwitterListActivity;-><init>()V

    return-void
.end method

.method private c(I)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    iget-object v0, p0, Lcom/twitter/android/MessagesActivity;->h:Lcom/twitter/android/client/i;

    move-wide v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/client/i;->b(JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/twitter/android/MessagesActivity;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/twitter/android/MessagesActivity;->h:Lcom/twitter/android/client/i;

    move-wide v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/client/i;->c(JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/twitter/android/MessagesActivity;->a(Ljava/lang/String;I)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/twitter/android/MessagesActivity;->b_(I)V

    return v6

    :pswitch_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "messages"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {p0, v0, v6}, Lcom/twitter/android/platform/TwitterDataSyncService;->a(Landroid/content/Context;Landroid/os/Bundle;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2

    const/4 v1, 0x3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/MessagesActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/twitter/android/MessagesActivity;->c(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/twitter/android/platform/TwitterDataSyncService;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/twitter/android/MessagesActivity;->c(I)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/twitter/android/MessagesActivity;->d(I)V

    goto :goto_0
.end method

.method public final a_()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/twitter/android/MessagesActivity;->c(I)Z

    return-void
.end method

.method protected final d()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1, v2}, Lcom/twitter/android/TwitterListActivity;->a(Landroid/os/Bundle;Z)V

    iget-object v0, p0, Lcom/twitter/android/MessagesActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->f()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "state_delete_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/MessagesActivity;->b:J

    :cond_1
    new-instance v0, Lcom/twitter/android/ct;

    iget-object v1, p0, Lcom/twitter/android/MessagesActivity;->h:Lcom/twitter/android/client/i;

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/ct;-><init>(Landroid/content/Context;Lcom/twitter/android/client/i;)V

    iput-object v0, p0, Lcom/twitter/android/MessagesActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {p0}, Lcom/twitter/android/MessagesActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/MessagesActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setScrollbarFadingEnabled(Z)V

    const v0, 0x7f09001b

    invoke-virtual {p0, v0}, Lcom/twitter/android/MessagesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/MessagesActivity;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/twitter/android/cg;

    invoke-virtual {p0}, Lcom/twitter/android/MessagesActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/cg;-><init>(Lcom/twitter/android/TwitterListActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/twitter/android/MessagesActivity;->a:Lcom/twitter/android/cg;

    new-instance v0, Lcom/twitter/android/bq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/bq;-><init>(Lcom/twitter/android/MessagesActivity;Lcom/twitter/android/r;)V

    iput-object v0, p0, Lcom/twitter/android/MessagesActivity;->i:Lcom/twitter/android/client/m;

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/MessagesActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/MessagesActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->r()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/MessagesActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->s()V

    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twitter/android/client/f;->a(IZ)V

    invoke-super {p0}, Lcom/twitter/android/TwitterListActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 8

    const/4 v7, 0x4

    const/4 v1, 0x3

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/twitter/android/TwitterListActivity;->onResume()V

    iget-object v0, p0, Lcom/twitter/android/MessagesActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->f()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/MessagesActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/twitter/android/MessagesActivity;->b_(I)V

    iget-object v0, p0, Lcom/twitter/android/MessagesActivity;->a:Lcom/twitter/android/cg;

    iget-object v1, p0, Lcom/twitter/android/MessagesActivity;->j:Landroid/widget/CursorAdapter;

    sget-object v2, Lcom/twitter/android/provider/g;->a:Landroid/net/Uri;

    sget-object v3, Lcom/twitter/android/provider/af;->a:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/android/cg;->a(Landroid/widget/CursorAdapter;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    const/4 v0, 0x0

    invoke-static {v7, v0}, Lcom/twitter/android/client/f;->a(IZ)V

    invoke-static {p0, v7}, Lcom/twitter/android/client/f;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/twitter/android/MessagesActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/twitter/android/MessagesActivity;->c(I)Z

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/twitter/android/TwitterListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "state_delete_key"

    iget-wide v1, p0, Lcom/twitter/android/MessagesActivity;->b:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Lcom/twitter/android/TwitterListActivity;->onStart()V

    sget-object v0, Lcom/twitter/android/service/l;->f:Lcom/twitter/android/service/l;

    invoke-static {p0, v0}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;Lcom/twitter/android/service/l;)V

    return-void
.end method
