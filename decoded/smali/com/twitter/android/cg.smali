.class public final Lcom/twitter/android/cg;
.super Landroid/content/AsyncQueryHandler;


# instance fields
.field private synthetic a:Lcom/twitter/android/TwitterListActivity;


# direct methods
.method public constructor <init>(Lcom/twitter/android/TwitterListActivity;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/cg;->a:Lcom/twitter/android/TwitterListActivity;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/CursorAdapter;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-super/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/twitter/android/cg;->a:Lcom/twitter/android/TwitterListActivity;

    invoke-virtual {v1}, Lcom/twitter/android/TwitterListActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :goto_0
    return-void

    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/CursorAdapter;

    move-object v1, v0

    iget-object v2, p0, Lcom/twitter/android/cg;->a:Lcom/twitter/android/TwitterListActivity;

    invoke-virtual {v2, p3}, Lcom/twitter/android/TwitterListActivity;->startManagingCursor(Landroid/database/Cursor;)V

    iget-object v2, p0, Lcom/twitter/android/cg;->a:Lcom/twitter/android/TwitterListActivity;

    iget-boolean v2, v2, Lcom/twitter/android/TwitterListActivity;->g:Z

    if-eqz v2, :cond_1

    new-instance v2, Lcom/twitter/android/q;

    iget-object v3, p0, Lcom/twitter/android/cg;->a:Lcom/twitter/android/TwitterListActivity;

    invoke-direct {v2, v3, v1}, Lcom/twitter/android/q;-><init>(Lcom/twitter/android/TwitterListActivity;Landroid/widget/CursorAdapter;)V

    invoke-interface {p3, v2}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    invoke-virtual {v1, p3}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_2
    iget-object v1, p0, Lcom/twitter/android/cg;->a:Lcom/twitter/android/TwitterListActivity;

    invoke-virtual {v1, p1, p2, p3}, Lcom/twitter/android/TwitterListActivity;->a(ILjava/lang/Object;Landroid/database/Cursor;)V

    goto :goto_0
.end method
