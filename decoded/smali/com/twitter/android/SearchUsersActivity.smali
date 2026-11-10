.class public Lcom/twitter/android/SearchUsersActivity;
.super Lcom/twitter/android/TwitterListActivity;


# instance fields
.field a:Lcom/twitter/android/cg;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/android/TwitterListActivity;-><init>()V

    return-void
.end method

.method private c(I)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0, p1}, Lcom/twitter/android/SearchUsersActivity;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/SearchUsersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "query"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/SearchUsersActivity;->h:Lcom/twitter/android/client/i;

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
    move v2, v3

    :goto_1
    const/16 v3, 0x14

    invoke-virtual {v1, v0, v2, v3}, Lcom/twitter/android/client/i;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/twitter/android/SearchUsersActivity;->a(Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Lcom/twitter/android/SearchUsersActivity;->b_(I)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/twitter/android/SearchUsersActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    rem-int/lit8 v3, v2, 0x14

    if-nez v3, :cond_1

    div-int/lit8 v2, v2, 0x14

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    div-int/lit8 v2, v2, 0x14

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_1

    :pswitch_2
    move v2, v3

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchUsersActivity;->d(I)V

    :cond_0
    return-void
.end method

.method protected final a(Landroid/database/Cursor;)V
    .locals 5

    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x190

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-direct {p0, v4}, Lcom/twitter/android/SearchUsersActivity;->c(I)V

    :cond_0
    return-void
.end method

.method protected final a_()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/twitter/android/SearchUsersActivity;->c(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-super {p0, p1, v3}, Lcom/twitter/android/TwitterListActivity;->a(Landroid/os/Bundle;Z)V

    new-instance v0, Lcom/twitter/android/cb;

    iget-object v2, p0, Lcom/twitter/android/SearchUsersActivity;->h:Lcom/twitter/android/client/i;

    move-object v1, p0

    move v4, v3

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/cb;-><init>(Landroid/content/Context;Lcom/twitter/android/client/i;ZILcom/twitter/android/widget/e;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/twitter/android/SearchUsersActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {p0}, Lcom/twitter/android/SearchUsersActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/SearchUsersActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollbarFadingEnabled(Z)V

    invoke-virtual {p0}, Lcom/twitter/android/SearchUsersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "query"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchUsersActivity;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/twitter/android/cg;

    invoke-virtual {p0}, Lcom/twitter/android/SearchUsersActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/cg;-><init>(Lcom/twitter/android/TwitterListActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/twitter/android/SearchUsersActivity;->a:Lcom/twitter/android/cg;

    new-instance v0, Lcom/twitter/android/eb;

    invoke-direct {v0, p0, v5}, Lcom/twitter/android/eb;-><init>(Lcom/twitter/android/SearchUsersActivity;Lcom/twitter/android/cy;)V

    iput-object v0, p0, Lcom/twitter/android/SearchUsersActivity;->i:Lcom/twitter/android/client/m;

    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/ProfileTabActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "user_id"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/twitter/android/SearchUsersActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/twitter/android/TwitterListActivity;->onResume()V

    iget-object v0, p0, Lcom/twitter/android/SearchUsersActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/SearchUsersActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/twitter/android/SearchUsersActivity;->c(I)V

    :cond_1
    return-void
.end method
