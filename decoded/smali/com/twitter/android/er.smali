.class final Lcom/twitter/android/er;
.super Landroid/content/AsyncQueryHandler;


# instance fields
.field private synthetic a:Lcom/twitter/android/PostActivity;


# direct methods
.method public constructor <init>(Lcom/twitter/android/PostActivity;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/twitter/android/er;->a:Lcom/twitter/android/PostActivity;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected final onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/er;->a:Lcom/twitter/android/PostActivity;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/twitter/android/provider/ah;

    new-instance v2, Lcom/twitter/android/provider/ah;

    invoke-direct {v2, p3}, Lcom/twitter/android/provider/ah;-><init>(Landroid/database/Cursor;)V

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/twitter/android/PostActivity;->a([Landroid/os/Parcelable;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/er;->a:Lcom/twitter/android/PostActivity;

    iget-object v0, v0, Lcom/twitter/android/PostActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
