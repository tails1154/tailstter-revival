.class public Lcom/twitter/android/TimelineActivity;
.super Lcom/twitter/android/TweetListActivity;


# instance fields
.field private a:Lcom/twitter/android/cg;

.field private b:Landroid/net/Uri;

.field private c:J

.field private d:J

.field private n:I

.field private o:I

.field private p:Landroid/widget/ProgressBar;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/content/SharedPreferences;

.field private s:J

.field private t:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/android/TweetListActivity;-><init>()V

    return-void
.end method

.method private a(II)J
    .locals 7

    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    packed-switch p2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid fetch type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/TimelineActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    move-wide v0, v4

    :goto_0
    return-wide v0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    move-wide v1, v4

    :cond_1
    const/16 v3, 0x15

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, p1, :cond_3

    const/16 v3, 0x13

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v6, :cond_3

    cmp-long v1, v1, v4

    if-eqz v1, :cond_2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_4
    move-wide v0, v4

    goto :goto_0

    :pswitch_1
    move-wide v0, v4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(II)J
    .locals 5

    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid fetch type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-wide v0, v2

    :goto_0
    return-wide v0

    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/TimelineActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    move-wide v0, v2

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const/16 v1, 0x15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne p1, v1, :cond_2

    const/16 v1, 0x13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v4, :cond_2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v1

    if-nez v1, :cond_1

    :pswitch_2
    iget-object v0, p0, Lcom/twitter/android/TimelineActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/twitter/android/TimelineActivity;->o:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    iput v1, p0, Lcom/twitter/android/TimelineActivity;->o:I

    const/16 v1, 0x19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    :cond_3
    move-wide v0, v2

    goto :goto_0

    :cond_4
    move-wide v0, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private g(I)V
    .locals 20

    invoke-virtual/range {p0 .. p1}, Lcom/twitter/android/TimelineActivity;->e(I)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    const/16 v3, 0x28

    move v8, v3

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/twitter/android/TimelineActivity;->n:I

    move v3, v0

    packed-switch v3, :pswitch_data_1

    :pswitch_0
    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/TimelineActivity;->h:Lcom/twitter/android/client/i;

    move-object v3, v0

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineActivity;->h(I)J

    move-result-wide v4

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineActivity;->i(I)J

    move-result-wide v6

    invoke-virtual/range {v3 .. v8}, Lcom/twitter/android/client/i;->a(JJI)Ljava/lang/String;

    move-result-object v3

    packed-switch p1, :pswitch_data_2

    :goto_2
    :pswitch_2
    invoke-virtual/range {p0 .. p1}, Lcom/twitter/android/TimelineActivity;->b_(I)V

    move-object/from16 v0, p0

    move-object v1, v3

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/TimelineActivity;->a(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_3
    const/16 v3, 0x64

    move v8, v3

    goto :goto_1

    :pswitch_4
    const/4 v3, 0x0

    move v8, v3

    goto :goto_1

    :pswitch_5
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "home"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-static {v0, v1, v2}, Lcom/twitter/android/platform/TwitterDataSyncService;->a(Landroid/content/Context;Landroid/os/Bundle;Z)V

    sget-object v4, Lcom/twitter/android/service/l;->n:Lcom/twitter/android/service/l;

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;Lcom/twitter/android/service/l;)V

    goto :goto_2

    :pswitch_6
    sget-object v4, Lcom/twitter/android/service/l;->o:Lcom/twitter/android/service/l;

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;Lcom/twitter/android/service/l;)V

    goto :goto_2

    :pswitch_7
    sget-object v4, Lcom/twitter/android/service/l;->p:Lcom/twitter/android/service/l;

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;Lcom/twitter/android/service/l;)V

    goto :goto_2

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/TimelineActivity;->h:Lcom/twitter/android/client/i;

    move-object v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/twitter/android/TimelineActivity;->n:I

    move v10, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/twitter/android/TimelineActivity;->c:J

    move-wide v11, v0

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineActivity;->h(I)J

    move-result-wide v13

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineActivity;->i(I)J

    move-result-wide v15

    move/from16 v17, v8

    invoke-virtual/range {v9 .. v17}, Lcom/twitter/android/client/i;->a(IJJJI)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/TimelineActivity;->h:Lcom/twitter/android/client/i;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/twitter/android/TimelineActivity;->c:J

    move-wide v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/TimelineActivity;->j:Landroid/widget/CursorAdapter;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v6

    div-int/lit8 v6, v6, 0x14

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/twitter/android/client/i;->a(JI)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/TimelineActivity;->h:Lcom/twitter/android/client/i;

    move-object v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/twitter/android/TimelineActivity;->n:I

    move v10, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/twitter/android/TimelineActivity;->c:J

    move-wide v11, v0

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineActivity;->h(I)J

    move-result-wide v13

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineActivity;->i(I)J

    move-result-wide v15

    move/from16 v17, v8

    invoke-virtual/range {v9 .. v17}, Lcom/twitter/android/client/i;->a(IJJJI)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/TimelineActivity;->h:Lcom/twitter/android/client/i;

    move-object v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/twitter/android/TimelineActivity;->n:I

    move v10, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/twitter/android/TimelineActivity;->c:J

    move-wide v11, v0

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineActivity;->h(I)J

    move-result-wide v13

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineActivity;->i(I)J

    move-result-wide v15

    move/from16 v17, v8

    invoke-virtual/range {v9 .. v17}, Lcom/twitter/android/client/i;->a(IJJJI)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/TimelineActivity;->h:Lcom/twitter/android/client/i;

    move-object v9, v0

    const/16 v10, 0x8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/twitter/android/TimelineActivity;->c:J

    move-wide v11, v0

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move v1, v4

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/TimelineActivity;->a(II)J

    move-result-wide v13

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move v1, v4

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/TimelineActivity;->b(II)J

    move-result-wide v15

    move/from16 v17, v8

    invoke-virtual/range {v9 .. v17}, Lcom/twitter/android/client/i;->a(IJJJI)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/twitter/android/TimelineActivity;->d(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_3

    :pswitch_c
    goto/16 :goto_2

    :pswitch_d
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "mentions"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-static {v0, v1, v2}, Lcom/twitter/android/platform/TwitterDataSyncService;->a(Landroid/content/Context;Landroid/os/Bundle;Z)V

    goto/16 :goto_2

    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/TimelineActivity;->h:Lcom/twitter/android/client/i;

    move-object v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/twitter/android/TimelineActivity;->n:I

    move v10, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/twitter/android/TimelineActivity;->c:J

    move-wide v11, v0

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineActivity;->h(I)J

    move-result-wide v13

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineActivity;->i(I)J

    move-result-wide v15

    move/from16 v17, v8

    invoke-virtual/range {v9 .. v17}, Lcom/twitter/android/client/i;->a(IJJJI)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/TimelineActivity;->h:Lcom/twitter/android/client/i;

    move-object v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/twitter/android/TimelineActivity;->n:I

    move v10, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/twitter/android/TimelineActivity;->c:J

    move-wide v11, v0

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineActivity;->h(I)J

    move-result-wide v13

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineActivity;->i(I)J

    move-result-wide v15

    move/from16 v17, v8

    invoke-virtual/range {v9 .. v17}, Lcom/twitter/android/client/i;->a(IJJJI)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/TimelineActivity;->h:Lcom/twitter/android/client/i;

    move-object v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/twitter/android/TimelineActivity;->n:I

    move v10, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/twitter/android/TimelineActivity;->c:J

    move-wide v11, v0

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineActivity;->h(I)J

    move-result-wide v13

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineActivity;->i(I)J

    move-result-wide v15

    move/from16 v17, v8

    invoke-virtual/range {v9 .. v17}, Lcom/twitter/android/client/i;->a(IJJJI)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/TimelineActivity;->h:Lcom/twitter/android/client/i;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/twitter/android/TimelineActivity;->c:J

    move-wide v10, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/twitter/android/TimelineActivity;->d:J

    move-wide v12, v0

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineActivity;->h(I)J

    move-result-wide v14

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineActivity;->i(I)J

    move-result-wide v16

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/TimelineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "list_mode"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    move/from16 v18, v8

    invoke-virtual/range {v9 .. v19}, Lcom/twitter/android/client/i;->a(JJJJII)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_d
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private h(I)J
    .locals 2

    iget v0, p0, Lcom/twitter/android/TimelineActivity;->n:I

    invoke-direct {p0, v0, p1}, Lcom/twitter/android/TimelineActivity;->a(II)J

    move-result-wide v0

    return-wide v0
.end method

.method private i(I)J
    .locals 2

    iget v0, p0, Lcom/twitter/android/TimelineActivity;->n:I

    invoke-direct {p0, v0, p1}, Lcom/twitter/android/TimelineActivity;->b(II)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4

    const/4 v1, 0x3

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TimelineActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/twitter/android/TimelineActivity;->g(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/twitter/android/platform/TwitterDataSyncService;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/twitter/android/TimelineActivity;->g(I)V

    :goto_1
    iget-wide v0, p0, Lcom/twitter/android/TimelineActivity;->s:J

    iget v2, p0, Lcom/twitter/android/TimelineActivity;->t:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/twitter/android/TimelineActivity;->a(JIZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/twitter/android/TimelineActivity;->d(I)V

    goto :goto_1
.end method

.method protected final a(JIZ)V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/twitter/android/TimelineActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    sub-int/2addr v1, v5

    const/4 v2, 0x0

    :cond_0
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    move v1, v0

    move v0, v5

    :goto_0
    iget-boolean v2, p0, Lcom/twitter/android/TimelineActivity;->f:Z

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    if-nez v0, :cond_2

    if-nez p4, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/twitter/android/TimelineActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1, p3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_3
    return-void

    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v2

    goto :goto_0
.end method

.method protected final a(Landroid/database/Cursor;)V
    .locals 4

    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x190

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twitter/android/TimelineActivity;->g(I)V

    :cond_0
    return-void
.end method

.method protected final a_()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/twitter/android/TimelineActivity;->g(I)V

    return-void
.end method

.method protected final b_(I)V
    .locals 2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TimelineActivity;->q:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/TimelineActivity;->p:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/twitter/android/TweetListActivity;->b_(I)V

    goto :goto_0
.end method

.method protected final c(I)Lcom/twitter/android/provider/ah;
    .locals 2

    new-instance v0, Lcom/twitter/android/provider/ah;

    invoke-virtual {p0}, Lcom/twitter/android/TimelineActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/database/Cursor;

    invoke-direct {v0, p0}, Lcom/twitter/android/provider/ah;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method

.method protected final c()V
    .locals 0

    iget-object p0, p0, Lcom/twitter/android/TimelineActivity;->j:Landroid/widget/CursorAdapter;

    check-cast p0, Lcom/twitter/android/di;

    invoke-virtual {p0}, Lcom/twitter/android/di;->a()V

    return-void
.end method

.method protected final c_()V
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Lcom/twitter/android/TimelineActivity;->n:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0}, Lcom/twitter/android/TweetListActivity;->c_()V

    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/twitter/android/TimelineActivity;->r:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tweet_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/twitter/android/TimelineActivity;->s:J

    iget-object v1, p0, Lcom/twitter/android/TimelineActivity;->r:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "off_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/TimelineActivity;->t:I

    iget-wide v0, p0, Lcom/twitter/android/TimelineActivity;->s:J

    iget v2, p0, Lcom/twitter/android/TimelineActivity;->t:I

    invoke-virtual {p0, v0, v1, v2, v5}, Lcom/twitter/android/TimelineActivity;->a(JIZ)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method protected final d()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final d(I)V
    .locals 3

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/twitter/android/TweetListActivity;->d(I)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/TimelineActivity;->p:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/TimelineActivity;->p:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iput-object v2, p0, Lcom/twitter/android/TimelineActivity;->p:Landroid/widget/ProgressBar;

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/TimelineActivity;->q:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TimelineActivity;->q:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iput-object v2, p0, Lcom/twitter/android/TimelineActivity;->q:Landroid/widget/TextView;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const-wide/16 v7, 0x0

    const v6, 0x7f090019

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/TimelineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v4}, Lcom/twitter/android/TimelineActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/TimelineActivity;->r:Landroid/content/SharedPreferences;

    const-string v1, "type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/TimelineActivity;->n:I

    iget v1, p0, Lcom/twitter/android/TimelineActivity;->n:I

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1, v5}, Lcom/twitter/android/TweetListActivity;->a(Landroid/os/Bundle;Z)V

    iget-object v1, p0, Lcom/twitter/android/TimelineActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v1}, Lcom/twitter/android/client/i;->f()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :sswitch_0
    invoke-super {p0, p1, v5, v4}, Lcom/twitter/android/TweetListActivity;->a(Landroid/os/Bundle;ZZ)V

    :cond_0
    const-string v1, "tag"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/twitter/android/TimelineActivity;->d:J

    const-string v1, "owner_id"

    iget-object v2, p0, Lcom/twitter/android/TimelineActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v2}, Lcom/twitter/android/client/i;->h()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/twitter/android/TimelineActivity;->c:J

    iget v1, p0, Lcom/twitter/android/TimelineActivity;->n:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid status type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/twitter/android/TimelineActivity;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    # Use the broad timeline view for the replacement Home feed. The legacy
    # home view groups rows by the original Twitter owner id and hides
    # federated authors even though sync returned them.
    sget-object v0, Lcom/twitter/android/provider/ai;->j:Landroid/net/Uri;

    iput-object v0, p0, Lcom/twitter/android/TimelineActivity;->b:Landroid/net/Uri;

    invoke-virtual {p0, v6}, Lcom/twitter/android/TimelineActivity;->f(I)V

    :cond_1
    :goto_1
    new-instance v0, Lcom/twitter/android/di;

    iget v1, p0, Lcom/twitter/android/TimelineActivity;->n:I

    if-nez v1, :cond_3

    move v1, v5

    :goto_2
    iget-object v2, p0, Lcom/twitter/android/TimelineActivity;->h:Lcom/twitter/android/client/i;

    invoke-direct {v0, p0, v1, p0, v2}, Lcom/twitter/android/di;-><init>(Landroid/content/Context;ZLcom/twitter/android/widget/a;Lcom/twitter/android/client/i;)V

    iput-object v0, p0, Lcom/twitter/android/TimelineActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {p0}, Lcom/twitter/android/TimelineActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/TimelineActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/twitter/android/cg;

    invoke-virtual {p0}, Lcom/twitter/android/TimelineActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/cg;-><init>(Lcom/twitter/android/TwitterListActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/twitter/android/TimelineActivity;->a:Lcom/twitter/android/cg;

    new-instance v0, Lcom/twitter/android/es;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/es;-><init>(Lcom/twitter/android/TimelineActivity;Lcom/twitter/android/af;)V

    iput-object v0, p0, Lcom/twitter/android/TimelineActivity;->i:Lcom/twitter/android/client/m;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/twitter/android/provider/ai;->k:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/twitter/android/TimelineActivity;->c:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TimelineActivity;->b:Landroid/net/Uri;

    invoke-virtual {p0, v6}, Lcom/twitter/android/TimelineActivity;->f(I)V

    goto :goto_1

    :pswitch_3
    sget-object v0, Lcom/twitter/android/provider/ai;->j:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/twitter/android/TimelineActivity;->c:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TimelineActivity;->b:Landroid/net/Uri;

    const v0, 0x7f090046

    invoke-virtual {p0, v0}, Lcom/twitter/android/TimelineActivity;->f(I)V

    goto :goto_1

    :pswitch_4
    sget-object v0, Lcom/twitter/android/provider/ai;->h:Landroid/net/Uri;

    iput-object v0, p0, Lcom/twitter/android/TimelineActivity;->b:Landroid/net/Uri;

    goto :goto_1

    :pswitch_5
    const-string v1, "include_rts"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/twitter/android/provider/ai;->m:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/twitter/android/TimelineActivity;->c:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TimelineActivity;->b:Landroid/net/Uri;

    :goto_3
    const v0, 0x7f09001a

    invoke-virtual {p0, v0}, Lcom/twitter/android/TimelineActivity;->f(I)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/twitter/android/provider/ai;->g:Landroid/net/Uri;

    iput-object v0, p0, Lcom/twitter/android/TimelineActivity;->b:Landroid/net/Uri;

    goto :goto_3

    :pswitch_6
    sget-object v0, Lcom/twitter/android/provider/ai;->f:Landroid/net/Uri;

    iput-object v0, p0, Lcom/twitter/android/TimelineActivity;->b:Landroid/net/Uri;

    const v0, 0x7f090031

    invoke-virtual {p0, v0}, Lcom/twitter/android/TimelineActivity;->f(I)V

    goto :goto_1

    :pswitch_7
    sget-object v0, Lcom/twitter/android/provider/ai;->e:Landroid/net/Uri;

    iput-object v0, p0, Lcom/twitter/android/TimelineActivity;->b:Landroid/net/Uri;

    const v0, 0x7f090032

    invoke-virtual {p0, v0}, Lcom/twitter/android/TimelineActivity;->f(I)V

    goto/16 :goto_1

    :pswitch_8
    sget-object v0, Lcom/twitter/android/provider/ai;->d:Landroid/net/Uri;

    iput-object v0, p0, Lcom/twitter/android/TimelineActivity;->b:Landroid/net/Uri;

    const v0, 0x7f090033

    invoke-virtual {p0, v0}, Lcom/twitter/android/TimelineActivity;->f(I)V

    goto/16 :goto_1

    :pswitch_9
    iget-wide v0, p0, Lcom/twitter/android/TimelineActivity;->c:J

    cmp-long v0, v0, v7

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/twitter/android/TimelineActivity;->d:J

    cmp-long v0, v0, v7

    if-lez v0, :cond_1

    sget-object v0, Lcom/twitter/android/provider/ai;->c:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/twitter/android/TimelineActivity;->c:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TimelineActivity;->b:Landroid/net/Uri;

    goto/16 :goto_1

    :cond_3
    move v1, v4

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const/16 v1, 0x16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    iput v0, p0, Lcom/twitter/android/TimelineActivity;->o:I

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/bl;

    iget-object v1, v0, Lcom/twitter/android/bl;->a:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/twitter/android/TimelineActivity;->p:Landroid/widget/ProgressBar;

    iget-object v0, v0, Lcom/twitter/android/bl;->b:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/TimelineActivity;->q:Landroid/widget/TextView;

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/twitter/android/TimelineActivity;->g(I)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/TweetActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/twitter/android/provider/ai;->b:Landroid/net/Uri;

    invoke-static {v1, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/TimelineActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x1

    invoke-super {p0}, Lcom/twitter/android/TweetListActivity;->onPause()V

    iget v0, p0, Lcom/twitter/android/TimelineActivity;->n:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    sparse-switch v0, :sswitch_data_1

    :goto_1
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/twitter/android/TimelineActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_2
    iget-object v4, p0, Lcom/twitter/android/TimelineActivity;->r:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tweet_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "off_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_2

    :sswitch_1
    iget-object v0, p0, Lcom/twitter/android/TimelineActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->n()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/TimelineActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->o()V

    :cond_1
    invoke-static {v7, v7}, Lcom/twitter/android/client/f;->a(IZ)V

    goto :goto_1

    :sswitch_2
    iget-object v0, p0, Lcom/twitter/android/TimelineActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->p()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/TimelineActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->q()V

    :cond_2
    const/4 v0, 0x2

    invoke-static {v0, v7}, Lcom/twitter/android/client/f;->a(IZ)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_1
        0x5 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 11

    const/4 v4, 0x0

    const/4 v10, 0x2

    const/4 v1, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-super {p0}, Lcom/twitter/android/TweetListActivity;->onResume()V

    iget v7, p0, Lcom/twitter/android/TimelineActivity;->n:I

    sparse-switch v7, :sswitch_data_0

    iget-object v0, p0, Lcom/twitter/android/TimelineActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->f()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :sswitch_0
    iget-object v0, p0, Lcom/twitter/android/TimelineActivity;->b:Landroid/net/Uri;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/twitter/android/TimelineActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/twitter/android/TimelineActivity;->b_(I)V

    iget-wide v0, p0, Lcom/twitter/android/TimelineActivity;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const-string v0, "tag=?"

    new-array v1, v9, [Ljava/lang/String;

    iget-wide v2, p0, Lcom/twitter/android/TimelineActivity;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    move-object v4, v0

    move-object v5, v1

    :goto_1
    iget-object v0, p0, Lcom/twitter/android/TimelineActivity;->a:Lcom/twitter/android/cg;

    iget-object v1, p0, Lcom/twitter/android/TimelineActivity;->j:Landroid/widget/CursorAdapter;

    iget-object v2, p0, Lcom/twitter/android/TimelineActivity;->b:Landroid/net/Uri;

    sget-object v3, Lcom/twitter/android/provider/ah;->b:[Ljava/lang/String;

    const-string v6, "updated_at DESC, _id ASC"

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/android/cg;->a(Landroid/widget/CursorAdapter;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    packed-switch v7, :pswitch_data_0

    :goto_3
    :pswitch_0
    sparse-switch v7, :sswitch_data_1

    goto :goto_0

    :sswitch_1
    invoke-static {v9, v8}, Lcom/twitter/android/client/f;->a(IZ)V

    invoke-static {p0, v9}, Lcom/twitter/android/client/f;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    move-object v5, v4

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/twitter/android/TimelineActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/twitter/android/TimelineActivity;->g(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v1}, Lcom/twitter/android/TimelineActivity;->d(I)V

    goto :goto_2

    :pswitch_1
    sget-object v0, Lcom/twitter/android/service/l;->a:Lcom/twitter/android/service/l;

    invoke-static {p0, v0}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;Lcom/twitter/android/service/l;)V

    goto :goto_3

    :pswitch_2
    sget-object v0, Lcom/twitter/android/service/l;->b:Lcom/twitter/android/service/l;

    invoke-static {p0, v0}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;Lcom/twitter/android/service/l;)V

    goto :goto_3

    :pswitch_3
    sget-object v0, Lcom/twitter/android/service/l;->d:Lcom/twitter/android/service/l;

    invoke-static {p0, v0}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;Lcom/twitter/android/service/l;)V

    goto :goto_3

    :pswitch_4
    sget-object v0, Lcom/twitter/android/service/l;->e:Lcom/twitter/android/service/l;

    invoke-static {p0, v0}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;Lcom/twitter/android/service/l;)V

    goto :goto_3

    :sswitch_2
    invoke-static {v10, v8}, Lcom/twitter/android/client/f;->a(IZ)V

    invoke-static {p0, v10}, Lcom/twitter/android/client/f;->a(Landroid/content/Context;I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_1
        0x5 -> :sswitch_2
    .end sparse-switch
.end method
