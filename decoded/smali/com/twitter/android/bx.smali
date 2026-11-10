.class final Lcom/twitter/android/bx;
.super Landroid/content/AsyncQueryHandler;


# instance fields
.field private synthetic a:Lcom/twitter/android/TweetActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/TweetActivity;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected final onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 14

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v8, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p3, :cond_a

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p2

    check-cast v0, Lcom/twitter/android/provider/ah;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/twitter/android/provider/ah;->a(Landroid/database/Cursor;)V

    iget-object v4, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    iput-object v3, v4, Lcom/twitter/android/TweetActivity;->b:Lcom/twitter/android/provider/ah;

    iget-object v4, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    iget-object v4, v4, Lcom/twitter/android/TweetActivity;->u:Lcom/twitter/android/client/i;

    invoke-virtual {v4, v3}, Lcom/twitter/android/client/i;->b(Lcom/twitter/android/provider/ah;)Laz;

    move-result-object v4

    iget-boolean v5, v3, Lcom/twitter/android/provider/ah;->q:Z

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    iget-object v5, v5, Lcom/twitter/android/TweetActivity;->h:Landroid/widget/TextView;

    iget-object v6, v3, Lcom/twitter/android/provider/ah;->d:Ljava/lang/String;

    new-instance v7, Lcom/twitter/android/cf;

    iget-object v9, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    iget-wide v10, v3, Lcom/twitter/android/provider/ah;->p:J

    invoke-direct {v7, v9, v10, v11}, Lcom/twitter/android/cf;-><init>(Lcom/twitter/android/bs;J)V

    const v9, 0x7f090035

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    invoke-virtual {v2, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x22

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    const/16 v10, 0x22

    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v12, 0x0

    invoke-virtual {v6, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v6, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    const/16 v11, 0x21

    invoke-virtual {v6, v7, v9, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    iget-object v5, v5, Lcom/twitter/android/TweetActivity;->e:Landroid/widget/TextView;

    iget-object v6, v3, Lcom/twitter/android/provider/ah;->c:Ljava/lang/String;

    iget-object v7, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    invoke-static {v2, v5, v6, v4, v7}, Lcom/twitter/android/bh;->a(Landroid/content/res/Resources;Landroid/widget/TextView;Ljava/lang/String;Laz;Lcom/twitter/android/bs;)V

    iget-object v5, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    iget-object v5, v5, Lcom/twitter/android/TweetActivity;->g:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x40

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/twitter/android/provider/ah;->o:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    iget-object v5, v5, Lcom/twitter/android/TweetActivity;->f:Landroid/widget/TextView;

    iget-object v6, v3, Lcom/twitter/android/provider/ah;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    iget-object v6, v3, Lcom/twitter/android/provider/ah;->o:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/twitter/android/TweetActivity;->e(Ljava/lang/String;)V

    iget-boolean v5, v3, Lcom/twitter/android/provider/ah;->y:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    const v6, 0x7f0e007b

    invoke-virtual {v5, v6}, Lcom/twitter/android/TweetActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iget-object v5, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    const v6, 0x7f0900c2

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, v3, Lcom/twitter/android/provider/ah;->e:Ljava/lang/String;

    aput-object v10, v7, v9

    invoke-virtual {v5, v6, v7}, Lcom/twitter/android/TweetActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    if-eqz v4, :cond_2

    iget-object v5, v4, Laz;->c:Lcc;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    iget-object v6, v4, Laz;->c:Lcc;

    iget-object v6, v6, Lcc;->a:Ljava/lang/String;

    iput-object v6, v5, Lcom/twitter/android/TweetActivity;->c:Ljava/lang/String;

    :cond_2
    iget-object v5, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    const/4 v6, 0x6

    invoke-virtual {v5, v8, v6}, Lcom/twitter/android/TweetActivity;->a(Landroid/content/Context;I)V

    :cond_3
    iget-object v5, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    iget-object v5, v5, Lcom/twitter/android/TweetActivity;->k:Landroid/widget/ImageView;

    const/4 v6, 0x0

    iget-object v7, v3, Lcom/twitter/android/provider/ah;->j:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v6, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    iget-object v6, v6, Lcom/twitter/android/TweetActivity;->u:Lcom/twitter/android/client/i;

    iget v7, v3, Lcom/twitter/android/provider/ah;->s:I

    iget-wide v9, v3, Lcom/twitter/android/provider/ah;->m:J

    iget-object v11, v3, Lcom/twitter/android/provider/ah;->j:Ljava/lang/String;

    invoke-virtual {v6, v7, v9, v10, v11}, Lcom/twitter/android/client/i;->a(IJLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_4
    if-eqz v6, :cond_c

    const v7, 0x7f02005e

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_2
    iget-object v5, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    iget-object v5, v5, Lcom/twitter/android/TweetActivity;->r:Landroid/widget/RelativeLayout;

    iget-object v6, v3, Lcom/twitter/android/provider/ah;->o:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    iget-boolean v5, v3, Lcom/twitter/android/provider/ah;->B:Z

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    iget-object v5, v5, Lcom/twitter/android/TweetActivity;->s:Landroid/widget/ImageView;

    const v6, 0x7f0200a6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v5, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    iget-object v5, v5, Lcom/twitter/android/TweetActivity;->s:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    iget-object v5, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    iget-object v5, v5, Lcom/twitter/android/TweetActivity;->i:Landroid/widget/TextView;

    iget-object v6, v3, Lcom/twitter/android/provider/ah;->g:Ljava/lang/String;

    iget-wide v9, v3, Lcom/twitter/android/provider/ah;->f:J

    const/4 v7, 0x0

    invoke-static {v2, v9, v10, v7}, Lci;->a(Landroid/content/res/Resources;JZ)Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_f

    const v9, 0x7f090042

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v7, 0x1

    aput-object v6, v10, v7

    invoke-virtual {v2, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object v13, v6

    move-object v6, v2

    move-object v2, v13

    :goto_4
    if-eqz v2, :cond_10

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    iget-wide v5, v3, Lcom/twitter/android/provider/ah;->i:J

    const-wide/16 v9, 0x0

    cmp-long v2, v5, v9

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    const v5, 0x7f0e007f

    invoke-virtual {v2, v5}, Lcom/twitter/android/TweetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v2, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    iget-object v2, v2, Lcom/twitter/android/TweetActivity;->j:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    iget-object v5, v5, Lcom/twitter/android/TweetActivity;->m:Landroid/widget/ImageView;

    iget-boolean v6, v3, Lcom/twitter/android/provider/ah;->t:Z

    if-nez v6, :cond_6

    iget-object v6, v3, Lcom/twitter/android/provider/ah;->D:Lal;

    if-eqz v6, :cond_12

    :cond_6
    iget-object v6, v3, Lcom/twitter/android/provider/ah;->D:Lal;

    if-eqz v6, :cond_7

    iget-object v7, v6, Lal;->b:Ljava/lang/String;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    const v9, 0x7f090041

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v6, Lal;->b:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v7, v9, v10}, Lcom/twitter/android/TweetActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v7, Lcom/twitter/android/az;

    iget-object v10, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    iget-wide v11, v3, Lcom/twitter/android/provider/ah;->r:J

    invoke-direct {v7, v10, v11, v12}, Lcom/twitter/android/az;-><init>(Lcom/twitter/android/bs;J)V

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    iget-object v11, v6, Lal;->b:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    const/16 v12, 0x21

    invoke-virtual {v9, v7, v10, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    iget-object v7, v7, Lcom/twitter/android/TweetActivity;->d:Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v7, v3, Lcom/twitter/android/provider/ah;->t:Z

    if-eqz v7, :cond_11

    iget-wide v6, v3, Lcom/twitter/android/provider/ah;->u:D

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v9, v3, Lcom/twitter/android/provider/ah;->v:D

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v6, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    iget-object v6, v6, Lcom/twitter/android/TweetActivity;->u:Lcom/twitter/android/client/i;

    iget-object v6, v6, Lcom/twitter/android/client/i;->a:Lbe;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Lbe;->a(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6
    iget-object v2, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    invoke-virtual {v2, v4}, Lcom/twitter/android/TweetActivity;->a(Laz;)V

    iget-object v2, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    iget-object v2, v2, Lcom/twitter/android/TweetActivity;->u:Lcom/twitter/android/client/i;

    invoke-virtual {v2}, Lcom/twitter/android/client/i;->f()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    iget-object v4, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    iget-object v4, v4, Lcom/twitter/android/TweetActivity;->u:Lcom/twitter/android/client/i;

    iget-object v5, v3, Lcom/twitter/android/provider/ah;->d:Ljava/lang/String;

    iget-wide v6, v3, Lcom/twitter/android/provider/ah;->r:J

    iget-object v9, v3, Lcom/twitter/android/provider/ah;->c:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7, v9}, Lcom/twitter/android/client/i;->a(Ljava/lang/String;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    iput-object v4, v2, Lcom/twitter/android/TweetActivity;->a:Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    iget-object v2, v2, Lcom/twitter/android/TweetActivity;->u:Lcom/twitter/android/client/i;

    iget-object v4, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    iget-object v4, v4, Lcom/twitter/android/TweetActivity;->n:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    iget-object v5, v5, Lcom/twitter/android/TweetActivity;->p:Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    iget-object v6, v6, Lcom/twitter/android/TweetActivity;->o:Landroid/widget/ImageButton;

    iget-object v7, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    iget-object v7, v7, Lcom/twitter/android/TweetActivity;->q:Landroid/widget/ImageButton;

    invoke-static/range {v2 .. v7}, Lcom/twitter/android/bh;->a(Lcom/twitter/android/client/i;Lcom/twitter/android/provider/ah;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;)V

    :goto_7
    sget-object v2, Lcom/twitter/android/service/l;->r:Lcom/twitter/android/service/l;

    invoke-static {v8, v2}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;Lcom/twitter/android/service/l;)V

    :cond_9
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_a
    iget-object v2, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    iget-object v2, v2, Lcom/twitter/android/TweetActivity;->b:Lcom/twitter/android/provider/ah;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_14

    iget-object v2, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    invoke-virtual {v2}, Lcom/twitter/android/TweetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    iget-object v4, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    iget-object v4, v4, Lcom/twitter/android/TweetActivity;->u:Lcom/twitter/android/client/i;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/twitter/android/client/i;->b(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/twitter/android/TweetActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    iget-wide v5, v3, Lcom/twitter/android/provider/ah;->p:J

    iget-object v7, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    iget-object v7, v7, Lcom/twitter/android/TweetActivity;->u:Lcom/twitter/android/client/i;

    invoke-virtual {v7}, Lcom/twitter/android/client/i;->h()J

    move-result-wide v9

    cmp-long v5, v5, v9

    if-nez v5, :cond_1

    iget v5, v3, Lcom/twitter/android/provider/ah;->z:I

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    iget-object v5, v5, Lcom/twitter/android/TweetActivity;->h:Landroid/widget/TextView;

    const v6, 0x7f0c0006

    iget v7, v3, Lcom/twitter/android/provider/ah;->z:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, v3, Lcom/twitter/android/provider/ah;->z:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v2, v6, v7, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    iget-object v5, v5, Lcom/twitter/android/TweetActivity;->h:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_c
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v6, 0x7f020056

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_d
    iget-boolean v5, v3, Lcom/twitter/android/provider/ah;->l:Z

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    iget-object v5, v5, Lcom/twitter/android/TweetActivity;->s:Landroid/widget/ImageView;

    const v6, 0x7f020041

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v5, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    iget-object v5, v5, Lcom/twitter/android/TweetActivity;->s:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_e
    iget-object v5, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    iget-object v5, v5, Lcom/twitter/android/TweetActivity;->s:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_f
    const/4 v2, 0x0

    move-object v6, v7

    goto/16 :goto_4

    :cond_10
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_11
    if-eqz v6, :cond_8

    iget-object v7, v6, Lal;->b:Ljava/lang/String;

    invoke-static {v7}, Lci;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lal;->c:Ljava/lang/String;

    if-eqz v7, :cond_8

    const-string v7, "&path=color:0x00000000%7Cfillcolor:0xAA000033"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lal;->c:Ljava/lang/String;

    invoke-static {v6}, Ldb;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    const-string v7, "%7C"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v9, v0

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v9, 0x2c

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v9, v0

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_12
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_13
    iget-object v2, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    const v3, 0x7f0e0076

    invoke-virtual {v2, v3}, Lcom/twitter/android/TweetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    :cond_14
    iget-object v2, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    const v3, 0x7f090037

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iget-object v2, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/TweetActivity;

    invoke-virtual {v2}, Lcom/twitter/android/TweetActivity;->finish()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
