.class public Lcom/twitter/android/ConversationActivity;
.super Lcom/twitter/android/TweetListActivity;


# instance fields
.field a:Lcom/twitter/android/ch;

.field private b:Lcom/twitter/android/ef;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/android/TweetListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method final a(J)V
    .locals 8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/twitter/android/ConversationActivity;->b:Lcom/twitter/android/ef;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget-object v3, Lcom/twitter/android/provider/ai;->b:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/twitter/android/provider/ah;->b:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/twitter/android/ef;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a_(I)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/twitter/android/TweetListActivity;->a_(I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/ConversationActivity;->a:Lcom/twitter/android/ch;

    invoke-virtual {v0}, Lcom/twitter/android/ch;->getCount()I

    move-result v1

    new-array v2, v1, [Lcom/twitter/android/provider/ah;

    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ConversationActivity;->a:Lcom/twitter/android/ch;

    invoke-virtual {v0, v3}, Lcom/twitter/android/ch;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ah;

    aput-object v0, v2, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/PostActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "reply_to_tweet"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "com.twitter.android.post.reply"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/ConversationActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0e001c
        :pswitch_0
    .end packed-switch
.end method

.method protected final c(I)Lcom/twitter/android/provider/ah;
    .locals 1

    invoke-virtual {p0}, Lcom/twitter/android/ConversationActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/twitter/android/provider/ah;

    return-object p0
.end method

.method protected final c()V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/ConversationActivity;->a:Lcom/twitter/android/ch;

    invoke-virtual {v0}, Lcom/twitter/android/ch;->notifyDataSetChanged()V

    return-void
.end method

.method final c(Lcom/twitter/android/provider/ah;)V
    .locals 4

    iget-object v0, p0, Lcom/twitter/android/ConversationActivity;->a:Lcom/twitter/android/ch;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/twitter/android/ch;->insert(Ljava/lang/Object;I)V

    iget-wide v0, p1, Lcom/twitter/android/provider/ah;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p1, Lcom/twitter/android/provider/ah;->i:J

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/ConversationActivity;->a(J)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/ConversationActivity;->d(I)V

    iget-object v0, p0, Lcom/twitter/android/ConversationActivity;->a:Lcom/twitter/android/ch;

    invoke-virtual {v0}, Lcom/twitter/android/ch;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-super {p0, p1, v2, v0}, Lcom/twitter/android/TweetListActivity;->a(Landroid/os/Bundle;ZZ)V

    iget-object v0, p0, Lcom/twitter/android/ConversationActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->f()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/twitter/android/ef;

    invoke-virtual {p0}, Lcom/twitter/android/ConversationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/ef;-><init>(Lcom/twitter/android/ConversationActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/twitter/android/ConversationActivity;->b:Lcom/twitter/android/ef;

    new-instance v0, Lcom/twitter/android/dg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/dg;-><init>(Lcom/twitter/android/ConversationActivity;Lcom/twitter/android/br;)V

    iput-object v0, p0, Lcom/twitter/android/ConversationActivity;->i:Lcom/twitter/android/client/m;

    new-instance v0, Lcom/twitter/android/ch;

    invoke-direct {v0, p0, p0}, Lcom/twitter/android/ch;-><init>(Lcom/twitter/android/ConversationActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/android/ConversationActivity;->a:Lcom/twitter/android/ch;

    iget-object v0, p0, Lcom/twitter/android/ConversationActivity;->a:Lcom/twitter/android/ch;

    invoke-virtual {v0, v2}, Lcom/twitter/android/ch;->setNotifyOnChange(Z)V

    invoke-virtual {p0}, Lcom/twitter/android/ConversationActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/ConversationActivity;->a:Lcom/twitter/android/ch;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f0900e3

    invoke-virtual {p0, v0}, Lcom/twitter/android/ConversationActivity;->f(I)V

    iget-object v0, p0, Lcom/twitter/android/ConversationActivity;->k:Lcom/twitter/android/widget/Navbar;

    const/16 v1, 0x8

    const v2, 0x7f0e003d

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/widget/Navbar;->a(II)V

    iget-object v0, p0, Lcom/twitter/android/ConversationActivity;->k:Lcom/twitter/android/widget/Navbar;

    const v1, 0x7f0e001c

    const v2, 0x7f02004c

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/widget/Navbar;->b(II)V

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/TweetActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/twitter/android/provider/ai;->b:Landroid/net/Uri;

    invoke-static {v1, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/ConversationActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/twitter/android/TweetListActivity;->onResume()V

    iget-object v0, p0, Lcom/twitter/android/ConversationActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->f()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/ConversationActivity;->a:Lcom/twitter/android/ch;

    invoke-virtual {v0}, Lcom/twitter/android/ch;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/ConversationActivity;->b_(I)V

    invoke-virtual {p0}, Lcom/twitter/android/ConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "orig"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ah;

    invoke-virtual {p0, v0}, Lcom/twitter/android/ConversationActivity;->c(Lcom/twitter/android/provider/ah;)V

    goto :goto_0
.end method
