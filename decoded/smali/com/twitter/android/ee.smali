.class final Lcom/twitter/android/ee;
.super Landroid/content/AsyncQueryHandler;


# instance fields
.field private synthetic a:Lcom/twitter/android/ListTabActivity;


# direct methods
.method public constructor <init>(Lcom/twitter/android/ListTabActivity;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/twitter/android/ee;->a:Lcom/twitter/android/ListTabActivity;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected final onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 8

    const/4 v2, 0x0

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ee;->a:Lcom/twitter/android/ListTabActivity;

    invoke-virtual {v0}, Lcom/twitter/android/ListTabActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/twitter/android/ee;->a:Lcom/twitter/android/ListTabActivity;

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/twitter/android/ListTabActivity;->c:I

    iget-object v0, p0, Lcom/twitter/android/ee;->a:Lcom/twitter/android/ListTabActivity;

    iget v0, v0, Lcom/twitter/android/ListTabActivity;->c:I

    if-nez v0, :cond_3

    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    iget-object v0, p0, Lcom/twitter/android/ee;->a:Lcom/twitter/android/ListTabActivity;

    iget v0, v0, Lcom/twitter/android/ListTabActivity;->c:I

    packed-switch v0, :pswitch_data_1

    :cond_4
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/ee;->a:Lcom/twitter/android/ListTabActivity;

    iget-object v0, v0, Lcom/twitter/android/ListTabActivity;->d:Lcom/twitter/android/client/i;

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/twitter/android/ee;->a:Lcom/twitter/android/ListTabActivity;

    iget-wide v0, v0, Lcom/twitter/android/ListTabActivity;->b:J

    iget-object v2, p0, Lcom/twitter/android/ee;->a:Lcom/twitter/android/ListTabActivity;

    iget-object v2, v2, Lcom/twitter/android/ListTabActivity;->d:Lcom/twitter/android/client/i;

    invoke-virtual {v2}, Lcom/twitter/android/client/i;->h()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/twitter/android/ee;->a:Lcom/twitter/android/ListTabActivity;

    iget-object v0, v0, Lcom/twitter/android/ListTabActivity;->d:Lcom/twitter/android/client/i;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/twitter/android/ee;->a:Lcom/twitter/android/ListTabActivity;

    iget-wide v2, v2, Lcom/twitter/android/ListTabActivity;->b:J

    iget-object v4, p0, Lcom/twitter/android/ee;->a:Lcom/twitter/android/ListTabActivity;

    iget-wide v4, v4, Lcom/twitter/android/ListTabActivity;->a:J

    iget-object v6, p0, Lcom/twitter/android/ee;->a:Lcom/twitter/android/ListTabActivity;

    iget-object v6, v6, Lcom/twitter/android/ListTabActivity;->d:Lcom/twitter/android/client/i;

    invoke-virtual {v6}, Lcom/twitter/android/client/i;->h()J

    move-result-wide v6

    invoke-virtual/range {v0 .. v7}, Lcom/twitter/android/client/i;->a(IJJJ)Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/twitter/android/ee;->a:Lcom/twitter/android/ListTabActivity;

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/twitter/android/ListTabActivity;->c:I

    iget-object v0, p0, Lcom/twitter/android/ee;->a:Lcom/twitter/android/ListTabActivity;

    iget v0, v0, Lcom/twitter/android/ListTabActivity;->c:I

    if-nez v0, :cond_6

    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_6
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
