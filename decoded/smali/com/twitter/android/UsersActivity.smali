.class public Lcom/twitter/android/UsersActivity;
.super Lcom/twitter/android/TwitterListActivity;

# interfaces
.implements Lcom/twitter/android/widget/e;


# instance fields
.field a:J

.field b:J

.field c:Ljava/util/ArrayList;

.field d:Ljava/util/ArrayList;

.field private e:Lcom/twitter/android/cg;

.field private n:Landroid/net/Uri;

.field private o:J

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/android/TwitterListActivity;-><init>()V

    return-void
.end method

.method private b(Z)V
    .locals 3

    const/16 v2, 0x8

    const v0, 0x7f0e0042

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f0e0014

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0900a2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    new-instance v1, Lcom/twitter/android/cm;

    invoke-direct {v1, p0}, Lcom/twitter/android/cm;-><init>(Lcom/twitter/android/UsersActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0015

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0900a3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    new-instance v1, Lcom/twitter/android/cn;

    invoke-direct {v1, p0}, Lcom/twitter/android/cn;-><init>(Lcom/twitter/android/UsersActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0e0043

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_2

    const v1, 0x7f040003

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x7f040002

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private c(I)V
    .locals 9

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0, p1}, Lcom/twitter/android/UsersActivity;->e(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/twitter/android/UsersActivity;->p:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/UsersActivity;->h:Lcom/twitter/android/client/i;

    iget-wide v2, p0, Lcom/twitter/android/UsersActivity;->o:J

    invoke-direct {p0, p1}, Lcom/twitter/android/UsersActivity;->g(I)I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/twitter/android/client/i;->a(JII)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/twitter/android/UsersActivity;->b_(I)V

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/twitter/android/UsersActivity;->a(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/UsersActivity;->h:Lcom/twitter/android/client/i;

    iget-wide v1, p0, Lcom/twitter/android/UsersActivity;->o:J

    invoke-direct {p0, p1}, Lcom/twitter/android/UsersActivity;->g(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/twitter/android/client/i;->a(JII)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/twitter/android/UsersActivity;->h:Lcom/twitter/android/client/i;

    packed-switch p1, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid fetch type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    move v1, v8

    :goto_2
    invoke-virtual {v0, v1}, Lcom/twitter/android/client/i;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    iget-object v1, p0, Lcom/twitter/android/UsersActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x14

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v1, v8

    goto :goto_2

    :cond_3
    move v1, v8

    goto :goto_2

    :pswitch_5
    iget-object v0, p0, Lcom/twitter/android/UsersActivity;->h:Lcom/twitter/android/client/i;

    iget v1, p0, Lcom/twitter/android/UsersActivity;->p:I

    iget-wide v2, p0, Lcom/twitter/android/UsersActivity;->o:J

    iget-wide v4, p0, Lcom/twitter/android/UsersActivity;->b:J

    invoke-direct {p0, p1}, Lcom/twitter/android/UsersActivity;->g(I)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/android/client/i;->a(IJJI)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/twitter/android/UsersActivity;->h:Lcom/twitter/android/client/i;

    iget v1, p0, Lcom/twitter/android/UsersActivity;->p:I

    iget-wide v2, p0, Lcom/twitter/android/UsersActivity;->o:J

    iget-wide v4, p0, Lcom/twitter/android/UsersActivity;->b:J

    invoke-direct {p0, p1}, Lcom/twitter/android/UsersActivity;->g(I)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/android/client/i;->a(IJJI)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_7
    iget-object v0, p0, Lcom/twitter/android/UsersActivity;->h:Lcom/twitter/android/client/i;

    iget-wide v1, p0, Lcom/twitter/android/UsersActivity;->o:J

    iget-object v3, p0, Lcom/twitter/android/UsersActivity;->q:Ljava/lang/String;

    iget-wide v4, p0, Lcom/twitter/android/UsersActivity;->b:J

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/client/i;->a(JLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_8
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/twitter/android/cc;

    invoke-direct {v0, p0}, Lcom/twitter/android/cc;-><init>(Lcom/twitter/android/UsersActivity;)V

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "data1"

    aput-object v5, v4, v1

    const-string v5, "mimetype"

    aput-object v5, v4, v8

    const-string v5, "mimetype=? OR mimetype=?"

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "vnd.android.cursor.item/phone_v2"

    aput-object v7, v6, v1

    const-string v7, "vnd.android.cursor.item/email_v2"

    aput-object v7, v6, v8

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/twitter/android/cc;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private g(I)I
    .locals 3

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid fetch type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move v0, v1

    :goto_0
    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/UsersActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3

    const/4 v2, 0x3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/UsersActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/twitter/android/UsersActivity;->p:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-direct {p0, v2}, Lcom/twitter/android/UsersActivity;->c(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, v2}, Lcom/twitter/android/UsersActivity;->d(I)V

    goto :goto_0
.end method

.method protected final a(Landroid/database/Cursor;)V
    .locals 5

    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x190

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-direct {p0, v4}, Lcom/twitter/android/UsersActivity;->c(I)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/twitter/android/widget/UserView;J)V
    .locals 3

    iget v0, p0, Lcom/twitter/android/UsersActivity;->p:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/twitter/android/UsersActivity;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/twitter/android/widget/UserView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/UsersActivity;->d:Ljava/util/ArrayList;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget v0, p0, Lcom/twitter/android/UsersActivity;->p:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/UsersActivity;->r:Landroid/widget/Button;

    iget-object v1, p0, Lcom/twitter/android/UsersActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/twitter/android/UsersActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    :goto_2
    return-void

    :pswitch_0
    iput-wide p2, p0, Lcom/twitter/android/UsersActivity;->a:J

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->showDialog(I)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/UsersActivity;->d:Ljava/util/ArrayList;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public final a_()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/twitter/android/UsersActivity;->c(I)V

    return-void
.end method

.method final k()V
    .locals 3

    const/4 v2, 0x0

    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e0059

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0e005b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onClickHandler(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/twitter/android/UsersActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iget-object v3, p0, Lcom/twitter/android/UsersActivity;->d:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/twitter/android/UsersActivity;->d:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/UsersActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/SULActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/twitter/android/UsersActivity;->finish()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0e003b -> :sswitch_0
        0x7f0e005b -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    const/4 v12, 0x0

    const/16 v11, 0x8

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/UsersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v0, "type"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/UsersActivity;->p:I

    iget v0, p0, Lcom/twitter/android/UsersActivity;->p:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, v6}, Lcom/twitter/android/TwitterListActivity;->a(Landroid/os/Bundle;Z)V

    :goto_0
    iget-object v0, p0, Lcom/twitter/android/UsersActivity;->k:Lcom/twitter/android/widget/Navbar;

    const v2, 0x7f0e003d

    invoke-virtual {v0, v11, v2}, Lcom/twitter/android/widget/Navbar;->a(II)V

    const-string v0, "owner_id"

    iget-object v2, p0, Lcom/twitter/android/UsersActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v2}, Lcom/twitter/android/client/i;->h()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/twitter/android/UsersActivity;->o:J

    const-string v0, "tag"

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/twitter/android/UsersActivity;->b:J

    const-string v0, "slug"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/UsersActivity;->q:Ljava/lang/String;

    iget v0, p0, Lcom/twitter/android/UsersActivity;->p:I

    packed-switch v0, :pswitch_data_1

    :pswitch_0
    sget-object v0, Lcom/twitter/android/provider/aa;->h:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/twitter/android/UsersActivity;->o:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/UsersActivity;->n:Landroid/net/Uri;

    const v0, 0x7f0900d9

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->c(Ljava/lang/String;)V

    :cond_0
    move v0, v6

    :goto_1
    if-eqz p1, :cond_1

    const-string v2, "state_dialog_user"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/twitter/android/UsersActivity;->a:J

    const-string v2, "state_checked_users"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/UsersActivity;->c:Ljava/util/ArrayList;

    :cond_1
    const-string v2, "com.twitter.android.intent.action.FOLLOW"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/UsersActivity;->d:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/twitter/android/UsersActivity;->k:Lcom/twitter/android/widget/Navbar;

    new-array v1, v10, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v11, v1}, Lcom/twitter/android/widget/Navbar;->a(I[I)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000a

    iget-object v2, p0, Lcom/twitter/android/UsersActivity;->k:Lcom/twitter/android/widget/Navbar;

    invoke-virtual {v0, v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/twitter/android/cr;

    invoke-direct {v1, p0}, Lcom/twitter/android/cr;-><init>(Lcom/twitter/android/UsersActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/twitter/android/UsersActivity;->k:Lcom/twitter/android/widget/Navbar;

    invoke-virtual {v1, v0}, Lcom/twitter/android/widget/Navbar;->addView(Landroid/view/View;)V

    const v0, 0x7f020030

    move v4, v0

    :goto_2
    invoke-virtual {p0}, Lcom/twitter/android/UsersActivity;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v8

    new-instance v0, Lcom/twitter/android/cb;

    iget-object v2, p0, Lcom/twitter/android/UsersActivity;->h:Lcom/twitter/android/client/i;

    if-eqz v8, :cond_5

    move v3, v9

    :goto_3
    iget-object v6, p0, Lcom/twitter/android/UsersActivity;->d:Ljava/util/ArrayList;

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/cb;-><init>(Landroid/content/Context;Lcom/twitter/android/client/i;ZILcom/twitter/android/widget/e;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/twitter/android/UsersActivity;->j:Landroid/widget/CursorAdapter;

    iget-object v0, p0, Lcom/twitter/android/UsersActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->setScrollbarFadingEnabled(Z)V

    new-instance v0, Lcom/twitter/android/cg;

    invoke-virtual {p0}, Lcom/twitter/android/UsersActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/cg;-><init>(Lcom/twitter/android/TwitterListActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/twitter/android/UsersActivity;->e:Lcom/twitter/android/cg;

    new-instance v0, Lcom/twitter/android/ci;

    invoke-direct {v0, p0, v12}, Lcom/twitter/android/ci;-><init>(Lcom/twitter/android/UsersActivity;Lcom/twitter/android/cr;)V

    iput-object v0, p0, Lcom/twitter/android/UsersActivity;->i:Lcom/twitter/android/client/m;

    if-eqz v8, :cond_3

    iget-object v0, p0, Lcom/twitter/android/UsersActivity;->k:Lcom/twitter/android/widget/Navbar;

    new-array v1, v10, [I

    fill-array-data v1, :array_1

    invoke-virtual {v0, v11, v1}, Lcom/twitter/android/widget/Navbar;->a(I[I)V

    if-ne v8, v10, :cond_3

    iget-object v0, p0, Lcom/twitter/android/UsersActivity;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/UsersActivity;->c:Ljava/util/ArrayList;

    :cond_2
    iget-object v0, p0, Lcom/twitter/android/UsersActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-direct {p0, v9}, Lcom/twitter/android/UsersActivity;->b(Z)V

    :cond_3
    return-void

    :pswitch_1
    invoke-super {p0, p1, v6, v6}, Lcom/twitter/android/TwitterListActivity;->a(Landroid/os/Bundle;ZZ)V

    goto/16 :goto_0

    :pswitch_2
    const v0, 0x7f030022

    invoke-super {p0, p1, v0, v6, v9}, Lcom/twitter/android/TwitterListActivity;->a(Landroid/os/Bundle;IZZ)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030010

    invoke-virtual {v0, v2, v12, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0e003b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/twitter/android/UsersActivity;->r:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/twitter/android/UsersActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2, v12, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    :pswitch_3
    sget-object v0, Lcom/twitter/android/provider/aa;->f:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/twitter/android/UsersActivity;->o:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/UsersActivity;->n:Landroid/net/Uri;

    const v0, 0x7f090026

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->c(Ljava/lang/String;)V

    move v0, v6

    goto/16 :goto_1

    :pswitch_4
    sget-object v0, Lcom/twitter/android/provider/aa;->g:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/twitter/android/UsersActivity;->o:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/UsersActivity;->n:Landroid/net/Uri;

    const v0, 0x7f090027

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->c(Ljava/lang/String;)V

    move v0, v6

    goto/16 :goto_1

    :pswitch_5
    sget-object v0, Lcom/twitter/android/provider/aa;->e:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/twitter/android/UsersActivity;->o:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/UsersActivity;->n:Landroid/net/Uri;

    const v0, 0x7f090023

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->c(Ljava/lang/String;)V

    move v0, v6

    goto/16 :goto_1

    :pswitch_6
    iget-wide v2, p0, Lcom/twitter/android/UsersActivity;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    iget-wide v2, p0, Lcom/twitter/android/UsersActivity;->o:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    sget-object v0, Lcom/twitter/android/provider/aa;->c:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/twitter/android/UsersActivity;->o:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/UsersActivity;->n:Landroid/net/Uri;

    :cond_4
    iget-wide v2, p0, Lcom/twitter/android/UsersActivity;->o:J

    iget-object v0, p0, Lcom/twitter/android/UsersActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->h()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const v0, 0x7f0200a5

    goto/16 :goto_1

    :pswitch_7
    sget-object v0, Lcom/twitter/android/provider/aa;->b:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/twitter/android/UsersActivity;->o:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/UsersActivity;->n:Landroid/net/Uri;

    move v0, v6

    goto/16 :goto_1

    :pswitch_8
    sget-object v0, Lcom/twitter/android/provider/aa;->j:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/twitter/android/UsersActivity;->o:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/UsersActivity;->n:Landroid/net/Uri;

    const-string v0, "slug_name"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->c(Ljava/lang/String;)V

    move v0, v6

    goto/16 :goto_1

    :pswitch_9
    sget-object v0, Lcom/twitter/android/provider/aa;->i:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/twitter/android/UsersActivity;->o:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/UsersActivity;->n:Landroid/net/Uri;

    const v0, 0x7f0900fc

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->f(I)V

    move v0, v6

    goto/16 :goto_1

    :cond_5
    move v3, v6

    goto/16 :goto_3

    :cond_6
    move v4, v0

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :array_0
    .array-data 4
        0x7f0e001c
        0x7f0e003d
    .end array-data

    :array_1
    .array-data 4
        0x7f0e001c
        0x7f0e003d
    .end array-data
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    const v6, 0x7f0900a5

    const v5, 0x7f0900a4

    const v4, 0x108009b

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    move-object v0, v3

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/twitter/android/cs;

    invoke-direct {v0, p0}, Lcom/twitter/android/cs;-><init>(Lcom/twitter/android/UsersActivity;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090052

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090053

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/twitter/android/cl;

    invoke-direct {v0, p0}, Lcom/twitter/android/cl;-><init>(Lcom/twitter/android/UsersActivity;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090055

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090056

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    const/4 v3, 0x4

    invoke-virtual {p1}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/ProfileTabActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "user_id"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "type"

    iget v1, p0, Lcom/twitter/android/UsersActivity;->p:I

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/twitter/android/UsersActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "username"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/UsersActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/twitter/android/UsersActivity;->finish()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/UsersActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/UsersActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Lcom/twitter/android/UsersActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    invoke-direct {p0, v0}, Lcom/twitter/android/UsersActivity;->b(Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/twitter/android/UsersActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x3

    invoke-super {p0}, Lcom/twitter/android/TwitterListActivity;->onResume()V

    iget-object v0, p0, Lcom/twitter/android/UsersActivity;->n:Landroid/net/Uri;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/twitter/android/UsersActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/twitter/android/UsersActivity;->b_(I)V

    iget-wide v0, p0, Lcom/twitter/android/UsersActivity;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const-string v0, "type=? AND tag=?"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget v2, p0, Lcom/twitter/android/UsersActivity;->p:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget-wide v2, p0, Lcom/twitter/android/UsersActivity;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    move-object v4, v0

    move-object v5, v1

    :goto_0
    invoke-virtual {p0}, Lcom/twitter/android/UsersActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "LOWER(username) ASC"

    move-object v6, v0

    :goto_1
    iget-object v0, p0, Lcom/twitter/android/UsersActivity;->e:Lcom/twitter/android/cg;

    iget-object v1, p0, Lcom/twitter/android/UsersActivity;->j:Landroid/widget/CursorAdapter;

    iget-object v2, p0, Lcom/twitter/android/UsersActivity;->n:Landroid/net/Uri;

    sget-object v3, Lcom/twitter/android/av;->a:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/android/cg;->a(Landroid/widget/CursorAdapter;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/UsersActivity;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    const-string v0, "friendship IS NULL OR friendship NOT IN (1,3) AND user_id!=?"

    new-array v1, v5, [Ljava/lang/String;

    iget-wide v2, p0, Lcom/twitter/android/UsersActivity;->o:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    move-object v4, v0

    move-object v5, v1

    goto :goto_0

    :cond_2
    move-object v4, v6

    move-object v5, v6

    goto :goto_0

    :cond_3
    const-string v0, "_id ASC"

    move-object v6, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/twitter/android/UsersActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/twitter/android/UsersActivity;->c(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v1}, Lcom/twitter/android/UsersActivity;->d(I)V

    goto :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/twitter/android/TwitterListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "state_dialog_user"

    iget-wide v1, p0, Lcom/twitter/android/UsersActivity;->a:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/twitter/android/UsersActivity;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const-string v0, "state_checked_users"

    iget-object v1, p0, Lcom/twitter/android/UsersActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Lcom/twitter/android/TwitterListActivity;->onStart()V

    iget v0, p0, Lcom/twitter/android/UsersActivity;->p:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/twitter/android/service/l;->i:Lcom/twitter/android/service/l;

    invoke-static {p0, v0}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;Lcom/twitter/android/service/l;)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/twitter/android/service/l;->j:Lcom/twitter/android/service/l;

    invoke-static {p0, v0}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;Lcom/twitter/android/service/l;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
