.class final Lcom/twitter/android/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/twitter/android/MessagesThreadActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/MessagesThreadActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/ab;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/twitter/android/ab;->a:Lcom/twitter/android/MessagesThreadActivity;

    iget-object v0, v0, Lcom/twitter/android/MessagesThreadActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/twitter/android/ab;->a:Lcom/twitter/android/MessagesThreadActivity;

    iget-object v3, p0, Lcom/twitter/android/ab;->a:Lcom/twitter/android/MessagesThreadActivity;

    iget-object v3, v3, Lcom/twitter/android/MessagesThreadActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v3, v0, v1}, Lcom/twitter/android/client/i;->d(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/twitter/android/MessagesThreadActivity;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/ab;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-virtual {v0, v4}, Lcom/twitter/android/MessagesThreadActivity;->b(Z)V

    :cond_0
    return-void
.end method
