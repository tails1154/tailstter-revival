.class final Lcom/twitter/android/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/twitter/android/MessagesThreadActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/MessagesThreadActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/z;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/twitter/android/z;->a:Lcom/twitter/android/MessagesThreadActivity;

    iget-object v0, v0, Lcom/twitter/android/MessagesThreadActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v1, v1, [J

    const/4 v2, 0x0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    add-int/lit8 v3, v2, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v1, v2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/twitter/android/z;->a:Lcom/twitter/android/MessagesThreadActivity;

    iget-object v2, p0, Lcom/twitter/android/z;->a:Lcom/twitter/android/MessagesThreadActivity;

    iget-object v2, v2, Lcom/twitter/android/MessagesThreadActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v2, v1}, Lcom/twitter/android/client/i;->a([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/MessagesThreadActivity;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/z;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-virtual {v0, v6}, Lcom/twitter/android/MessagesThreadActivity;->b(Z)V

    :cond_0
    return-void

    :cond_1
    move v2, v3

    goto :goto_0
.end method
