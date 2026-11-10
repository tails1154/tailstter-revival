.class public final Lcom/twitter/android/ct;
.super Landroid/widget/CursorAdapter;


# instance fields
.field private final a:Lcom/twitter/android/client/i;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/android/client/i;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    iput-object p1, p0, Lcom/twitter/android/ct;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/twitter/android/ct;->a:Lcom/twitter/android/client/i;

    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3

    check-cast p1, Lcom/twitter/android/widget/TweetView;

    iget-object v0, p0, Lcom/twitter/android/ct;->a:Lcom/twitter/android/client/i;

    iget v0, v0, Lcom/twitter/android/client/i;->d:I

    invoke-virtual {p1, v0}, Lcom/twitter/android/widget/TweetView;->a(I)V

    new-instance v0, Lcom/twitter/android/provider/af;

    iget-object v1, p0, Lcom/twitter/android/ct;->a:Lcom/twitter/android/client/i;

    invoke-virtual {v1}, Lcom/twitter/android/client/i;->h()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p3}, Lcom/twitter/android/provider/af;-><init>(JLandroid/database/Cursor;)V

    invoke-virtual {p1, v0}, Lcom/twitter/android/widget/TweetView;->a(Lcom/twitter/android/provider/ah;)V

    return-void
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 7

    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    iget-object v1, p0, Lcom/twitter/android/ct;->a:Lcom/twitter/android/client/i;

    invoke-virtual {v1}, Lcom/twitter/android/client/i;->h()J

    move-result-wide v1

    new-instance v3, Lcom/twitter/android/provider/af;

    invoke-direct {v3, v1, v2, v0}, Lcom/twitter/android/provider/af;-><init>(JLandroid/database/Cursor;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/twitter/android/ct;->b:Landroid/content/Context;

    const-class v5, Lcom/twitter/android/MessagesThreadActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "user_id"

    iget-wide v5, v3, Lcom/twitter/android/provider/af;->p:J

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "owner_id"

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "user_name"

    iget-object v2, v3, Lcom/twitter/android/provider/af;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/database/Cursor;

    const/16 v0, 0xd

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/TweetView;

    iget-object v1, p0, Lcom/twitter/android/ct;->a:Lcom/twitter/android/client/i;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/TweetView;->a(Lcom/twitter/android/widget/a;)V

    return-object v0
.end method
