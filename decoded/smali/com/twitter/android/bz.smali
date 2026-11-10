.class final Lcom/twitter/android/bz;
.super Landroid/content/AsyncQueryHandler;


# instance fields
.field private synthetic a:Lcom/twitter/android/ProfileTabActivity;


# direct methods
.method public constructor <init>(Lcom/twitter/android/ProfileTabActivity;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/twitter/android/bz;->a:Lcom/twitter/android/ProfileTabActivity;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected final onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/bz;->a:Lcom/twitter/android/ProfileTabActivity;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/twitter/android/ProfileTabActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :pswitch_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/bz;->a:Lcom/twitter/android/ProfileTabActivity;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/twitter/android/ProfileTabActivity;->b(Z)V

    const/4 v2, 0x2

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v2, Lac;

    const/4 v3, 0x0

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x9

    move-object/from16 v0, p3

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    move-object/from16 v0, p3

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x6

    move-object/from16 v0, p3

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v10, 0x5

    move-object/from16 v0, p3

    move v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0xd

    move-object/from16 v0, p3

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    const/4 v11, 0x1

    :goto_2
    const/16 v12, 0xb

    move-object/from16 v0, p3

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    const/4 v12, 0x1

    :goto_3
    const/4 v13, 0x4

    move-object/from16 v0, p3

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x7

    move-object/from16 v0, p3

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/16 v15, 0x8

    move-object/from16 v0, p3

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    const/16 v17, 0xc

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/16 v18, 0x0

    const/16 v19, 0xa

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v2 .. v23}, Lac;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;IJIZILq;JI)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/bz;->a:Lcom/twitter/android/ProfileTabActivity;

    move-object v3, v0

    iput-object v6, v3, Lcom/twitter/android/ProfileTabActivity;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/bz;->a:Lcom/twitter/android/ProfileTabActivity;

    move-object v3, v0

    iget-object v3, v3, Lcom/twitter/android/ProfileTabActivity;->f:Lcom/twitter/android/widget/Navbar;

    const v4, 0x7f0e001a

    invoke-virtual {v3, v4}, Lcom/twitter/android/widget/Navbar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/bz;->a:Lcom/twitter/android/ProfileTabActivity;

    move-object v3, v0

    iget-object v3, v3, Lcom/twitter/android/ProfileTabActivity;->d:Lcom/twitter/android/client/i;

    invoke-virtual {v3}, Lcom/twitter/android/client/i;->h()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/bz;->a:Lcom/twitter/android/ProfileTabActivity;

    move-object v5, v0

    iget-wide v5, v5, Lcom/twitter/android/ProfileTabActivity;->b:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/bz;->a:Lcom/twitter/android/ProfileTabActivity;

    move-object v3, v0

    iget-object v3, v3, Lcom/twitter/android/ProfileTabActivity;->f:Lcom/twitter/android/widget/Navbar;

    const v4, 0x7f0e001c

    const v5, 0x7f02004c

    invoke-virtual {v3, v4, v5}, Lcom/twitter/android/widget/Navbar;->b(II)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/bz;->a:Lcom/twitter/android/ProfileTabActivity;

    move-object v3, v0

    invoke-virtual {v3, v2}, Lcom/twitter/android/ProfileTabActivity;->a(Lac;)V

    goto/16 :goto_1

    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/bz;->a:Lcom/twitter/android/ProfileTabActivity;

    move-object v2, v0

    iget-wide v2, v2, Lcom/twitter/android/ProfileTabActivity;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/bz;->a:Lcom/twitter/android/ProfileTabActivity;

    move-object v2, v0

    iget-object v2, v2, Lcom/twitter/android/ProfileTabActivity;->c:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/bz;->a:Lcom/twitter/android/ProfileTabActivity;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/bz;->a:Lcom/twitter/android/ProfileTabActivity;

    move-object v3, v0

    iget-object v3, v3, Lcom/twitter/android/ProfileTabActivity;->d:Lcom/twitter/android/client/i;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/bz;->a:Lcom/twitter/android/ProfileTabActivity;

    move-object v4, v0

    iget-object v4, v4, Lcom/twitter/android/ProfileTabActivity;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/bz;->a:Lcom/twitter/android/ProfileTabActivity;

    move-object v5, v0

    iget-wide v5, v5, Lcom/twitter/android/ProfileTabActivity;->b:J

    invoke-virtual {v3, v4, v5, v6}, Lcom/twitter/android/client/i;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twitter/android/ProfileTabActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
