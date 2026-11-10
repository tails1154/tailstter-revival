.class final Lcom/twitter/android/cq;
.super Landroid/database/ContentObserver;


# instance fields
.field private synthetic a:Lcom/twitter/android/SearchTweetsActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/SearchTweetsActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/cq;->a:Lcom/twitter/android/SearchTweetsActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/cq;->a:Lcom/twitter/android/SearchTweetsActivity;

    iget-object v0, v0, Lcom/twitter/android/SearchTweetsActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    :cond_0
    return-void
.end method
