.class public abstract Lcom/twitter/android/TweetListActivity;
.super Lcom/twitter/android/TwitterListActivity;

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/twitter/android/widget/a;


# instance fields
.field private a:Lcom/twitter/android/ba;

.field private b:I

.field private c:I

.field private d:Landroid/view/GestureDetector;

.field protected e:Lcom/twitter/android/provider/ah;

.field private n:Landroid/view/animation/Animation;

.field private o:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/android/TwitterListActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/TweetListActivity;->a:Lcom/twitter/android/ba;

    invoke-virtual {v0}, Lcom/twitter/android/ba;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/TweetListActivity;->a:Lcom/twitter/android/ba;

    invoke-direct {p0, p1}, Lcom/twitter/android/TweetListActivity;->b(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p0}, Lcom/twitter/android/TweetListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setPressed(Z)V

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/TweetListActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Lcom/twitter/android/provider/ah;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/TweetListActivity;->m:Z

    iget v0, p0, Lcom/twitter/android/TweetListActivity;->l:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TweetListActivity;->h:Lcom/twitter/android/client/i;

    iget v1, p1, Lcom/twitter/android/provider/ah;->s:I

    iget-wide v2, p1, Lcom/twitter/android/provider/ah;->m:J

    iget-object v4, p1, Lcom/twitter/android/provider/ah;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/i;->a(IJLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/TweetListActivity;->h:Lcom/twitter/android/client/i;

    iget v1, p1, Lcom/twitter/android/provider/ah;->s:I

    iget-wide v2, p1, Lcom/twitter/android/provider/ah;->m:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/i;->a(IJ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method protected final a(Landroid/os/Bundle;IZZ)V
    .locals 11

    invoke-super {p0, p1, p2, p3, p4}, Lcom/twitter/android/TwitterListActivity;->a(Landroid/os/Bundle;IZZ)V

    if-eqz p1, :cond_0

    const-string v0, "state_delete_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ah;

    iput-object v0, p0, Lcom/twitter/android/TweetListActivity;->e:Lcom/twitter/android/provider/ah;

    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/TweetListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setScrollbarFadingEnabled(Z)V

    iget-object v0, p0, Lcom/twitter/android/TweetListActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    mul-int/lit8 v2, v5, 0x2

    iput v5, p0, Lcom/twitter/android/TweetListActivity;->c:I

    const v0, 0x7f040004

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    const/high16 v0, 0x7f040000

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    const v0, 0x7f040001

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    const v0, 0x7f040005

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    iput-object v8, p0, Lcom/twitter/android/TweetListActivity;->n:Landroid/view/animation/Animation;

    iput-object v9, p0, Lcom/twitter/android/TweetListActivity;->o:Landroid/view/animation/Animation;

    new-instance v10, Landroid/view/GestureDetector;

    new-instance v0, Lcom/twitter/android/aq;

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/twitter/android/aq;-><init>(Lcom/twitter/android/TweetListActivity;IILandroid/widget/ListView;ILandroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    invoke-direct {v10, v0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v10, p0, Lcom/twitter/android/TweetListActivity;->d:Landroid/view/GestureDetector;

    :cond_1
    return-void
.end method

.method final a(Lcom/twitter/android/bv;Landroid/view/animation/Animation;Landroid/view/animation/Animation;ILandroid/view/MotionEvent;)Z
    .locals 8

    iget-object v0, p0, Lcom/twitter/android/TweetListActivity;->a:Lcom/twitter/android/ba;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/twitter/android/bv;->c:Lcom/twitter/android/widget/TweetView;

    iget-object v1, p0, Lcom/twitter/android/TweetListActivity;->a:Lcom/twitter/android/ba;

    iget-object v1, v1, Lcom/twitter/android/ba;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/TweetListActivity;->a:Lcom/twitter/android/ba;

    iget-object v0, v0, Lcom/twitter/android/ba;->b:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p5}, Lcom/twitter/android/TweetListActivity;->a(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/TweetListActivity;->a:Lcom/twitter/android/ba;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/TweetListActivity;->a:Lcom/twitter/android/ba;

    invoke-virtual {v0}, Lcom/twitter/android/ba;->a()V

    :cond_2
    iget-object v0, p1, Lcom/twitter/android/bv;->b:Landroid/view/View;

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/twitter/android/bv;->a:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/twitter/android/bv;->b:Landroid/view/View;

    :cond_3
    new-instance v0, Lcom/twitter/android/ba;

    iget-object v2, p1, Lcom/twitter/android/bv;->c:Lcom/twitter/android/widget/TweetView;

    iget-object v3, p1, Lcom/twitter/android/bv;->b:Landroid/view/View;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/ba;-><init>(Lcom/twitter/android/TweetListActivity;Landroid/view/View;Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation;I)V

    iget v1, v0, Lcom/twitter/android/ba;->a:I

    invoke-virtual {p0, v1}, Lcom/twitter/android/TweetListActivity;->c(I)Lcom/twitter/android/provider/ah;

    move-result-object v2

    iget-object v6, v0, Lcom/twitter/android/ba;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/twitter/android/TweetListActivity;->h:Lcom/twitter/android/client/i;

    const v3, 0x7f0e0070

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    const v4, 0x7f0e006f

    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    const v5, 0x7f0e006e

    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    const v7, 0x7f0e0072

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    invoke-static/range {v1 .. v6}, Lcom/twitter/android/bh;->a(Lcom/twitter/android/client/i;Lcom/twitter/android/provider/ah;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;)V

    invoke-virtual {v0}, Lcom/twitter/android/ba;->b()V

    iput-object v0, p0, Lcom/twitter/android/TweetListActivity;->a:Lcom/twitter/android/ba;

    invoke-direct {p0, p5}, Lcom/twitter/android/TweetListActivity;->b(Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(Lcom/twitter/android/provider/ah;)Laz;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/TweetListActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v0, p1}, Lcom/twitter/android/client/i;->b(Lcom/twitter/android/provider/ah;)Laz;

    move-result-object v0

    return-object v0
.end method

.method protected abstract c(I)Lcom/twitter/android/provider/ah;
.end method

.method public onClickHandler(Landroid/view/View;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/twitter/android/TweetListActivity;->a:Lcom/twitter/android/ba;

    iget v0, v0, Lcom/twitter/android/ba;->a:I

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetListActivity;->c(I)Lcom/twitter/android/provider/ah;

    move-result-object v3

    iget-object v0, p0, Lcom/twitter/android/TweetListActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v0, v3}, Lcom/twitter/android/client/i;->b(Lcom/twitter/android/provider/ah;)Laz;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Laz;->c:Lcc;

    if-eqz v1, :cond_1

    iget-object v0, v0, Laz;->c:Lcc;

    iget-object v0, v0, Lcc;->a:Ljava/lang/String;

    move-object v4, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object v4, v9

    goto :goto_0

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/PostActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "reply_to_tweet"

    new-array v2, v7, [Lcom/twitter/android/provider/ah;

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "com.twitter.android.post.reply"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetListActivity;->startActivity(Landroid/content/Intent;)V

    new-instance v0, Lcom/twitter/android/service/g;

    sget-object v1, Lcom/twitter/android/service/l;->t:Lcom/twitter/android/service/l;

    invoke-direct {v0, v1}, Lcom/twitter/android/service/g;-><init>(Lcom/twitter/android/service/l;)V

    invoke-static {p0, v0}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;Lcom/twitter/android/service/g;)V

    :goto_2
    iget-object v0, p0, Lcom/twitter/android/TweetListActivity;->a:Lcom/twitter/android/ba;

    if-eqz v0, :cond_0

    invoke-direct {p0, v9}, Lcom/twitter/android/TweetListActivity;->a(Landroid/view/MotionEvent;)V

    goto :goto_1

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/ProfileTabActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "screen_name"

    iget-object v2, v3, Lcom/twitter/android/provider/ah;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :pswitch_2
    iget-boolean v0, v3, Lcom/twitter/android/provider/ah;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/TweetListActivity;->h:Lcom/twitter/android/client/i;

    iget-wide v1, v3, Lcom/twitter/android/provider/ah;->n:J

    invoke-virtual {v0, v1, v2, v4}, Lcom/twitter/android/client/i;->d(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetListActivity;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/twitter/android/service/g;

    sget-object v1, Lcom/twitter/android/service/l;->w:Lcom/twitter/android/service/l;

    invoke-direct {v0, v1}, Lcom/twitter/android/service/g;-><init>(Lcom/twitter/android/service/l;)V

    invoke-static {p0, v0}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;Lcom/twitter/android/service/g;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/twitter/android/TweetListActivity;->h:Lcom/twitter/android/client/i;

    iget-wide v1, v3, Lcom/twitter/android/provider/ah;->n:J

    invoke-virtual {v0, v1, v2, v4}, Lcom/twitter/android/client/i;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :pswitch_3
    iget-wide v0, v3, Lcom/twitter/android/provider/ah;->p:J

    iget-object v2, p0, Lcom/twitter/android/TweetListActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v2}, Lcom/twitter/android/client/i;->h()J

    move-result-wide v5

    cmp-long v0, v0, v5

    if-nez v0, :cond_3

    iget-boolean v0, v3, Lcom/twitter/android/provider/ah;->q:Z

    if-eqz v0, :cond_3

    move v2, v7

    :goto_4
    new-instance v0, Lcom/twitter/android/ao;

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/ao;-><init>(Lcom/twitter/android/TweetListActivity;ZLcom/twitter/android/provider/ah;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {p0, v2, v0}, Lcom/twitter/android/client/i;->a(Landroid/app/Activity;ZLandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_2

    :cond_3
    move v2, v8

    goto :goto_4

    :pswitch_4
    iput-object v3, p0, Lcom/twitter/android/TweetListActivity;->e:Lcom/twitter/android/provider/ah;

    invoke-virtual {p0, v7}, Lcom/twitter/android/TweetListActivity;->showDialog(I)V

    goto :goto_2

    :pswitch_5
    iget-object v0, p0, Lcom/twitter/android/TweetListActivity;->h:Lcom/twitter/android/client/i;

    iget-object v1, v3, Lcom/twitter/android/provider/ah;->d:Ljava/lang/String;

    iget-wide v4, v3, Lcom/twitter/android/provider/ah;->n:J

    iget-object v2, v3, Lcom/twitter/android/provider/ah;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/twitter/android/client/i;->a(Ljava/lang/String;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetListActivity;->startActivity(Landroid/content/Intent;)V

    new-instance v0, Lcom/twitter/android/service/g;

    sget-object v1, Lcom/twitter/android/service/l;->x:Lcom/twitter/android/service/l;

    invoke-direct {v0, v1}, Lcom/twitter/android/service/g;-><init>(Lcom/twitter/android/service/l;)V

    invoke-static {p0, v0}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;Lcom/twitter/android/service/g;)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x7f0e006d
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    move-object v0, v4

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/twitter/android/ap;

    invoke-direct {v0, p0}, Lcom/twitter/android/ap;-><init>(Lcom/twitter/android/TweetListActivity;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09003a

    invoke-virtual {p0, v2}, Lcom/twitter/android/TweetListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/android/TweetListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09003b

    invoke-virtual {p0, v2}, Lcom/twitter/android/TweetListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0900a4

    invoke-virtual {p0, v2}, Lcom/twitter/android/TweetListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900a5

    invoke-virtual {p0, v1}, Lcom/twitter/android/TweetListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/twitter/android/bv;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/bv;

    iget-object v2, p0, Lcom/twitter/android/TweetListActivity;->n:Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/twitter/android/TweetListActivity;->o:Landroid/view/animation/Animation;

    const/4 v5, 0x0

    move-object v0, p0

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/TweetListActivity;->a(Lcom/twitter/android/bv;Landroid/view/animation/Animation;Landroid/view/animation/Animation;ILandroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/twitter/android/TwitterListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twitter/android/TweetListActivity;->e:Lcom/twitter/android/provider/ah;

    if-eqz v0, :cond_0

    const-string v0, "state_delete_key"

    iget-object v1, p0, Lcom/twitter/android/TweetListActivity;->e:Lcom/twitter/android/provider/ah;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/TweetListActivity;->d:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_1
    iput v1, p0, Lcom/twitter/android/TweetListActivity;->b:I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/twitter/android/TweetListActivity;->a:Lcom/twitter/android/ba;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/twitter/android/TweetListActivity;->b:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/twitter/android/TweetListActivity;->c:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetListActivity;->a(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
