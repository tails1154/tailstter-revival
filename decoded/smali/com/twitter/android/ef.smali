.class final Lcom/twitter/android/ef;
.super Landroid/content/AsyncQueryHandler;


# instance fields
.field private synthetic a:Lcom/twitter/android/ConversationActivity;


# direct methods
.method public constructor <init>(Lcom/twitter/android/ConversationActivity;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/ef;->a:Lcom/twitter/android/ConversationActivity;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected final onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/ef;->a:Lcom/twitter/android/ConversationActivity;

    new-instance v1, Lcom/twitter/android/provider/ah;

    invoke-direct {v1, p3}, Lcom/twitter/android/provider/ah;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/ConversationActivity;->c(Lcom/twitter/android/provider/ah;)V

    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/ef;->a:Lcom/twitter/android/ConversationActivity;

    iget-object v1, p0, Lcom/twitter/android/ef;->a:Lcom/twitter/android/ConversationActivity;

    iget-object v1, v1, Lcom/twitter/android/ConversationActivity;->h:Lcom/twitter/android/client/i;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/twitter/android/client/i;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/ConversationActivity;->d(Ljava/lang/String;)V

    goto :goto_1
.end method
