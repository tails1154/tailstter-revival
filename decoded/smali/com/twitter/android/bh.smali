.class public final Lcom/twitter/android/bh;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/res/Resources;Landroid/widget/TextView;Ljava/lang/String;Laz;Lcom/twitter/android/bs;)V
    .locals 11

    const/16 v9, 0x21

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const v1, 0x7f07000b

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    if-nez p4, :cond_0

    move v2, v1

    :goto_0
    sget-object v3, Lae;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v0, v6, v4, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v6, Lcom/twitter/android/eq;

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v1, v7, p4}, Lcom/twitter/android/eq;-><init>(ILjava/lang/String;Lcom/twitter/android/bs;)V

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v6, v4, v5, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_0
    const v2, 0x7f070011

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    iget-object v2, p3, Laz;->a:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p3, Laz;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    sget-object v2, Lae;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    :goto_2
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/twitter/android/v;

    invoke-direct {v4, v1, p4, v3, v3}, Lcom/twitter/android/v;-><init>(ILcom/twitter/android/bs;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    invoke-virtual {v0, v4, v3, v5, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    iget-object v3, p3, Laz;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcy;

    iget v4, p0, Lcy;->a:I

    sub-int/2addr v4, v2

    iget v5, p0, Lcy;->b:I

    sub-int/2addr v5, v2

    if-ltz v4, :cond_4

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-gt v5, v6, :cond_4

    iget-object v6, p0, Lcy;->e:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v0, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    sub-int v6, v5, v6

    sub-int/2addr v5, v6

    add-int/2addr v2, v6

    move v10, v5

    move v5, v2

    move v2, v10

    :goto_4
    new-instance v6, Lcom/twitter/android/v;

    iget-object v7, p0, Lcy;->c:Ljava/lang/String;

    iget-object v8, p0, Lcy;->d:Ljava/lang/String;

    invoke-direct {v6, v1, p4, v7, v8}, Lcom/twitter/android/v;-><init>(ILcom/twitter/android/bs;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v4, v2, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move v2, v5

    goto :goto_3

    :cond_5
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_6
    move v10, v5

    move v5, v2

    move v2, v10

    goto :goto_4
.end method

.method public static a(Lcom/twitter/android/client/i;Lcom/twitter/android/provider/ah;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p1, Lcom/twitter/android/provider/ah;->k:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0200ba

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_0
    iget-wide v0, p1, Lcom/twitter/android/provider/ah;->p:J

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->h()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/twitter/android/provider/ah;->q:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0200bf

    invoke-virtual {p4, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_1
    return-void

    :cond_0
    const v0, 0x7f0200b9

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {p4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p3, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    const v0, 0x7f0200be

    invoke-virtual {p4, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-virtual {p4, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-boolean v0, p1, Lcom/twitter/android/provider/ah;->l:Z

    if-eqz v0, :cond_3

    invoke-virtual {p4, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    invoke-virtual {p5, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p4, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    invoke-virtual {p5, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1
.end method
