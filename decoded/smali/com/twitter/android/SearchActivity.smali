.class public Lcom/twitter/android/SearchActivity;
.super Lcom/twitter/android/TwitterListActivity;


# instance fields
.field a:Landroid/content/SharedPreferences;

.field private b:Lcom/twitter/android/co;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/android/TwitterListActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "twitter"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "query"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/SearchTabActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "query"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "query"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    :goto_1
    const-string v3, "android.intent.action.SEARCH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "com.twitter.android.action.SEARCH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/SearchTabActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "query"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tab"

    const-string v3, "tweets"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    :goto_2
    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->finish()V

    goto :goto_0

    :cond_3
    const-string v3, "type"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_4
    const-string v2, "com.twitter.android.action.SEARCH_USERS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/SearchTabActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "query"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tab"

    const-string v2, "people"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_2

    :cond_5
    const-string v2, "com.twitter.android.action.SEARCH_NEARBY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/SearchTabActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "query"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tab"

    const-string v2, "nearby"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_2

    :cond_6
    const-string v2, "com.twitter.android.action.USER_SHOW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/ProfileTabActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "screen_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_2
.end method


# virtual methods
.method protected final b_(I)V
    .locals 0

    return-void
.end method

.method public onClickHandler(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->onSearchRequested()Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0e005f
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/4 v8, 0x2

    const/4 v11, 0x1

    const/4 v4, 0x0

    const/4 v10, 0x0

    const v0, 0x7f030016

    invoke-super {p0, p1, v0, v10, v10}, Lcom/twitter/android/TwitterListActivity;->a(Landroid/os/Bundle;IZZ)V

    const-string v0, "search_prefs"

    invoke-virtual {p0, v0, v10}, Lcom/twitter/android/SearchActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/SearchActivity;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v6

    new-instance v7, Lcom/twitter/android/co;

    invoke-direct {v7, p0}, Lcom/twitter/android/co;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/twitter/android/provider/a;->a:Landroid/net/Uri;

    sget-object v2, Lcom/twitter/android/el;->a:[Ljava/lang/String;

    const-string v3, "type=1 AND latitude IS NULL AND longitude IS NULL"

    const-string v5, "query_id DESC, time ASC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/SearchActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/twitter/android/co;->changeCursor(Landroid/database/Cursor;)V

    iput-object v7, p0, Lcom/twitter/android/SearchActivity;->b:Lcom/twitter/android/co;

    const v0, 0x7f0900ac

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchActivity;->f(I)V

    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->k:Lcom/twitter/android/widget/Navbar;

    const/16 v1, 0x8

    const v2, 0x7f0e003d

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/widget/Navbar;->a(II)V

    const v0, 0x7f030023

    invoke-static {p0, v0, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v0, v4, v10}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    new-instance v0, Lcom/twitter/android/bg;

    new-array v1, v8, [I

    fill-array-data v1, :array_0

    new-array v2, v8, [Landroid/widget/BaseAdapter;

    aput-object v7, v2, v10

    new-instance v3, Lcom/twitter/android/dr;

    new-array v5, v11, [Lcom/twitter/android/dn;

    new-instance v7, Lcom/twitter/android/dn;

    const v8, 0x7f0900f6

    invoke-virtual {p0, v8}, Lcom/twitter/android/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f02003f

    invoke-direct {v7, v8, v9, v4}, Lcom/twitter/android/dn;-><init>(Ljava/lang/String;ILandroid/content/Intent;)V

    aput-object v7, v5, v10

    invoke-direct {v3, v5}, Lcom/twitter/android/dr;-><init>([Lcom/twitter/android/dn;)V

    aput-object v3, v2, v11

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/bg;-><init>([I[Landroid/widget/BaseAdapter;)V

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/twitter/android/d;

    invoke-direct {v0, p0, v4}, Lcom/twitter/android/d;-><init>(Lcom/twitter/android/SearchActivity;Lcom/twitter/android/ax;)V

    iput-object v0, p0, Lcom/twitter/android/SearchActivity;->i:Lcom/twitter/android/client/m;

    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/SearchActivity;->a(Landroid/content/Intent;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0900c5
        0x7f0900f5
    .end array-data
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v0

    sub-int/2addr v0, v7

    if-ne p3, v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/UsersActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.twitter.android.intent.action.FOLLOW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v7, :cond_2

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/twitter/android/service/TwitterService;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "LOG"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "auth"

    iget-object v6, p0, Lcom/twitter/android/SearchActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v6}, Lcom/twitter/android/client/i;->c()Lab;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "trend_id"

    invoke-virtual {v4, v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "log_ev"

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/twitter/android/SearchActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/SearchTabActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "query"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/twitter/android/TwitterListActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/twitter/android/SearchActivity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/twitter/android/SearchActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .locals 6

    invoke-super {p0}, Lcom/twitter/android/TwitterListActivity;->onResume()V

    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->a:Landroid/content/SharedPreferences;

    const-string v1, "last"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xdbba0

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/twitter/android/SearchActivity;->b:Lcom/twitter/android/co;

    invoke-virtual {v1}, Lcom/twitter/android/co;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    const-wide/16 v1, 0x1

    iget-object v3, p0, Lcom/twitter/android/SearchActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v3}, Lcom/twitter/android/client/i;->f()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/twitter/android/SearchActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v3}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/android/client/n;->i()Lbv;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-wide v1, v3, Lbv;->b:J

    :cond_1
    iget-object v3, p0, Lcom/twitter/android/SearchActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v3, v1, v2}, Lcom/twitter/android/client/i;->j(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/twitter/android/SearchActivity;->a(Ljava/lang/String;I)V

    :cond_2
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->j()Ljava/lang/String;

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->e()Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Lcom/twitter/android/TwitterListActivity;->onStart()V

    sget-object v0, Lcom/twitter/android/service/l;->l:Lcom/twitter/android/service/l;

    invoke-static {p0, v0}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;Lcom/twitter/android/service/l;)V

    return-void
.end method
