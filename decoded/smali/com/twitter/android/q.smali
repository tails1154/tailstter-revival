.class public final Lcom/twitter/android/q;
.super Landroid/database/ContentObserver;


# instance fields
.field private final a:Landroid/widget/CursorAdapter;

.field private synthetic b:Lcom/twitter/android/TwitterListActivity;


# direct methods
.method public constructor <init>(Lcom/twitter/android/TwitterListActivity;Landroid/widget/CursorAdapter;)V
    .locals 1

    iput-object p1, p0, Lcom/twitter/android/q;->b:Lcom/twitter/android/TwitterListActivity;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/twitter/android/q;->a:Landroid/widget/CursorAdapter;

    return-void
.end method


# virtual methods
.method public final deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onChange(Z)V
    .locals 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/twitter/android/q;->b:Lcom/twitter/android/TwitterListActivity;

    iget-boolean v0, v0, Lcom/twitter/android/TwitterListActivity;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/q;->b:Lcom/twitter/android/TwitterListActivity;

    invoke-virtual {v0}, Lcom/twitter/android/TwitterListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v1

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_0
    iget-object v3, p0, Lcom/twitter/android/q;->a:Landroid/widget/CursorAdapter;

    invoke-virtual {v3}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->requery()Z

    iget-object v3, p0, Lcom/twitter/android/q;->b:Lcom/twitter/android/TwitterListActivity;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v2, v0, v4}, Lcom/twitter/android/TwitterListActivity;->a(JIZ)V

    :cond_0
    return-void

    :cond_1
    move v0, v3

    goto :goto_0
.end method
