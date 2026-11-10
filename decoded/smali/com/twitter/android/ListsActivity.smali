.class public Lcom/twitter/android/ListsActivity;
.super Lcom/twitter/android/TwitterListActivity;


# instance fields
.field a:J

.field b:I

.field private c:Lcom/twitter/android/cg;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/android/TwitterListActivity;-><init>()V

    return-void
.end method

.method private c(I)V
    .locals 5

    iget v0, p0, Lcom/twitter/android/ListsActivity;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ListsActivity;->h:Lcom/twitter/android/client/i;

    iget-wide v1, p0, Lcom/twitter/android/ListsActivity;->a:J

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/twitter/android/ListsActivity;->a(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/i;->b(JII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/twitter/android/ListsActivity;->a(Ljava/lang/String;I)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/twitter/android/ListsActivity;->b_(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ListsActivity;->h:Lcom/twitter/android/client/i;

    iget-wide v1, p0, Lcom/twitter/android/ListsActivity;->a:J

    iget v3, p0, Lcom/twitter/android/ListsActivity;->b:I

    invoke-virtual {p0, p1}, Lcom/twitter/android/ListsActivity;->a(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/i;->b(JII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/twitter/android/ListsActivity;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method final a(I)I
    .locals 3

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid fetch type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move v0, v1

    :goto_0
    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/ListsActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2

    const/4 v1, 0x3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ListsActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/twitter/android/ListsActivity;->c(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/twitter/android/ListsActivity;->d(I)V

    goto :goto_0
.end method

.method protected final a(Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twitter/android/ListsActivity;->c(I)V

    :cond_0
    return-void
.end method

.method public final a_()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/twitter/android/ListsActivity;->c(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lcom/twitter/android/TwitterListActivity;->a(Landroid/os/Bundle;Z)V

    iget-object v0, p0, Lcom/twitter/android/ListsActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {p0}, Lcom/twitter/android/ListsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "user_id"

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->h()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/twitter/android/ListsActivity;->a:J

    const-string v2, "type"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/twitter/android/ListsActivity;->b:I

    const-string v2, "profile"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0}, Lcom/twitter/android/ListsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v3

    new-instance v4, Lcom/twitter/android/ck;

    if-nez v3, :cond_2

    const/4 v5, 0x1

    :goto_0
    invoke-direct {v4, p0, v5}, Lcom/twitter/android/ck;-><init>(Landroid/content/Context;Z)V

    iput-object v4, p0, Lcom/twitter/android/ListsActivity;->j:Landroid/widget/CursorAdapter;

    if-nez v3, :cond_4

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/twitter/android/TimelineActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "owner_id"

    iget-wide v6, p0, Lcom/twitter/android/ListsActivity;->a:J

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v5, "type"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/twitter/android/SULActivity;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v1, :cond_3

    new-instance v1, Lcom/twitter/android/bg;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/widget/BaseAdapter;

    const/4 v6, 0x0

    new-instance v7, Lcom/twitter/android/dr;

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/twitter/android/dn;

    const/4 v9, 0x0

    new-instance v10, Lcom/twitter/android/dn;

    const v11, 0x7f090024

    invoke-virtual {p0, v11}, Lcom/twitter/android/ListsActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f02003d

    invoke-direct {v10, v11, v12, v4}, Lcom/twitter/android/dn;-><init>(Ljava/lang/String;ILandroid/content/Intent;)V

    aput-object v10, v8, v9

    invoke-direct {v7, v8}, Lcom/twitter/android/dr;-><init>([Lcom/twitter/android/dn;)V

    aput-object v7, v5, v6

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/twitter/android/ListsActivity;->j:Landroid/widget/CursorAdapter;

    aput-object v6, v5, v4

    invoke-direct {v1, v5}, Lcom/twitter/android/bg;-><init>([Landroid/widget/BaseAdapter;)V

    :goto_1
    iget-wide v4, p0, Lcom/twitter/android/ListsActivity;->a:J

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->h()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f030009

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setScrollbarFadingEnabled(Z)V

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v0, p0, Lcom/twitter/android/ListsActivity;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/twitter/android/ListsActivity;->b:I

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_2
    new-instance v0, Lcom/twitter/android/cg;

    invoke-virtual {p0}, Lcom/twitter/android/ListsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/cg;-><init>(Lcom/twitter/android/TwitterListActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/twitter/android/ListsActivity;->c:Lcom/twitter/android/cg;

    new-instance v0, Lcom/twitter/android/du;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/du;-><init>(Lcom/twitter/android/ListsActivity;Lcom/twitter/android/bj;)V

    iput-object v0, p0, Lcom/twitter/android/ListsActivity;->i:Lcom/twitter/android/client/m;

    return-void

    :cond_2
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_3
    new-instance v1, Lcom/twitter/android/bg;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/widget/BaseAdapter;

    const/4 v7, 0x0

    new-instance v8, Lcom/twitter/android/dr;

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/twitter/android/dn;

    const/4 v10, 0x0

    new-instance v11, Lcom/twitter/android/dn;

    const v12, 0x7f090024

    invoke-virtual {p0, v12}, Lcom/twitter/android/ListsActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const v13, 0x7f02003d

    invoke-direct {v11, v12, v13, v4}, Lcom/twitter/android/dn;-><init>(Ljava/lang/String;ILandroid/content/Intent;)V

    aput-object v11, v9, v10

    const/4 v4, 0x1

    new-instance v10, Lcom/twitter/android/dn;

    const v11, 0x7f0900de

    invoke-virtual {p0, v11}, Lcom/twitter/android/ListsActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f02003e

    invoke-direct {v10, v11, v12, v5}, Lcom/twitter/android/dn;-><init>(Ljava/lang/String;ILandroid/content/Intent;)V

    aput-object v10, v9, v4

    invoke-direct {v8, v9}, Lcom/twitter/android/dr;-><init>([Lcom/twitter/android/dn;)V

    aput-object v8, v6, v7

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/twitter/android/ListsActivity;->j:Landroid/widget/CursorAdapter;

    aput-object v5, v6, v4

    invoke-direct {v1, v6}, Lcom/twitter/android/bg;-><init>([Landroid/widget/BaseAdapter;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/twitter/android/ListsActivity;->j:Landroid/widget/CursorAdapter;

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x1

    if-ne v3, v0, :cond_5

    const v0, 0x7f090069

    invoke-virtual {p0, v0}, Lcom/twitter/android/ListsActivity;->f(I)V

    goto :goto_2

    :cond_5
    const v0, 0x7f090020

    invoke-virtual {p0, v0}, Lcom/twitter/android/ListsActivity;->f(I)V

    goto :goto_2

    :pswitch_1
    const v0, 0x7f090022

    invoke-virtual {p0, v0}, Lcom/twitter/android/ListsActivity;->f(I)V

    goto :goto_2

    :pswitch_2
    const v0, 0x7f090021

    invoke-virtual {p0, v0}, Lcom/twitter/android/ListsActivity;->f(I)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0028

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/ListCreateEditActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/twitter/android/ListsActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/ListsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "list_id"

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "list_name"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "user_id"

    invoke-virtual {p0}, Lcom/twitter/android/ListsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "inquire_user_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v3, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v3}, Lcom/twitter/android/ListsActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/twitter/android/ListsActivity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 11

    const/4 v6, 0x0

    const/4 v1, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-super {p0}, Lcom/twitter/android/TwitterListActivity;->onResume()V

    iget-object v0, p0, Lcom/twitter/android/ListsActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/twitter/android/ListsActivity;->b_(I)V

    iget v0, p0, Lcom/twitter/android/ListsActivity;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/twitter/android/ListsActivity;->c:Lcom/twitter/android/cg;

    iget-object v1, p0, Lcom/twitter/android/ListsActivity;->j:Landroid/widget/CursorAdapter;

    sget-object v2, Lcom/twitter/android/provider/ad;->a:Landroid/net/Uri;

    sget-object v3, Lcom/twitter/android/bn;->a:[Ljava/lang/String;

    const-string v4, "owner_id=? AND type IN (0,2)"

    new-array v5, v10, [Ljava/lang/String;

    iget-wide v7, p0, Lcom/twitter/android/ListsActivity;->a:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v9

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/android/cg;->a(Landroid/widget/CursorAdapter;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/ListsActivity;->c:Lcom/twitter/android/cg;

    iget-object v1, p0, Lcom/twitter/android/ListsActivity;->j:Landroid/widget/CursorAdapter;

    sget-object v2, Lcom/twitter/android/provider/ad;->a:Landroid/net/Uri;

    sget-object v3, Lcom/twitter/android/bn;->a:[Ljava/lang/String;

    const-string v4, "owner_id=? AND type=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    iget-wide v7, p0, Lcom/twitter/android/ListsActivity;->a:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v9

    iget v7, p0, Lcom/twitter/android/ListsActivity;->b:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v10

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/android/cg;->a(Landroid/widget/CursorAdapter;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/twitter/android/ListsActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/twitter/android/ListsActivity;->c(I)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 4

    invoke-super {p0}, Lcom/twitter/android/TwitterListActivity;->onStart()V

    iget-wide v0, p0, Lcom/twitter/android/ListsActivity;->a:J

    iget-object v2, p0, Lcom/twitter/android/ListsActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v2}, Lcom/twitter/android/client/i;->h()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sget-object v0, Lcom/twitter/android/service/l;->g:Lcom/twitter/android/service/l;

    invoke-static {p0, v0}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;Lcom/twitter/android/service/l;)V

    :cond_0
    return-void
.end method
